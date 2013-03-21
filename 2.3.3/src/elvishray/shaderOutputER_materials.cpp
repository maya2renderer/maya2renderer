#include <liqConfig.h>
#ifdef _USE_ELVISHRAY_

#include "shaderOutputER.h"
//#include <liqlog.h>
#include "../common/mayacheck.h"
//#include "../shadergraph/convertShadingNetwork.h"
//#include "../shadergraph/shadermgr.h"
#include <trace/trace.hpp>
#include <liqShader.h>
#include <liqShaderFactory.h>
#include <liqTokenPointer.h>

namespace ER
{

// @node	maya shader node name
void Visitor::visitAnisotropic(const char* node)
{
	CM_TRACE_FUNC("Visitor::visitAnisotropic("<<node<<")");

	OutputHelper o(file);
	o.beginRSL("maya_anisotropic", node);
	o.addToRSL("//the type of node '"+MString(node)+"' is not implemented yet. And don't forget to add the valid connections of this type to ShaderValidConnection::setValidConnection()");
	o.endRSL();
}
void Visitor::visitBlinn(const char* node)
{
	CM_TRACE_FUNC("Visitor::visitBlinn("<<node<<")");

	OutputHelper o(file);

	o.beginRSL("maya_blinn", node);

	o.addRSLVariable("vector", "inColor",		"color",		node);
	o.addRSLVariable("vector", "transparency", "transparency", node);
	o.addRSLVariable("vector", "ambColor",		"ambientColor", node);
	o.addRSLVariable("vector", "incandescence","incandescence",node);
	o.addRSLVariable("float",  "diffusion",	"diffuse",		node);
	o.addRSLVariable("float",  "eccentricity", "eccentricity", node);
	o.addRSLVariable("float",  "specRollOff",	"specularRollOff",node);
	o.addRSLVariable("vector", "specColor",	"specularColor",node);
	o.addRSLVariable("vector", "outColor",		"outColor",		node);

//	MStringArray con;
//	IfMErrorWarn(MGlobal::executeCommand( ("listConnections(\""+MString(node)+"\" + \".reflectedColor\")"), con));
//	if( con.length() != 0 )
//	{
//		o.addRSLVariable( "float", "reflectivity", "reflectivity", node);
//		o.addRSLVariable( "vector", "refColor", "reflectedColor", node);
//		o.addToRSL( "Cspecular += ( reflectivity * refColor );");
//	}

	o.endRSL();
}
void Visitor::visitHairTubeShader(const char* node)
{
	CM_TRACE_FUNC("Visitor::visitHairTubeShader("<<node<<")");

	OutputHelper o(file);
	o.beginRSL("maya_hairTubeShader", node);
	o.addToRSL("//the type of node '"+MString(node)+"' is not implemented yet. And don't forget to add the valid connections of this type to ShaderValidConnection::setValidConnection()");
	o.endRSL();
}
void Visitor::visitLambert(const char* node)
{
	CM_TRACE_FUNC("Visitor::visitLambert("<<node<<")");

	OutputHelper o(file);

	o.beginRSL("maya_lambert_transparent", node);
	
	o.addRSLVariable("vector", "Cs",		"color",		node);
	o.addRSLVariable("vector", "transparency", "transparency", node);
	o.addRSLVariable("vector", "ambientColor",	"ambientColor", node);
	o.addRSLVariable("vector", "incandescence","incandescence",node);
	o.addRSLVariable("float",  "diffusion",	"diffuse",		node);
	o.addRSLVariable("vector", "outColor",		"outColor",		node);
	o.addRSLVariable("vector", "outTransparency","outTransparency",node);

	o.endRSL();
}
// @node	maya shader node name
void Visitor::visitLayeredShader(const char* node)
{
	CM_TRACE_FUNC("Visitor::visitLayeredShader("<<node<<")");

	OutputHelper o(file);
	o.beginRSL("maya_layeredShader", node);
	o.addToRSL("//the type of node '"+MString(node)+"' is not implemented yet. And don't forget to add the valid connections of this type to ShaderValidConnection::setValidConnection()");
	o.endRSL();
}
// @node	maya shader node name
void Visitor::visitOceanShader(const char* node)
{
	CM_TRACE_FUNC("Visitor::visitOceanShader("<<node<<")");

	OutputHelper o(file);
	o.beginRSL("maya_oceanShader", node);
	o.addToRSL("//the type of node '"+MString(node)+"' is not implemented yet. And don't forget to add the valid connections of this type to ShaderValidConnection::setValidConnection()");
	o.endRSL();
}
// @node	maya shader node name
void Visitor::visitPhong(const char* node)
{
	CM_TRACE_FUNC("Visitor::visitPhong("<<node<<")");

	OutputHelper o(file);
	//o.beginRSL("maya_phong", node);
	o.beginRSL("maya_phong_architectural", node);

	//Common Material Attributes
	o.addRSLVariable("vector", "color_",		"color",		node);
	o.addRSLVariable("vector", "transparency",	"transparency", node);
	o.addRSLVariable("vector", "ambientColor",	"ambientColor", node);
	o.addRSLVariable("vector", "incandescence",	"incandescence",node);
	o.addRSLVariable("normal", "normalCamera",	"normalCamera",	node);
	o.addRSLVariable("float",  "diffuse",		"diffuse",		node);
	o.addRSLVariable("float",  "translucence",			"translucence",		node);
	o.addRSLVariable("float",  "translucenceDepth",		"translucenceDepth",node);
	o.addRSLVariable("float",  "translucenceFocus",		"translucenceFocus",node);
	//Specular Shading
	o.addRSLVariable("float",	"cosinePower",			"cosinePower",		node);
	o.addRSLVariable("vector",	"specularColor",		"specularColor",	node);
	o.addRSLVariable("float",	"reflectivity",			"reflectivity",		node);
	o.addRSLVariable("vector",	"reflectedColor",		"reflectedColor",	node);
	//Matte Opacity
	o.addRSLVariable("index",	"matteOpacityMode",		"matteOpacityMode",	node);
	o.addRSLVariable("float",	"matteOpacity",			"matteOpacity",		node);
	//Raytrace Options
	o.addRSLVariable("index",	"reflectionLimit",		"reflectionLimit",	node);
	//output
	o.addRSLVariable("vector", "outColor",		"outColor",		node);
	o.addRSLVariable("vector", "outTransparency","outTransparency",node);

	o.endRSL();
}
// @node	maya shader node name
void Visitor::visitPhongE(const char* node)
{
	CM_TRACE_FUNC("Visitor::visitPhongE("<<node<<")");

	OutputHelper o(file);
	o.beginRSL("maya_phongE", node);
	o.addToRSL("//the type of node '"+MString(node)+"' is not implemented yet. And don't forget to add the valid connections of this type to ShaderValidConnection::setValidConnection()");
	o.endRSL();
}
// @node	maya shader node name
void Visitor::visitRampShader(const char* node)
{
	CM_TRACE_FUNC("Visitor::visitRampShader("<<node<<")");

	OutputHelper o(file);
	o.beginRSL("maya_rampShader", node);
	o.addToRSL("//the type of node '"+MString(node)+"' is not implemented yet. And don't forget to add the valid connections of this type to ShaderValidConnection::setValidConnection()");
	o.endRSL();
}
// @node	maya shader node name
void Visitor::visitShadingMap(const char* node)
{
	CM_TRACE_FUNC("Visitor::visitShadingMap("<<node<<")");

	OutputHelper o(file);
	o.beginRSL("maya_shadingMap", node);
	o.addToRSL("//the type of node '"+MString(node)+"' is not implemented yet. And don't forget to add the valid connections of this type to ShaderValidConnection::setValidConnection()");
	o.endRSL();
}
// @node	maya shader node name
void Visitor::visitSurfaceShader(const char* node)
{
	CM_TRACE_FUNC("Visitor::visitSurfaceShader("<<node<<")");

	OutputHelper o(file);
	o.beginRSL("maya_surfaceShader", node);
	o.addToRSL("//the type of node '"+MString(node)+"' is not implemented yet. And don't forget to add the valid connections of this type to ShaderValidConnection::setValidConnection()");
	o.endRSL();
}
// @node	maya shader node name
void Visitor::visitUseBackground(const char* node)
{
	CM_TRACE_FUNC("Visitor::visitUseBackground("<<node<<")");

	OutputHelper o(file);
	o.beginRSL("maya_useBackground", node);
	o.addToRSL("//the type of node '"+MString(node)+"' is not implemented yet. And don't forget to add the valid connections of this type to ShaderValidConnection::setValidConnection()");
	o.endRSL();
}
/// Volumetric ///
// @node	maya shader node name
void Visitor::visitEnvFog(const char* node)
{
	CM_TRACE_FUNC("Visitor::visitEnvFog("<<node<<")");

	OutputHelper o(file);
	o.beginRSL("maya_envFog", node);
	o.addToRSL("//the type of node '"+MString(node)+"' is not implemented yet. And don't forget to add the valid connections of this type to ShaderValidConnection::setValidConnection()");
	o.endRSL();
}
// @node	maya shader node name
void Visitor::visitFluidShape(const char* node)
{
	CM_TRACE_FUNC("Visitor::visitFluidShape("<<node<<")");

	OutputHelper o(file);
	o.beginRSL("maya_fluidShape", node);
	o.addToRSL("//the type of node '"+MString(node)+"' is not implemented yet. And don't forget to add the valid connections of this type to ShaderValidConnection::setValidConnection()");
	o.endRSL();
}
// @node	maya shader node name
void Visitor::visitLightFog(const char* node)
{
	CM_TRACE_FUNC("Visitor::visitLightFog("<<node<<")");

	OutputHelper o(file);
	o.beginRSL("maya_lightFog", node);
	o.addToRSL("//the type of node '"+MString(node)+"' is not implemented yet. And don't forget to add the valid connections of this type to ShaderValidConnection::setValidConnection()");
	o.endRSL();
}
// @node	maya shader node name
void Visitor::visitParticleCloud(const char* node)
{
	CM_TRACE_FUNC("Visitor::visitParticleCloud("<<node<<")");

	OutputHelper o(file);
	o.beginRSL("maya_particleCloud", node);
	o.addToRSL("//the type of node '"+MString(node)+"' is not implemented yet. And don't forget to add the valid connections of this type to ShaderValidConnection::setValidConnection()");
	o.endRSL();
}
// @node	maya shader node name
void Visitor::visitVolumeFog(const char* node)
{
	CM_TRACE_FUNC("Visitor::visitVolumeFog("<<node<<")");

	OutputHelper o(file);
	o.beginRSL("maya_volumeFog", node);
	o.addToRSL("//the type of node '"+MString(node)+"' is not implemented yet. And don't forget to add the valid connections of this type to ShaderValidConnection::setValidConnection()");
	o.endRSL();
}
// @node	maya shader node name
void Visitor::visitVolumeShader(const char* node)
{
	CM_TRACE_FUNC("Visitor::visitVolumeShader("<<node<<")");

	OutputHelper o(file);
	o.beginRSL("maya_volumeShader", node);
	o.addToRSL("//the type of node '"+MString(node)+"' is not implemented yet. And don't forget to add the valid connections of this type to ShaderValidConnection::setValidConnection()");
	o.endRSL();
}
/// DISPLACEMENT ///
// @node	maya shader node name
void Visitor::visitCMuscleShader(const char* node)
{
	CM_TRACE_FUNC("Visitor::visitCMuscleShader("<<node<<")");

	OutputHelper o(file);
	o.beginRSL("maya_cMuscleShader", node);
	o.addToRSL("//the type of node '"+MString(node)+"' is not implemented yet. And don't forget to add the valid connections of this type to ShaderValidConnection::setValidConnection()");
	o.endRSL();
}
// @node	maya shader node name
void Visitor::visitDisplacementShader(const char* node)
{
	CM_TRACE_FUNC("Visitor::visitDisplacementShader("<<node<<")");

	OutputHelper o(file);
	o.beginRSL("maya_displacementShader", node);
	o.addToRSL("//the type of node '"+MString(node)+"' is not implemented yet. And don't forget to add the valid connections of this type to ShaderValidConnection::setValidConnection()");
	o.endRSL();
}

/// Lights ///
// @node	maya shader node name
void Visitor::visitAmbientLight(const char* node)
{
	CM_TRACE_FUNC("Visitor::visitAmbientLight("<<node<<")");

	OutputHelper o(file);
	o.beginRSL("maya_ambientLight", node);
	o.addToRSL("//the type of node '"+MString(node)+"' is not implemented yet. And don't forget to add the valid connections of this type to ShaderValidConnection::setValidConnection()");
	o.endRSL();
}
// @node	maya shader node name
void Visitor::visitAreaLight(const char* node)
{
	CM_TRACE_FUNC("Visitor::visitAreaLight("<<node<<")");

	OutputHelper o(file);
	o.beginRSL("maya_areaLight", node);
	o.addToRSL("//the type of node '"+MString(node)+"' is not implemented yet. And don't forget to add the valid connections of this type to ShaderValidConnection::setValidConnection()");
	o.endRSL();
}
// @node	maya shader node name
void Visitor::visitDirectionalLight(const char* node)
{
	CM_TRACE_FUNC("Visitor::visitDirectionalLight("<<node<<")");

	OutputHelper o(file);
	o.beginRSL("maya_directionalLight", node);
	o.addToRSL("//the type of node '"+MString(node)+"' is not implemented yet. And don't forget to add the valid connections of this type to ShaderValidConnection::setValidConnection()");
	o.endRSL();
}
// @node	maya shader node name
void Visitor::visitPointLight(const char* node)
{
	CM_TRACE_FUNC("Visitor::visitPointLight("<<node<<")");

	OutputHelper o(file);
	o.beginRSL("maya_pointLight", node);
	o.addToRSL("//the type of node '"+MString(node)+"' is not implemented yet. And don't forget to add the valid connections of this type to ShaderValidConnection::setValidConnection()");
	o.endRSL();
}
// @node	maya shader node name
void Visitor::visitSpotLight(const char* node)
{
	CM_TRACE_FUNC("Visitor::visitSpotLight("<<node<<")");

	OutputHelper o(file);
	o.beginRSL("maya_spotLight", node);
	o.addToRSL("//the type of node '"+MString(node)+"' is not implemented yet. And don't forget to add the valid connections of this type to ShaderValidConnection::setValidConnection()");
	o.endRSL();
}
// @node	maya shader node name
void Visitor::visitVolumeLight(const char* node)
{
	CM_TRACE_FUNC("Visitor::visitVolumeLight("<<node<<")");

	OutputHelper o(file);
	o.beginRSL("maya_volumeLight", node);
	o.addToRSL("//the type of node '"+MString(node)+"' is not implemented yet. And don't forget to add the valid connections of this type to ShaderValidConnection::setValidConnection()");
	o.endRSL();
}
// @node	maya shader node name
void Visitor::visit_liquidShader(const char* node)
{
	CM_TRACE_FUNC("Visitor::visit_liquidShader("<<node<<")");

	liqShader &shader = liqShaderFactory::instance().getShader( node );
	std::string const& liquidShaderName=shader.getName();//e.g."lambert1", or "liquidSurface1", NOTE: it is liquidShader, not maya shader.
	std::string const& rmSloFilePath=shader.getShaderFileName();
	std::string const& mayaShaderName=rmSloFilePath.substr(rmSloFilePath.find_last_of('/')+1);//Renderman slo file name, e.g."your_shader_dir/liquidchecker"

	OutputHelper o(file);

	o.beginRSL(mayaShaderName.c_str(), node);

	//tokenPointerArray only store parameters of user-defined shader
	size_t parameterNum =  shader.tokenPointerArray.size() - 1;
	for(size_t i=0; i<parameterNum; ++i)
	{
		//_s("//- "
		//	<<const_cast<liqTokenPointer*>(&tokenPointerArray[i])->getDetailedTokenName()<<","//uniform float intensity
		//	<<tokenPointerArray[i].getDetailType()<<","
		//	<<"//tokenPointerArray[i].getTokenFloatArray()"<<","
		//	<<"//[error]tokenPointerArray[i].getTokenString()"<<","
		//	<<tokenPointerArray[i].getTokenName()<<","//intensity,
		//	<<tokenPointerArray[i].getParameterType()<<","//rFloat,
		//	<<tokenPointerArray[i].getRiDeclare()<<","//uniform float,
		//	);
		// 			_s("// "<<tokenPointerArray[i].getTokenName());
		std::string paramType;

		liqTokenPointer* vp = const_cast< liqTokenPointer* >( &shader.tokenPointerArray[i] );
		switch( shader.tokenPointerArray[i].getParameterType() )
		{
		case rFloat:
			{
				paramType = "float";
			}
			break;
		case rInt:
			{
				paramType = "int";
			}
			break;
		case rBool:
			{
				paramType = "bool";
			}
			break;
		case rPoint: 
			{
				paramType = "point";
			}
			break;
		case rVector: 
			{
				paramType = "vector";
			}
			break;
		case rNormal: 
			{
				paramType = "normal";
			}
			break;
		case rColor:
			{
				paramType = "color";
			}
			break;
		case rString: case rShader:
			{
				paramType = "string";
			}
			break; 
		case rHpoint:
			{
				paramType = "vector4";//not supported
			}
			break;
		case rMatrix:
			{
				paramType = "matrix";
			}
			;break;
		default :
			assert(0);
		}//switch
		o.addRSLVariable(paramType.c_str(),  vp->getTokenName().c_str(), vp->getTokenName().c_str(), node);
	}//for

	o.endRSL();
}
}//namespace ER
#endif//_USE_ELVISHRAY_