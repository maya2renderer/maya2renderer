#include <liqConfig.h>
#ifdef _USE_APPLESEED_

#include "as_bsdfBuilder.h"

#include "../common/prerequest_maya.h"
#include "as_renderer.h"
#include "../renderermgr.h"
#include "../shadergraph/shadermgr.h"

namespace appleseed
{
	BSDFBuilder::BSDFBuilder(const char* nodename)
		:m_nodename(nodename),
		m_assembly(nullptr),
		DummyBSDFName("liquidDummyBSDF"),
		DummyBSDFColorName("liquidDummyBSDFColor")
	{
		CM_TRACE_FUNC("BSDFBuilder::BSDFBuilder("<<nodename<<")");

		Renderer* m_renderer = dynamic_cast<appleseed::Renderer*>( liquid::RendererMgr::getInstancePtr()->getRenderer() );
		assert(m_renderer != nullptr );

		m_assembly = m_renderer->getAssembly().get();
		assert(m_assembly != nullptr);

		createDummyBSDFName();
	}
	//
	BSDFBuilder::~BSDFBuilder()
	{
		CM_TRACE_FUNC("BSDFBuilder::~BSDFBuilder()");
	}
	//
	std::string BSDFBuilder::getBSDFName(const std::string &node)const
	{
		CM_TRACE_FUNC("BSDFBuilder::getBSDFName("<<node<<")");
		return node +"_BSDF";
	}
	//
	std::string BSDFBuilder::getPlugBSDFName(const std::string &node, const std::string &plug)const
	{
		CM_TRACE_FUNC("BSDFBuilder::getPlugBSDFName("<<node<<","<<plug<<")");
		if( isOutputPlug(node, plug) )
		{
			return getBSDFName(node);
		}else{
			return node+"_"+plug+"_BSDF";
		}
	}
	std::string BSDFBuilder::getPlugName(const std::string &node, const std::string &plug)const
	{
		CM_TRACE_FUNC("BSDFBuilder::getPlugName("<<node<<","<<plug<<")");
		return node+"_"+plug;
	}
	//
	std::string BSDFBuilder::getPlugBSDF(const std::string &plug)
	{
		CM_TRACE_FUNC("BSDFBuilder::getPlugBSDF("<<plug<<")");
		if( ! isLinked(m_nodename, plug) )
		{
			return createPlugBRDF(plug);
		}
		else if( isLinkedIn(m_nodename, plug) )
		{
			//if the plug is connected in, we  create a BSDFMix to connect 
			//the srcPlugBSDF and this plug
			MStringArray srcNodePlug;
			IfMErrorWarn(MGlobal::executeCommand(("listConnections -destination false -source true -plugs true \""+m_nodename+"."+plug+"\"").c_str(), srcNodePlug));

			MStringArray src;
			srcNodePlug[0].split('.',src);
			MString srcNode(src[0]);
			MString srcPlug(src[1]);

			const std::string srcBSDFName(getPlugBSDFName(srcNode.asChar(), srcPlug.asChar()));

			// create BSDF for plug(not srcPlug!)
			//            +--(bsdf0)-- srcBSDF
			// plugBSDF --|
			//            +--(bsdf1)-- DummyBSDF
			const std::string plugBSDFName(getPlugBSDFName(m_nodename, plug));
			if(m_assembly->bsdfs().get_by_name(plugBSDFName.c_str()) == nullptr)
			{
				m_assembly->bsdfs().insert(
					asr::BSDFMixFactory().create(
					plugBSDFName.c_str(),
					asr::ParamArray()
						.insert("bsdf0", srcBSDFName.c_str())
						.insert("bsdf1", DummyBSDFName.c_str() )
						.insert("weight0", 1.0f)
						.insert("weight1", 0.0f)
					)
				);
			}
			return plugBSDFName;
		}
		else if( isLinkedOut(m_nodename, plug) )
		{
			if( isOutputPlug(m_nodename, plug) )
				return getBSDFName(m_nodename);//just return BSDF name of this node
			else
				return createPlugBRDF(plug);//create the BSDF for this plug
		}else{
			liquidMessage2(messageError,"\"%s.%s\"'s connection state is unhandled.", m_nodename.c_str(), plug.c_str());
			return "";
		}
	}
	bool BSDFBuilder::isLinked(const std::string &node, const std::string &plug)const
	{
		CM_TRACE_FUNC("BSDFBuilder::isLinked("<<node<<","<<plug<<")");
		MStringArray connections;
		getlistConnections(node.c_str(), plug.c_str(), connections);
		return connections.length() != 0;
	}
	bool BSDFBuilder::isLinkedOut(const std::string &node, const std::string &plug)const
	{
		CM_TRACE_FUNC("BSDFBuilder::isLinkedOut("<<node<<","<<plug<<")");
		MStringArray desNodePlug;
		IfMErrorWarn(MGlobal::executeCommand(("listConnections -destination true -source false -plugs false \""+node+"."+plug+"\"").c_str(), desNodePlug));
		return desNodePlug.length() != 0;
	}
	bool BSDFBuilder::isLinkedIn(const std::string &node, const std::string &plug)const
	{
		CM_TRACE_FUNC("BSDFBuilder::isLinkedIn("<<node<<","<<plug<<")");
		MStringArray srcNodePlug;
		IfMErrorWarn(MGlobal::executeCommand(("listConnections -destination false -source true -plugs false \""+node+"."+plug+"\"").c_str(), srcNodePlug));
		return srcNodePlug.length() != 0;
	}
	//
	std::string BSDFBuilder::createPlugBRDF(const std::string &plug)
	{
		CM_TRACE_FUNC("BSDFBuilder::createPlugBRDF("<<plug<<")");
		const std::string bsdfname(getPlugBSDFName(m_nodename, plug));

		if(m_assembly->bsdfs().get_by_name(bsdfname.c_str()) == nullptr)
		{
			//create color
			const std::string plugname(getPlugName(m_nodename, plug));

			MStatus status;
			MObject mnode;
			getDependNodeByName(mnode, m_nodename.c_str());

			MVector plugvalue;
			IfMErrorWarn(liquidGetPlugValue(mnode, plug.c_str(), plugvalue, status));

			createColor3(m_assembly->colors(), plugname.c_str(), 
				plugvalue.x, plugvalue.y, plugvalue.z);

			//create bsdf
			m_assembly->bsdfs().insert(
				asr::LambertianBRDFFactory().create(
				bsdfname.c_str(),
				asr::ParamArray()
					.insert("reflectance", plugname.c_str())
				)
			);
		}
		return bsdfname;
	}
	//
	bool BSDFBuilder::isOutputPlug(const std::string &node, const std::string &plug)const
	{
		CM_TRACE_FUNC("BSDFBuilder::isOutputPlug("<<node<<","<<plug<<")");
		return("outColor"        == plug 
			|| "outTransparency" == plug 
			|| "outGlowColor"    == plug 
			|| "outMatteOpacity "== plug );
	}
	void BSDFBuilder::createDummyBSDFName()
	{
		CM_TRACE_FUNC("BSDFBuilder::createDummyBSDFName()");
		if(m_assembly->bsdfs().get_by_name(DummyBSDFName.c_str()) == nullptr)
		{
			createColor3(m_assembly->colors(), 
				DummyBSDFColorName.c_str(), 0.0f, 0.0f, 0.0f );
			//
			m_assembly->bsdfs().insert(
				asr::LambertianBRDFFactory().create(
				DummyBSDFName.c_str(),
				asr::ParamArray()
					.insert("reflectance", DummyBSDFColorName.c_str())
				)
			);
		}
	}
	//
	void BSDFBuilder::begin()
	{
		CM_TRACE_FUNC("BSDFBuilder::begin()");
		m_bsdf.clear();
	}
	void BSDFBuilder::addBSDF(const std::string &plug)
	{
		CM_TRACE_FUNC("BSDFBuilder::addBSDF("<<plug<<")");
		m_bsdf.push_back( getPlugBSDF(plug) );
	}
	void BSDFBuilder::end()
	{
		CM_TRACE_FUNC("BSDFBuilder::end()");
		createNodeBSDF();
	}
	//
	std::string BSDFBuilder::addBSDFToNode(const std::string &oldBSDF, const std::string &bsdf0, 
		const int level)
	{
		CM_TRACE_FUNC("BSDFBuilder::addBSDFToNode("<<oldBSDF<<","<<bsdf0<<","<<level<<")");
		MString strLevel;
		strLevel.set(level);

		const std::string newBSDF(getBSDFName(m_nodename)+"_L"+strLevel.asChar());
		
		//            +--(bsdf0)-- bsdf0
		// plugBSDF --|
		//            +--(bsdf1)-- oldBSDF
		if(m_assembly->bsdfs().get_by_name(newBSDF.c_str()) == nullptr)
		{
			m_assembly->bsdfs().insert(
				asr::BSDFMixFactory().create(
				newBSDF.c_str(),
				asr::ParamArray()
					.insert("bsdf0", bsdf0.c_str())
					.insert("bsdf1", oldBSDF.c_str() )
					.insert("weight0",        1.0f/(level+1))
					.insert("weight1", 1.0f - 1.0f/(level+1))
				)
			);
		}
		return newBSDF;
	}
	void BSDFBuilder::createNodeBSDF()
	{
		CM_TRACE_FUNC("BSDFBuilder::createNodeBSDF()");
		std::string oldBSDF;

		int level = 0;
		oldBSDF = DummyBSDFName;
		for(; level<m_bsdf.size(); ++level)
		{
			oldBSDF = addBSDFToNode(oldBSDF, m_bsdf[level], level);
		}

		// create the root BSDF for this node,
		// and connect oldBSDF to it.
		if(m_assembly->bsdfs().get_by_name( getBSDFName(m_nodename).c_str() ) == nullptr)
		{
			m_assembly->bsdfs().insert(
				asr::BSDFMixFactory().create(
				getBSDFName(m_nodename).c_str(),
				asr::ParamArray()
					.insert("bsdf0", oldBSDF.c_str())
					.insert("bsdf1", DummyBSDFName.c_str() )
					.insert("weight0", 1.0f)
					.insert("weight1", 0.0f)
				)
			);
		}
	}

}//namespace appleseed
#endif//_USE_APPLESEED_