#include "er_renderer.h"
#include <liqRibImplicitSphereData.h>
#include <common/prerequest_maya.h>
#include <common/mayacheck.h>
#include "ercall.h"

//#include <liqRibNode.h>
#include <liqRibTranslator.h>

namespace elvishray
{
	static void _write(liqRibImplicitSphereData* pData, const structJob &currentJob);

	void Renderer::write(
		/*const*/ liqRibImplicitSphereData* pData,
		const MString &fileName, 
		const structJob &currentJob,
		const bool bReference)
	{
		CM_TRACE_FUNC("Renderer::write("<<pData->getFullPathName().asChar()<<","<<fileName.asChar()<<","<<currentJob.name.asChar()<<",ref="<<bReference<<")");

		if( !bReference ){//write data at first time
			assert(pData->getRibFileFullPath().length()==0);
			pData->setRibFileFullPath(fileName);

// 			renderman::Helper o;
// 			o.RiBeginRef(pData->getRibFileFullPath().asChar());
 			_write(pData, currentJob);
// 			o.RiEndRef();

		}else{
			//write the reference
			assert(pData->getRibFileFullPath() == fileName);
//			RiReadArchive( const_cast< RtToken >( pData->getRibFileFullPath().asChar() ), NULL, RI_NULL );
		}
	}
	//
	static void _write(liqRibImplicitSphereData* pData, const structJob &currentJob__)
	{
		CM_TRACE_FUNC("er_writeImplicitSphereData.cpp::write("<<pData->getFullPathName().asChar()<<","<<currentJob__.name.asChar()<<",...)");
		OutputMgr &o = Renderer::getOutputMgr();

		o.a(boost::str(boost::format("Implicit Sphere [%s] is not implemented yet.")%pData->getFullPathName().asChar()));
		liquidMessage2(messageError, "ImplicitSphere type is not implemented yet. [%s]", pData->getFullPathName().asChar());
	}
}//namespace elvishray
