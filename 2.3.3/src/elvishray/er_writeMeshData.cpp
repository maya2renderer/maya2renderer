#include <liqConfig.h>
#ifdef _USE_ELVISHRAY_

#include "er_renderer.h"
#include <liqRibMeshData.h>
#include "../common/prerequest_maya.h"
#include "../common/mayacheck.h"
#include "ercall.h"
#include "er_log_helper.h"
//#include <liqRibNode.h>
#include <liqRibTranslator.h>
namespace elvishray
{
	static void _write1(liqRibMeshData* pData, const structJob &currentJob__);
	static void _write(liqRibMeshData* pData, const structJob &currentJob);
	static void _exportUVFromNodePlug( const liqRibNodePtr &ribNode__, unsigned int sample);
	static const liqFloat* _exportVertexFromNodePlug( const liqRibNodePtr &ribNode__, unsigned int sample);
	static int getVertexInexInPolygon( const int gvi, const MIntArray &polygonVertices);

	void Renderer::write(
		/*const*/ liqRibMeshData* pData,
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
	static const liqFloat* _exportVertexFromNodePlug(
		const liqRibNodePtr &ribNode__,
		unsigned int sample)
	{	
		CM_TRACE_FUNC("_exportVertexFromNodePlug("<<ribNode__->name.asChar()<<","<<sample<<")");

		MStatus status;

		const liqRibDataPtr ribdata = ribNode__->object(sample)->getDataPtr();
		liqRibMeshData* mesh = (liqRibMeshData*)(ribdata.get());
		const std::vector<liqTokenPointer>& tokenPointerArray = mesh->tokenPointerArray;

		liqTokenPointer vertex;
		for( std::vector< liqTokenPointer >::const_iterator iter( tokenPointerArray.begin() ); iter != tokenPointerArray.end(); ++iter ) 
		{
			if( "P" == const_cast< liqTokenPointer* >( &( *iter ) )->getDetailedTokenName() )// find the Position data
			{
				vertex = *iter;
				break;
			}
		}
		assert( !vertex.empty() );
		return vertex.getTokenFloatArray();
	}
	//
	static void _write(liqRibMeshData* pData, const structJob &currentJob__)
	{
		_write1(pData, currentJob__);
	}
	//
	static void _write1(liqRibMeshData* pData, const structJob &currentJob__)
	{
		CM_TRACE_FUNC("er_writeMeshData.cpp::_write1("<<pData->getFullPathName()<<","<<currentJob__.name.asChar()<<")");
		OutputMgr &o = Renderer::o;

		liqRibNodePtr ribNode__ = liqRibTranslator::getInstancePtr()->htable->find(
			pData->objDagPath.fullPathName(), 
			pData->objDagPath,
			MRT_Unknown
			);
		assert( ribNode__!=0 );
		assert( ribNode__->path().fullPathName() == pData->objDagPath.fullPathName() );

		const bool bMotionBlur =
			ribNode__->motion.transformationBlur &&
			( ribNode__->object( 1 ) ) &&
			//( ribNode__->object(0)->type != MRT_Locator ) && // Why the fuck do we not allow motion blur for locators?
			( currentJob__.pass != rpShadowMap || currentJob__.shadowType == stDeep );

		bool bGeometryMotion = 
			liqglo.liqglo_doDef 
			&& bMotionBlur
			&& ( ribNode__->object(0)->type != MRT_RibGen );

		unsigned int sample_first = 0;
		unsigned int sample_last = bGeometryMotion? (liqglo.liqglo_motionSamples - 1):sample_first;

		o.ln();
		o.a(boost::str(boost::format(" Renderer::exportOneGeometry_Mesh(%s, %d, %d")%ribNode__->name.asChar() %sample_first %sample_last));

		const liqRibDataPtr mesh = ribNode__->object(sample_first)->getDataPtr();

		//


		//
		MStatus status;
		MFnMesh fnMesh(mesh->objDagPath, &status);
		IfMErrorWarn(status);

		MIntArray triangleCounts,triangleVertices;
		IfMErrorWarn(fnMesh.getTriangles(triangleCounts, triangleVertices));

		MString currentUVsetName;
		IfMErrorWarn(fnMesh.getCurrentUVSetName(currentUVsetName));

		//get position from liquid-cooked values
		const liqFloat *P = _exportVertexFromNodePlug(ribNode__, sample_first);
		liqFloat *tmp = NULL;
		if( sample_first != sample_last )
		{
			tmp = const_cast<liqFloat*>(_exportVertexFromNodePlug(ribNode__, sample_last));
		}
		const liqFloat *P_mb = tmp;

		std::vector<MVector> POSITION;
		std::vector<MVector> POSITION_mb;//motion blur position
		std::vector<std::size_t> INDEX;//global vertex index
		std::vector<MVector> NORMAL;
		std::vector<MVector> UV;

		int numPolygons = fnMesh.numPolygons();
		for(int gpi = 0; gpi< numPolygons; ++gpi)//gpi: global polygon index
		{
			//  for one polygon

			MIntArray vertexList;
			fnMesh.getPolygonVertices(gpi, vertexList);
			assert( vertexList.length() == fnMesh.polygonVertexCount( gpi ) );
			// vertex index in polygon: i  <---> global vertex index: vertexList[i]

			//int vertexCountInPolygon   = fnMesh.polygonVertexCount( gpi );
			int triangleCountInPolygon = triangleCounts[ gpi ];
			for(int ti = 0; ti<triangleCountInPolygon; ++ti)//ti: triangle index in a polygon
			{
				//  for one triangle

				int gvi[3];//global vertex index
				fnMesh.getPolygonTriangleVertices(gpi, ti, gvi);

				//position, triangle index list
				INDEX.push_back(POSITION.size());
				POSITION.push_back(MVector(P[3*gvi[0]+0], P[3*gvi[0]+1], P[3*gvi[0]+2]));
				INDEX.push_back(POSITION.size());
				POSITION.push_back(MVector(P[3*gvi[1]+0], P[3*gvi[1]+1], P[3*gvi[1]+2]));
				INDEX.push_back(POSITION.size());
				POSITION.push_back(MVector(P[3*gvi[2]+0], P[3*gvi[2]+1], P[3*gvi[2]+2]));
				//position motion blur
				if( sample_first != sample_last )
				{
					POSITION_mb.push_back(MVector(P_mb[3*gvi[0]+0], P_mb[3*gvi[0]+1], P_mb[3*gvi[0]+2]));
					POSITION_mb.push_back(MVector(P_mb[3*gvi[1]+0], P_mb[3*gvi[1]+1], P_mb[3*gvi[1]+2]));
					POSITION_mb.push_back(MVector(P_mb[3*gvi[2]+0], P_mb[3*gvi[2]+1], P_mb[3*gvi[2]+2]));
				}


				//normal
				MVector normal0, normal1, normal2;
				fnMesh.getVertexNormal(gvi[0], false, normal0);
				fnMesh.getVertexNormal(gvi[1], false, normal1);
				fnMesh.getVertexNormal(gvi[2], false, normal2);
				
				NORMAL.push_back(normal0);
				NORMAL.push_back(normal1);
				NORMAL.push_back(normal2);


				//uv
				float u0, v0;
				float u1, v1;
				float u2, v2;
				int vi0, vi1, vi2;// vertex index in polygon
				vi0 = getVertexInexInPolygon( gvi[0], vertexList);
				vi1 = getVertexInexInPolygon( gvi[1], vertexList);
				vi2 = getVertexInexInPolygon( gvi[2], vertexList);
				fnMesh.getPolygonUV(gpi, vi0, u0, v0, &currentUVsetName);
				fnMesh.getPolygonUV(gpi, vi1, u1, v1, &currentUVsetName);
				fnMesh.getPolygonUV(gpi, vi2, u2, v2, &currentUVsetName);

				UV.push_back(MVector(u0, v0));
				UV.push_back(MVector(u1, v1));
				UV.push_back(MVector(u2, v2));


			}//for(int ti = 0; ti<triangleCountInPolygon; ++ti)
		}//for(int gpi = 0; gpi< numPolygons; ++gpi)



		// geometry data (shape)
		o.ln();
		o.a("############################### mesh #");
		o.a("shape full path name="+std::string(mesh->getFullPathName()));
#ifdef TRANSFORM_SHAPE_PAIR
		const std::string objectName(ribNode__->name.asChar());//shape
#else// SHAPE SHAPE_object PAIR
		const std::string objectName(getObjectName(ribNode__->name.asChar()));//shape+"_object"
#endif


		// get normal for each vertex
		// but the render result seems very weird, see test/test_er_light/output_img_std/er_pointlight.perspShape.1.elvishray_vertex_normal.bmp
		// so I ommit this section temporarily.
		if(fnMesh.numVertices() == fnMesh.numNormals())//smooth normal, like a sphere
		{
		}else{//sharp edge, like a cube
			// in this case, like a cube, a vertex has a specified normal corresponding to each adjacent polygon.
			// but elvishray's only allow a vertex to be assigned only one normal.
			// so I can't generate the normal list for this case.
			o.a("numNormals != numPoints, ER doesn't support this case now");
			NORMAL.clear();
		}

		if( currentUVsetName.length() != 0 )//there is a current uv set
		{
			o.a(boost::str(boost::format("### UV(%s), size=%d") %currentUVsetName.asChar() %fnMesh.numUVs(currentUVsetName) ) );

			int numUVSets = fnMesh.numUVSets();
			o.a(boost::str(boost::format("# numUVSets=%d")%numUVSets ));
			MStringArray uvsetNames;
			IfMErrorWarn( fnMesh.getUVSetNames(uvsetNames) );
			for(std::size_t i = 0; i< uvsetNames.length(); ++i){
				o.a(boost::str(boost::format("# uvsetNames[%d]=%s")%i %uvsetNames[i].asChar() ) );
			}
			MStringArray uvsetFamilyNames;
			IfMErrorWarn( fnMesh.getUVSetFamilyNames(uvsetFamilyNames) );
			for(std::size_t i = 0; i< uvsetFamilyNames.length(); ++i){
				o.a(boost::str(boost::format("# uvsetFamilyNames[%d]=%s")%i %uvsetFamilyNames[i].asChar() ) );
			}
		}else{
			o.a("no current UVSet");
			UV.clear();
		}

		//
		o.liq_object(objectName.c_str(),
			POSITION, POSITION_mb, INDEX, NORMAL, UV);
	}
	//get face-relative/local vertex index from global/mesh vertex index
	static int getVertexInexInPolygon( const int gvi, const MIntArray &polygonVertices)
	{
		for(int i = 0; i<polygonVertices.length(); ++i)
		{
			if( gvi == polygonVertices[ i ] )
			{
				return i;
			}
		}
		liquidMessage2(messageError, "global vertex index \"%d\" not found", gvi);
		return -1;
	}
}//namespace elvishray

#endif//_USE_ELVISHRAY_