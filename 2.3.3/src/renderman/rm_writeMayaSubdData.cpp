#include "rm_renderer.h"
#include <liqRibMayaSubdivisionData.h>
#include "rm_helper.h"
#include <liqGlobalVariable.h>
#include <liqGlobalHelpers.h>

namespace renderman
{
	static void _write(liqRibMayaSubdivisionData* pData, const structJob &currentJob);
	//
	void Renderer::write(
		liqRibMayaSubdivisionData* pData,
		const MString &ribFileName,
		const structJob &currentJob,
		const bool bReference)
	{
		CM_TRACE_FUNC("Renderer::write("<<pData->getFullPathName()<<","<<ribFileName.asChar()<<","<<currentJob.name.asChar()<<",ref="<<bReference<<")");

		assert(liqglo.m_ribFileOpen &&"rm_writeMayaSubdData.cpp");

		if(liqglo.m_writeDataIntoMainRibFile)
		{
			if( bReference ){
				_write(pData, currentJob);
			}else{
				//do nothing
			}
		}else{
	 		if( !bReference ){//write data at first time
				if( currentJob.pass != rpShadowMap ){
					assert(pData->getRibFileFullPath().length()==0&&"rm_writeClipPlaneData.cpp");
				}
				pData->setRibFileFullPath(ribFileName);

	 			renderman::Helper o;
	 			o.RiBeginRef(pData->getRibFileFullPath().asChar());
	 			_write(pData, currentJob);
	 			o.RiEndRef();
		 
	 		}else{
	 			//write the reference
	 			assert(pData->getRibFileFullPath() == ribFileName);
	 			RiReadArchive( const_cast< RtToken >( pData->getRibFileFullPath().asChar() ), NULL, RI_NULL );
	 		}
		}
	}
	//
	static void _write(liqRibMayaSubdivisionData* pData, const structJob &currentJob__)
	{
		CM_TRACE_FUNC("rm_writeMayaSubdData.cpp::_write("<<pData->getFullPathName()<<","<<currentJob__.name.asChar()<<",...)");

		LIQDEBUGPRINTF( "-> writing subdivision surface\n" );

		unsigned numTokens( pData->tokenPointerArray.size() );
		boost::scoped_array< RtToken > tokenArray( new RtToken[ numTokens ] );
		boost::scoped_array< RtPointer > pointerArray( new RtPointer[ numTokens ] );
		assignTokenArraysV( pData->tokenPointerArray, tokenArray.get(), pointerArray.get() );

		RiSubdivisionMeshV( "catmull-clark", pData->numFaces, pData->nverts.get(), pData->verts.get(),
			pData->v_tags.size(), pData->v_tags.size() ? &pData->v_tags[0] : NULL,
			pData->v_nargs.size() ? &pData->v_nargs[0] : NULL,
			pData->v_intargs.size() ? &pData->v_intargs[0] : NULL,
			pData->v_floatargs.size() ? &pData->v_floatargs[0] : NULL,
			numTokens, tokenArray.get(), pointerArray.get() );

	}
}//namespace renderman
