#include <liqConfig.h>
#ifdef _USE_APPLESEED_

#include "as_renderer.h"
#include <liqRibMayaSubdivisionData.h>
#include "../common/prerequest_maya.h"
#include "../common/mayacheck.h"
#include "log_helper.h"
//#include <liqRibNode.h>
#include <liqRibTranslator.h>

namespace appleseed
{
	static void _write(liqRibMayaSubdivisionData* pData, const structJob &currentJob);

	void Renderer::write(
		/*const*/ liqRibMayaSubdivisionData* pData,
		const MString &fileName, 
		const structJob &currentJob,
		const bool bReference)
	{
		CM_TRACE_FUNC("Renderer::write("<<pData->getFullPathName()<<","<<fileName.asChar()<<","<<currentJob.name.asChar()<<",ref="<<bReference<<")");

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
	static void _write(liqRibMayaSubdivisionData* pData, const structJob &currentJob__)
	{
		CM_TRACE_FUNC("as_writeMayaSubdData.cpp::write("<<pData->getFullPathName()<<","<<currentJob__.name.asChar()<<",...)");

		//_s("// Clip Plane "<<pData->getFullPathName());
	}
}//namespace appleseed

#endif//_USE_APPLESEED_