#include <liqConfig.h>
#ifdef _USE_ELVISHRAY_

#include "er_iprMgr.h"

#include "../common/mayacheck.h"
#include <trace/trace.hpp>
#include <liqlog.h>
#include "log_helper.h"
#include "ercall.h"

namespace elvishray
{
	IprMgr::IprMgr()
	{
		CM_TRACE_FUNC("IprMgr::IprMgr()");

	}
	//
	IprMgr::~IprMgr()
	{
		CM_TRACE_FUNC("IprMgr::~IprMgr()");
	}
	//
	void IprMgr::onAttributeChanged(MNodeMessage::AttributeMessage msg, 
		MPlug &plug, MPlug &otherPlug, void *userData)
	{
		CM_TRACE_FUNC("IprMgr::onAttributeChanged("<<msg<<","<<plug.name().asChar()<<","<<otherPlug.name().asChar()<<",userData)");

		liquidMessage2(messageInfo, "%s, %s, ", plug.name().asChar(), plug.partialName(true, true, true, true, true, true) );

		MStringArray strarray;
		IfMErrorWarn( plug.name().split('.', strarray) );
		MString nodeName(strarray[0]);
		MString plugName(strarray[1]);


		MString nodeType( getNodeType(nodeName) );
		//if( nodeType == "camera" )
		{
			updateCamera(plug);
		} 
		//else /* if( nodtype is shader) */
		{
			updateShader(plug);
		}

		//todo....

	}
	void IprMgr::updateCamera(const MPlug &plug)
	{
		CM_TRACE_FUNC("IprMgr::updateCamera("<<plug.name().asChar()<<")");
		MStatus status;

		MStringArray strarray;
		IfMErrorWarn( plug.name().split('.', strarray) );
		MString nodeName(strarray[0]);
		MString plugName(strarray[1]);

		MString cameraFullPath;
		int width=0, height=0;
		{
			MStringArray cameraFullPaths;
			IfMErrorWarn(MGlobal::executeCommand("string $cam = `getAttr liquidGlobals.renderCamera`; ls -long $cam;", cameraFullPaths));
			cameraFullPath = cameraFullPaths[0];
			IfMErrorWarn(MGlobal::executeCommand("getAttr liquidGlobals.xResolution",width));
			IfMErrorWarn(MGlobal::executeCommand("getAttr liquidGlobals.yResolution",height));
		}
		std::string sCameraObjectName(std::string(cameraFullPath.asChar())+"_object");

		//camera transform matrix
		MDagPath cameraDagPath;
		getDagPathByName(cameraDagPath, cameraFullPath.asChar());
		MFnCamera fnCamera(cameraDagPath, &status);
		IfMErrorWarn(status);

		MObject transformNode = cameraDagPath.transform(&status );
		IfMErrorWarn(status);
		MFnDagNode transform (transformNode, &status);
		IfMErrorWarn(status);
		MTransformationMatrix   m0(transform.transformationMatrix());
		liqMatrix m;		
		IfMErrorWarn(m0.asMatrix().get(m));

		// render region
		unsigned int left, right, bottom, top;
		MRenderView::getRenderRegion(left, right, bottom, top);

		_S( ei_camera( sCameraObjectName.c_str() ) );
//we don't define 'output', so the image file will not be generated.
// 		_S( ei_output("E:/MyDocuments/maya/projects/default/rmanpix/er_pointlight.perspShape.1.elvishray-crop.bmp","bmp",1) );
// 		_S( ei_output_variable("color",11) );
// 		_S( ei_end_output() );
		_S( ei_window(left, right+1, height-top, height-bottom+1) );
		_S( ei_end_camera() );

		_S( ei_instance( cameraFullPath.asChar() ) );
		_S( ei_element(	sCameraObjectName.c_str() ) );
		_S( ei_transform( m[0][0], m[0][1], m[0][2], m[0][3],   m[1][0], m[1][1], m[1][2], m[1][3],   m[2][0], m[2][1], m[2][2], m[2][3],   m[3][0], m[3][1], m[3][2], m[3][3] ) );
		//_S( ei_transform(  1.0f, 0.0f, 0.0f, 0.0f,  0.0f, 1.0f, 0.0f, 0.0f,  0.0f, 0.0f, 1.0f, 0.0f,  -1.95384,-2.76373,16.1852, 1.0f ) );
		_S( ei_end_instance() );
	}
	void IprMgr::updateShader(const MPlug &plug)
	{
		CM_TRACE_FUNC("IprMgr::updateShader("<<plug.name().asChar()<<")");
		MStatus status;

		MStringArray strarray;
		IfMErrorWarn( plug.name().split('.', strarray) );
		MString nodeName(strarray[0]);
		MString plugName(strarray[1]);

		// shader parameters
		MPlugArray connectedElements;
		plug.connectedTo( connectedElements, true, false, &status );
		IfMErrorWarn(status);
		if (connectedElements.length() == 0)
		{
			_S( ei_shader("", nodeName.asChar()) );
			if ( plug.isCompound() )
			{
				// It's a constant color... set it now and return.
				unsigned int numChildren = plug.numChildren();
				switch(numChildren)
				{
				case 3:
					{
						float r, g, b;
						plug.child(0).getValue(r);
						plug.child(1).getValue(g);
						plug.child(2).getValue(b);
						_S( ei_shader_param_vector(plugName.asChar(),r,g,b) );
						liquidMessage2(messageInfo, "%f, %f, %f", r,g,b );
					}break;
				case 4:
					{
						float r, g, b, a;
						plug.child(0).getValue(r);
						plug.child(1).getValue(g);
						plug.child(2).getValue(b);
						plug.child(3).getValue(a);
						_S( ei_shader_param_vector4(plugName.asChar(),r,g,b,a) );
						liquidMessage2(messageInfo, "%f, %f, %f, %f", r,g,b,a );
					}break;
				}
			} else {
				float v;
				plug.child(0).getValue(v);
				_S( ei_shader_param_scalar(plugName.asChar(), v) );
				liquidMessage2(messageInfo, "%f", v );
			}
			_S( ei_end_shader() );

		} else {// the plug is connected.

		}
	}


}//namespace elvishray
#endif//_USE_ELVISHRAY_