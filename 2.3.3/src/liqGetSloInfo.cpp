/*
**
** The contents of this file are subject to the Mozilla Public License Version 1.1 (the
** "License"); you may not use this file except in compliance with the License. You may
** obtain a copy of the License at http://www.mozilla.org/MPL/
**
** Software distributed under the License is distributed on an "AS IS" basis, WITHOUT
** WARRANTY OF ANY KIND, either express or implied. See the License for the specific
** language governing rights and limitations under the License.
**
** The Original Code is the Liquid Rendering Toolkit.
**
** The Initial Developer of the Original Code is Colin Doncaster. Portions created by
** Colin Doncaster are Copyright (C) 2002. All Rights Reserved.
**
** Contributor(s): Berj Bannayan.
**
**
** The RenderMan (R) Interface Procedures and Protocol are:
** Copyright 1988, 1989, Pixar
** All Rights Reserved
**
**
** RenderMan (R) is a registered trademark of Pixar
**
*/

/* ______________________________________________________________________
**
** Liquid Get .slo Info Source
** ______________________________________________________________________
*/

// PRMan/3Delight Headers
//extern "C" {
//#include "ri_interface.h"
//#if defined( PRMAN ) || defined( DELIGHT )
//#include <slo.h>
//#endif
//}
//
//// Entropy Headers
//#ifdef ENTROPY
//#include <sleargs.h>
//#endif
//
//// Aqsis Headers
//#ifdef AQSIS
//#include <slx.h>
//#endif
//
//// Pixie Headers
//#ifdef PIXIE
//#include <sdr.h>
//#endif
#include <liqGetSloInfo.h>

#include <liquid.h>
#include <liqGlobalHelpers.h>
#include <common/mayacheck.h>
#include <liqMemory.h>


// Entropy to PRman type conversion : numbering has a break between
// string ( 7 -> 4 ) and surface ( 16 -> 5 )
//int SLEtoSLOMAP[21] = { 0, 3, 2, 1, 11, 12, 13, 4, 5, 7, 6, 8, 10, 0, 0, 0, 5, 7, 6, 8, 10 };
// Aqsis to PRman type conversion : looks the same
//int SLXtoSLOMAP[14] = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13 };
// Pixie to PRman type conversion
//int SDRtoSLOMAP[7] = { 3, 11, 12, 1, 2, 13, 4 };
//int SDRTypetoSLOTypeMAP[5] = { 5, 7, 8, 6, 10 };

const unsigned int shaderTypeStrSize = 17;
const char* shaderTypeStr[shaderTypeStrSize] = { "unknown",        //0
                                                  "point",          //1
                                                  "color",          //2
                                                  "float",          //3
                                                  "string",         //4
                                                  "surface",        //5
                                                  "light",          //6
                                                  "displacement",   //7
                                                  "volume",         //8
                                                  "transformation", //9
                                                  "imager",         //10
                                                  "vector",         //11
                                                  "normal",         //12
                                                  "matrix",         //13
                                                  "shader",         //14
												  "int"				//15
												  "bool"			//16
};

const char* shaderDetailStr[3] = {  "unknown",
                                     "varying",
                                     "uniform" };


liqGetSloInfo::liqGetSloInfo()
{
  shaderTypeMap["unknown"]        = SHADER_TYPE_UNKNOWN;
  shaderTypeMap["point"]          = SHADER_TYPE_POINT;
  shaderTypeMap["color"]          = SHADER_TYPE_COLOR;
  shaderTypeMap["float"]          = SHADER_TYPE_SCALAR;
  shaderTypeMap["int"]			  = SHADER_TYPE_INT;
  shaderTypeMap["bool"]			  = SHADER_TYPE_BOOL;
  shaderTypeMap["string"]         = SHADER_TYPE_STRING;
  shaderTypeMap["surface"]        = SHADER_TYPE_SURFACE;
  shaderTypeMap["light"]          = SHADER_TYPE_LIGHT;
  shaderTypeMap["displacement"]   = SHADER_TYPE_DISPLACEMENT;
  shaderTypeMap["volume"]         = SHADER_TYPE_VOLUME;
  shaderTypeMap["transformation"] = SHADER_TYPE_TRANSFORMATION;
  shaderTypeMap["imager"]         = SHADER_TYPE_IMAGER;
  shaderTypeMap["vector"]         = SHADER_TYPE_VECTOR;
  shaderTypeMap["normal"]         = SHADER_TYPE_NORMAL;
  shaderTypeMap["matrix"]         = SHADER_TYPE_MATRIX;
  shaderTypeMap["shader"]         = SHADER_TYPE_SHADER;

  shaderDetailMap["unknown"]      = SHADER_DETAIL_UNKNOWN;
  shaderDetailMap["varying"]      = SHADER_DETAIL_VARYING;
  shaderDetailMap["uniform"]      = SHADER_DETAIL_UNIFORM;
}


void* liqGetSloInfo::creator()
//
//  Description:
//      Create a new instance of the translator
//
{
    return new liqGetSloInfo();
}

liqGetSloInfo::~liqGetSloInfo()
//
//  Description:
//      Class destructor
//
{
}
int liqGetSloInfo::nargs()
{
  return numParam;
}

MString liqGetSloInfo::getName()
{
  return shaderName;
}

// SHADER_TYPE liqGetSloInfo::getType()
// {
//   return shaderType;
// }

int liqGetSloInfo::getNumParam()
{
  return numParam;
}

// MString liqGetSloInfo::getTypeStr()
// {
//     return MString( shaderTypeStr[ shaderType ] );
// }

// MString liqGetSloInfo::getTypeStr(SHADER_TYPE type)
// {
// 	if( (unsigned int)type > shaderTypeStrSize )
// 	{
// 		liquidMessage2( messageError, "[liqGetSloInfo::getTypeStr] error index out of range [%d]", (int)type);
// 		return MString("??");
// 	}
//     return MString( shaderTypeStr[ type ] );
// }

MString liqGetSloInfo::getTypeStr2() const
{
	return shaderTypeEx;// get shaderTypeEx which comes from PL file
}
MString liqGetSloInfo::getArgName( int num )
{
  return argName[ num ];
}

SHADER_TYPE liqGetSloInfo::getArgType( int num )
{
  return argType[ num ];
}

MString liqGetSloInfo::getArgTypeStr( int num )
{
    return MString( shaderTypeStr[ ( int )argType[ num ] ] );
}

SHADER_DETAIL liqGetSloInfo::getArgDetail( int num )
{
  return argDetail[ num ];
}

MString liqGetSloInfo::getArgDetailStr( int num )
{
    return MString( shaderDetailStr[ ( int )argDetail[ num ] ] );
}

int liqGetSloInfo::getArgArraySize( int num )
{
  return argArraySize[ num ];
}

MString liqGetSloInfo::getArgStringDefault( int num, int entry )
{
	MStringArray buffer;
	MString defaultValues( ( char * )argDefault[ num ] );
	defaultValues.split(':', buffer);
    return buffer[entry];
}

float liqGetSloInfo::getArgFloatDefault( int num, int entry )
{
    float *floats = ( float * )argDefault[ num ];
    return floats[ entry ];
}

int liqGetSloInfo::getArgIntDefault( int num, int entry )
{
	int *ints = ( int * )argDefault[ num ];
	return ints[ entry ];
}

bool liqGetSloInfo::getArgBoolDefault( int num, int entry )
{
	bool *bools = ( bool * )argDefault[ num ];
	return bools[ entry ];
}

int liqGetSloInfo::isOutputParameter( unsigned int num )
{
	if(num<argIsOutput.size())
	{
		return argIsOutput[num];
	}
	else
	{
		return 0;  // must only append with old scenes...
	}
}

MString liqGetSloInfo::getArgAccept( unsigned int num )
{
	if(num<argAccept.size())
	{
		return argAccept[num];
	}
	else
	{
		return "";  // must only append with old scenes...
	}
}

void liqGetSloInfo::resetIt()
{
    numParam = 0;
    shaderName.clear();
    argName.clear();
    argType.clear();
    argDetail.clear();
    argArraySize.clear();
    argIsOutput.clear();
    argAccept.clear();
    unsigned int k;
    for ( k = 0; k < argDefault.size(); k++ ) {
        lfree( argDefault[k] );
    }
}

int liqGetSloInfo::setShader( MString shaderFileName )
{
	CM_TRACE_FUNC("liqGetSloInfo::setShader("<<shaderFileName.asChar()<<")");

  assert(0&&"liqGetSloInfo::setShader() seems nerver been used.");
  int rstatus = 0;
  resetIt();

  if ( !fileExists( shaderFileName ) ) {
    liquidMessage2(messageError, "[liqGetSloInfo::setShader] Error : Can not find shader [%s]", shaderFileName.asChar() );
    resetIt();
    return 0;
  } else {
    MStatus cmdStat;

    MString cmd = "liquidSlInfoReset();";
    cmdStat = MGlobal::executeCommand( cmd );
    IfMErrorMsgReturnIt( cmdStat, "liqGetSloInfo::setShader -> liquidSlInfoReset failed !" );

    cmd = "liquidSlSetShader \"" + shaderFileName + "\";";
    cmdStat = MGlobal::executeCommand( cmd );
    IfMErrorMsgReturnIt( cmdStat, "liqGetSloInfo::setShader -> "+cmd+" failed !" );

    // get the shader name
    cmdStat = MGlobal::executeCommand( "liquidSlShaderName();", shaderName );
    IfMErrorMsgReturnIt( cmdStat, "liqGetSloInfo::setShader -> liquidSlShaderName failed !" );
    //cout <<"setShader:  shaderName = "<<shaderName<<endl;

    // get the shader type  : Elvishray has shadow/photon/environment shader types //  [2/14/2012 yaoyansi]
    cmdStat = MGlobal::executeCommand( "liquidSlShaderType();", shaderTypeEx );
    IfMErrorMsgReturnIt( cmdStat, "liqGetSloInfo::setShader -> liquidSlShaderType() failed !" );

    // get the number of params
    cmdStat = MGlobal::executeCommand( "liquidSlNumParams();", numParam );
    IfMErrorMsgReturnIt( cmdStat, "liqGetSloInfo::setShader -> liquidSlnumParams failed !" );

    // get the data from the arrays
    MStringArray shaderParams, shaderDetails, shaderTypes, shaderDefaults;
    MIntArray shaderArraySizes;
    cmdStat = MGlobal::executeCommand( "liquidSlAllParamNames();", shaderParams );
    IfMErrorMsgReturnIt( cmdStat, "liqGetSloInfo::setShader -> liquidSlAllParamNames failed !" );
    //cmdStat = MGlobal::executeCommand( "liquidSlAllParamDetails();", shaderDetails );
    //IfMErrorMsgReturnIt( cmdStat, "liqGetSloInfo::setShader -> liquidSlAllParamDetails failed !" );
    //cmdStat = MGlobal::executeCommand( "liquidSlAllParamTypes();", shaderTypes );
    //IfMErrorMsgReturnIt( cmdStat, "liqGetSloInfo::setShader -> liquidSlAllParamTypes failed !" );
    //cmdStat = MGlobal::executeCommand( "liquidSlAllParamArraySizes();", shaderArraySizes );
    //IfMErrorMsgReturnIt( cmdStat, "liqGetSloInfo::setShader -> liquidSlAllParamArraySizes failed !" );
    //cmdStat = MGlobal::executeCommand( "liquidSlAllParamDefaultsRaw();", shaderDefaults );
    //IfMErrorMsgReturnIt( cmdStat, "liqGetSloInfo::setShader -> liquidSlAllParamDefaultsRaw failed !" );
    //
    //
    //for ( unsigned k = 0; k < numParam; k++ ) {
    //
    //  //cout <<"setShaderNode:     + shaderParams["<<k<<"] = "<<shaderParams[k]<<endl;
    //  argName.push_back( shaderParams[k] );
    //
    //  SHADER_TYPE theParamType = shaderTypeMap[ shaderTypes[k] ];
    //  //cout <<"setShaderNode:       - shaderTypes["<<k<<"] = "<<shaderTypes[k]<<" -> "<<theParamType<<endl;
    //  argType.push_back( theParamType );
    //
    //  //cout <<"setShaderNode:       - shaderArraySizes["<<k<<"] = "<<shaderArraySizes[k]<<endl;
    //  argArraySize.push_back( shaderArraySizes[k] );
    //
    //  SHADER_DETAIL theParamDetail = shaderDetailMap[ shaderDetails[k] ];
    //  //cout <<"setShaderNode:       - shaderDetails["<<k<<"] = "<<shaderDetails[k]<<" -> "<<theParamDetail<<endl;
    //  argDetail.push_back( theParamDetail );
    //
    //
    //  switch ( shaderTypeMap[ shaderTypes[k] ] ) {
    //
    //    case SHADER_TYPE_STRING: {
    //      char *strings = ( char * )lmalloc( sizeof( char ) * strlen( shaderDefaults[k].asChar() ) + 1 );
    //      strcpy( strings, shaderDefaults[k].asChar() );
    //      argDefault.push_back( ( void * )strings );
    //      break;
    //    }
    //
    //    case SHADER_TYPE_SCALAR: {
    //      if ( shaderArraySizes[k] > 0 ) {
    //          MStringArray tmp;
    //          shaderDefaults[k].split( ':', tmp );
    //          float *floats = ( float *)lmalloc( sizeof( float ) * shaderArraySizes[k] );
    //          for (int kk = 0; kk < shaderArraySizes[k]; kk ++ ) {
    //              floats[kk] = tmp[kk].asFloat();
    //          }
    //          argDefault.push_back( ( void * )floats );
    //      } else {
    //        float *floats = ( float *)lmalloc( sizeof( float ) * 1 );
    //        floats[0] = shaderDefaults[k].asFloat();
    //        argDefault.push_back( ( void * )floats );
    //      }
    //      break;
    //    }
    //
    //    case SHADER_TYPE_COLOR:
    //    case SHADER_TYPE_POINT:
    //    case SHADER_TYPE_VECTOR:
    //    case SHADER_TYPE_NORMAL: {
    //      if( shaderArraySizes[k] > 0  ) {
    //          float *floats = ( float *)lmalloc( sizeof( float ) * 3 * shaderArraySizes[k] );
    //          MStringArray tmp;
    //          shaderDefaults[k].split( ':', tmp );
    //          for (int kk = 0; kk < tmp.length(); kk ++ ) {
    //             floats[3 * kk] = tmp[3*kk].asFloat();
    //             floats[3 * kk + 1] = tmp[3*kk+1].asFloat();
    //             floats[3 * kk + 2] = tmp[3*kk+2].asFloat();
    //          }
    //          argDefault.push_back( ( void * )floats );
    //      } else {
    //          float *floats = ( float *)lmalloc( sizeof( float ) * 3 );
    //          MStringArray tmp;
    //          shaderDefaults[k].split( ':', tmp );
    //          floats[0] = tmp[0].asFloat();
    //          floats[1] = tmp[1].asFloat();
    //          floats[2] = tmp[2].asFloat();
    //          argDefault.push_back( ( void * )floats );
    //      }
    //      break;
    //    }
    //
    //    //case SHADER_TYPE_MATRIX: {
    //    //  printf("\"%s\" [%f %f %f %f\n",
    //    //          arg->svd_spacename,
    //    //          (double) (arg->svd_default.matrixval[0]),
    //    //          (double) (arg->svd_default.matrixval[1]),
    //    //          (double) (arg->svd_default.matrixval[2]),
    //    //          (double) (arg->svd_default.matrixval[3]));
    //    //  printf("\t\t\t%f %f %f %f\n",
    //    //          (double) (arg->svd_default.matrixval[4]),
    //    //          (double) (arg->svd_default.matrixval[5]),
    //    //          (double) (arg->svd_default.matrixval[6]),
    //    //          (double) (arg->svd_default.matrixval[7]));
    //    //  printf("\t\t\t%f %f %f %f\n",
    //    //          (double) (arg->svd_default.matrixval[8]),
    //    //          (double) (arg->svd_default.matrixval[9]),
    //    //          (double) (arg->svd_default.matrixval[10]),
    //    //          (double) (arg->svd_default.matrixval[11]));
    //    //  printf("\t\t\t%f %f %f %f]\n",
    //    //          (double) (arg->svd_default.matrixval[12]),
    //    //          (double) (arg->svd_default.matrixval[13]),
    //    //          (double) (arg->svd_default.matrixval[14]),
    //    //          (double) (arg->svd_default.matrixval[15]));
    //    //  break;
    //    //}
    //
    //    default: {
    //      argDefault.push_back( NULL );
    //      break;
    //    }
    //
    //  } // switch
    //} // param loop

  } // file exists

  rstatus = 1;

  return rstatus;
}


int liqGetSloInfo::setShaderNode( MFnDependencyNode &shaderNode )
{
	CM_TRACE_FUNC("liqGetSloInfo::setShaderNode("<<shaderNode.name().asChar()<<")");

  int rstatus = 0;
  MStatus stat;
  resetIt();
  MString shaderName;
  MPlug rmanShaderNamePlug = shaderNode.findPlug( "rmanShaderLong", &stat );
  rmanShaderNamePlug.getValue( shaderName );

  shaderName = liquidSanitizePath(shaderName);//replace \ by /

  MString shaderExtension = shaderName.substring( shaderName.length() - 3, shaderName.length() - 1 );
  MString shaderFileName = shaderName.substring( 0, shaderName.length() - 5 );

  // this code uses the attributes stored on the liquid shader nodes
  //
  // char *sloFileName = (char *)alloca(shaderFileName.length() + 1 );
  // strcpy( sloFileName, shaderFileName.asChar() );
  
  // get absolute path, if relative was used
  shaderName = getFullPathFromRelative( shaderName );
  // string sloFileName( shaderFileName.asChar() );
  // cout << "checking on " << shaderName << endl;
  if ( !fileExists( shaderName ) ) 
  {
		liquidMessage2(messageError, "[liqGetSloInfo::setShaderNode] : Can not find shader [%s]", shaderName.asChar() );
		resetIt();
		return 0;
  } 
  else 
  {
    MPlug shaderPlug;

    // get the shader name
    shaderPlug = shaderNode.findPlug( "rmanShader" );
    shaderPlug.getValue( shaderName );
    //cout <<"setShaderNode:  shaderName = "<<shaderName<<endl;

    // get the shader type
#if 0 //  [2/14/2012 yaoyansi]
    MString nodeType = shaderNode.typeName();
    if ( nodeType == "liquidSurface" )            shaderType = ( SHADER_TYPE ) 5;
    else if ( nodeType == "liquidLight" )         shaderType = ( SHADER_TYPE ) 6;
    else if ( nodeType == "liquidDisplacement" )  shaderType = ( SHADER_TYPE ) 7;
    else if ( nodeType == "liquidVolume" )        shaderType = ( SHADER_TYPE ) 8;
    else if ( nodeType == "liquidCoShader" )      shaderType = ( SHADER_TYPE ) 14;
#else
	shaderPlug = shaderNode.findPlug( "rmanShaderType", stat );
	IfMErrorMsgWarn(stat, shaderNode.name()+".findPlug(\"rmanShaderType\")");
	IfMErrorMsgWarn(shaderPlug.getValue( shaderTypeEx ), shaderPlug.name() );
#endif
    MStringArray shaderParams, shaderDetails, shaderTypes, shaderDefaults, shaderMethods, shaderAccept;
    MIntArray shaderArraySizes, shaderOutputs;

	// commented out for it causes unjustified errors
    // get the parameters list
    shaderPlug = shaderNode.findPlug( "rmanParams" );
    MObject arrayObject;
    shaderPlug.getValue( arrayObject );
    MFnStringArrayData stringArrayData( arrayObject );//, &stat );
    stringArrayData.copyTo( shaderParams );
//  IfMErrorMsgReturnIt( stat, "liqGetSloInfo::setShaderNode > could not store rmanParams string array" );
    //cout <<"setShaderNode:  shaderParams = "<<shaderParams<<endl;

    // get the number of parameters
    numParam = shaderParams.length();
    //cout <<"setShaderNode:  numParam = "<<numParam<<endl;

    // get the parameter details
    shaderPlug = shaderNode.findPlug( "rmanDetails" );
    shaderPlug.getValue( arrayObject );
    stringArrayData.setObject( arrayObject );
    stringArrayData.copyTo( shaderDetails );
    if ( shaderDetails.length() != numParam ) 
	{
      MString error;
      error = "Liquid -> error reading " + shaderNode.name() + ".rmanDetails ... Please run \"liquidShaderUpdater(1)\" to fix your scene !";
      throw error;
    }

	// get the parameter access
	shaderPlug = shaderNode.findPlug( "rmanAccept", &stat );
	if( stat==MS::kSuccess )
	{
		shaderPlug.getValue( arrayObject );
		stringArrayData.setObject( arrayObject );
		stringArrayData.copyTo( shaderAccept );
		if( shaderAccept.length()==0 && numParam!=0 )
		{
			printf("[liqGetSloInfo::setShaderNode] warning reading %s.rmanAccept, array is empty ...\n", shaderNode.name().asChar() );
		}
		else if( shaderAccept.length() != numParam )
		{
			printf("[liqGetSloInfo::setShaderNode] error reading %s.rmanAccept, bad array size %d, should be %d ...\n", shaderNode.name().asChar(), shaderAccept.length(), numParam );
		}
	}
	else
	{
		printf("[liqGetSloInfo::setShaderNode] error plug %s.rmanAccept doesn't exist\n", shaderNode.name().asChar());
	}

	// get the parameter output on/off
	shaderPlug = shaderNode.findPlug( "rmanIsOutput", &stat );
	if( stat==MS::kSuccess )
	{
		shaderPlug.getValue( arrayObject );
		MFnIntArrayData intArrayData( arrayObject, &stat );
		intArrayData.copyTo( shaderOutputs );
		if ( shaderOutputs.length() != numParam )
		{
			liquidMessage2(messageError, "[liqGetSloInfo::setShaderNode] error reading [%s.rmanIsOutput] ...", shaderNode.name().asChar() );
		}
	}
	else
	{
		//liquidMessage2(messageError, "[liqGetSloInfo::setShaderNode] error plug [%s.rmanIsOutput] doesn't exist", shaderNode.name().asChar());
		liquidMessage2(messageWarning, "[liqGetSloInfo::setShaderNode] error plug [%s.rmanIsOutput] doesn't exist", shaderNode.name().asChar());
	
	}

    // get the parameter types
    //shaderPlug = shaderNode.findPlug( "rmanMethods" );
    //shaderPlug.getValue( arrayObject );
    //stringArrayData.setObject( arrayObject );
    //stringArrayData.copyTo( shaderMethods );

    
    // get the parameter types
    shaderPlug = shaderNode.findPlug( "rmanTypes" );
    shaderPlug.getValue( arrayObject );
    stringArrayData.setObject( arrayObject );
    stringArrayData.copyTo( shaderTypes );
    if ( shaderTypes.length() != numParam ) 
	{
      MString error;
      error = "Liquid -> error reading " + shaderNode.name() + ".rmanTypes ... Please run \"liquidShaderUpdater(1)\" to fix your scene !";
      throw error;
    }

    // get the parameter defaults
    shaderPlug = shaderNode.findPlug( "rmanDefaults" );
    shaderPlug.getValue( arrayObject );
    stringArrayData.setObject( arrayObject );
    stringArrayData.copyTo( shaderDefaults );
//	cout <<"shaderDefaults=" << shaderDefaults<<endl;
    if ( shaderDefaults.length() != numParam ) 
	{
      MString error;
      error = "Liquid -> error reading " + shaderNode.name() + ".rmanDefaults ... Please run \"liquidShaderUpdater(1)\" to fix your scene !";
      throw error;
    }

    // get the parameter array sizes
    shaderPlug = shaderNode.findPlug( "rmanArraySizes" );
    shaderPlug.getValue( arrayObject );
    MFnIntArrayData intArrayData( arrayObject, &stat );
    intArrayData.copyTo( shaderArraySizes );
// 	for(int i=0; i<shaderArraySizes.length(); ++i){
// 		liquidMessage2(messageWarning,"[liqGetloInfo] shaderArraySizes[%d]=%d",i, shaderArraySizes[i]);
// 	}
    if ( shaderArraySizes.length() != numParam ) 
	{
      MString error;
      error = "Liquid -> error reading " + shaderNode.name() + ".rmanArraySizes ... Please run \"liquidShaderUpdater(1)\" to fix your scene !";
      throw error;
    }

    for ( unsigned k = 0; k < numParam; k++ ) 
	{
      //cout <<"setShaderNode:     + shaderParams["<<k<<"] = "<<shaderParams[k]<<endl;
      argName.push_back( shaderParams[k] );

      SHADER_TYPE theParamType = shaderTypeMap[ shaderTypes[k] ];
      //cout <<"setShaderNode:       - shaderTypes["<<k<<"] = "<<shaderTypes[k]<<" -> "<<theParamType<<endl;
      argType.push_back( theParamType );

      //cout <<"setShaderNode:       - shaderArraySizes["<<k<<"] = "<<shaderArraySizes[k]<<endl;
      argArraySize.push_back( shaderArraySizes[k] );

      SHADER_DETAIL theParamDetail = shaderDetailMap[ shaderDetails[k] ];
      //cout <<"setShaderNode:       - shaderDetails["<<k<<"] = "<<shaderDetails[k]<<" -> "<<theParamDetail<<endl;
      argDetail.push_back( theParamDetail );

	  if( shaderAccept.length() == numParam )
	  {
		  argAccept.push_back( shaderAccept[k] );
	  }
      if( shaderOutputs.length() == numParam )
      {
		  argIsOutput.push_back( shaderOutputs[k] );
	  }

      switch ( shaderTypeMap[ shaderTypes[k] ] ) 
	  {
        case SHADER_TYPE_STRING: {
          char *strings = ( char * )lmalloc( sizeof( char ) * strlen( shaderDefaults[k].asChar() ) + 1 );
          strcpy( strings, shaderDefaults[k].asChar() );
          argDefault.push_back( ( void * )strings );
          break;
        }

        case SHADER_TYPE_SCALAR: {
          if ( shaderArraySizes[k] > 0 ) {
			  // replace ';'by ':' before split shaderDefaults[k]
			  shaderDefaults[k] = replaceAll(shaderDefaults[k], ';', ':');
              MStringArray tmp;
              shaderDefaults[k].split( ':', tmp );
			  //assert(tmp.length()==shaderArraySizes[k]);
              float *floats = ( float *)lmalloc( sizeof( float ) * shaderArraySizes[k] );
              for (int kk = 0; kk < shaderArraySizes[k]; kk ++ ) {
                  floats[kk] = tmp[kk].asFloat();
              }
              argDefault.push_back( ( void * )floats );
          } else {
            float *floats = ( float *)lmalloc( sizeof( float ) * 1 );
            floats[0] = shaderDefaults[k].asFloat();
            argDefault.push_back( ( void * )floats );
          }
          break;
        }
		case SHADER_TYPE_INT: 
		{
			if ( shaderArraySizes[k] > 0 ) {
				// replace ';'by ':' before split shaderDefaults[k]
				shaderDefaults[k] = replaceAll(shaderDefaults[k], ';', ':');
				MStringArray tmp;
				shaderDefaults[k].split( ':', tmp );
				//assert(tmp.length()==shaderArraySizes[k]);
				int *ints = ( int *)lmalloc( sizeof( int ) * shaderArraySizes[k] );
				for (int kk = 0; kk < shaderArraySizes[k]; kk ++ ) {
					ints[kk] = tmp[kk].asInt();
				}
				argDefault.push_back( ( void * )ints );
			} else {
				int *ints = ( int *)lmalloc( sizeof( int ) * 1 );
				ints[0] = shaderDefaults[k].asInt();
				argDefault.push_back( ( void * )ints );
			}
			break;
		}
		case SHADER_TYPE_BOOL: 
			{
				if ( shaderArraySizes[k] > 0 ) {
					// replace ';'by ':' before split shaderDefaults[k]
					shaderDefaults[k] = replaceAll(shaderDefaults[k], ';', ':');
					MStringArray tmp;
					shaderDefaults[k].split( ':', tmp );
					//assert(tmp.length()==shaderArraySizes[k]);
					bool *bools = ( bool *)lmalloc( sizeof( bool ) * shaderArraySizes[k] );
					for (int kk = 0; kk < shaderArraySizes[k]; kk ++ ) {
						bools[kk] = tmp[kk].asInt();
					}
					argDefault.push_back( ( void * )bools );
				} else {
					bool *bools = ( bool *)lmalloc( sizeof( bool ) * 1 );
					bools[0] = shaderDefaults[k].asInt();
					argDefault.push_back( ( void * )bools );
				}
				break;
			}
        case SHADER_TYPE_COLOR:
        case SHADER_TYPE_POINT:
        case SHADER_TYPE_VECTOR:
        case SHADER_TYPE_NORMAL: {
          if( shaderArraySizes[k] > 0  ) {
              //cout<<"setShaderNode:         - array size : "<<shaderArraySizes[k]<<endl;
              float *floats = ( float *)lmalloc( sizeof( float ) * 3 * shaderArraySizes[k] );
			  // replace ';'by ':' before split shaderDefaults[k]
			  shaderDefaults[k] = replaceAll(shaderDefaults[k], ';', ':');
              MStringArray tmp;
              shaderDefaults[k].split( ':', tmp );
			  //assert( tmp.length()==(3*shaderArraySizes[k]) );
              for (unsigned int kk = 0; kk < tmp.length()/3; kk++ ) {
                //cout<<"setShaderNode:           [ "<<tmp[3*kk].asFloat()<<" "<<tmp[3*kk+1].asFloat()<<" "<<tmp[3*kk+2].asFloat()<<" ]   kk="<<kk<<endl;
                floats[3*kk  ] = tmp[3*kk  ].asFloat();
                floats[3*kk+1] = tmp[3*kk+1].asFloat();
                floats[3*kk+2] = tmp[3*kk+2].asFloat();
              }
              argDefault.push_back( ( void * )floats );
          } else {
              float *floats = ( float *)lmalloc( sizeof( float ) * 3 );
			  // replace ';'by ':' before split shaderDefaults[k]
			  shaderDefaults[k] = replaceAll(shaderDefaults[k], ';', ':');
              MStringArray tmp;
              shaderDefaults[k].split( ':', tmp );
			  //cout << "shaderDefaults["<<k<<"]="<<shaderDefaults[k] <<endl;
			  //cout << "tmp="<<tmp <<endl;
			  //assert(tmp.length()==3);
              floats[0] = tmp[0].asFloat();
              floats[1] = tmp[1].asFloat();
              floats[2] = tmp[2].asFloat();
              argDefault.push_back( ( void * )floats );
          }
          break;
        }

        case SHADER_TYPE_MATRIX: {
			if( shaderArraySizes[k] > 0  ) {
              //cout<<"setShaderNode:         - array size : "<<shaderArraySizes[k]<<endl;
              float *floats = ( float *)lmalloc( sizeof( float ) * 16 * shaderArraySizes[k] );
              MStringArray tmp;
              shaderDefaults[k].split( ':', tmp );
              for (unsigned int kk = 0; kk < tmp.length()/16; kk++ ) {
                //cout<<"setShaderNode:           [ "<<tmp[3*kk].asFloat()<<" "<<tmp[3*kk+1].asFloat()<<" "<<tmp[3*kk+2].asFloat()<<" ]   kk="<<kk<<endl;
                floats[16*kk   ] = tmp[16*kk   ].asFloat();
                floats[16*kk+1 ] = tmp[16*kk+1 ].asFloat();
                floats[16*kk+2 ] = tmp[16*kk+2 ].asFloat();
                floats[16*kk+3 ] = tmp[16*kk+3 ].asFloat();
                floats[16*kk+4 ] = tmp[16*kk+4 ].asFloat();
                floats[16*kk+5 ] = tmp[16*kk+5 ].asFloat();
                floats[16*kk+6 ] = tmp[16*kk+6 ].asFloat();
                floats[16*kk+7 ] = tmp[16*kk+7 ].asFloat();
                floats[16*kk+8 ] = tmp[16*kk+8 ].asFloat();
                floats[16*kk+9 ] = tmp[16*kk+9 ].asFloat();
                floats[16*kk+10] = tmp[16*kk+10].asFloat();
                floats[16*kk+11] = tmp[16*kk+11].asFloat();
                floats[16*kk+12] = tmp[16*kk+12].asFloat();
                floats[16*kk+13] = tmp[16*kk+13].asFloat();
                floats[16*kk+14] = tmp[16*kk+14].asFloat();
                floats[16*kk+15] = tmp[16*kk+15].asFloat();
              }
              argDefault.push_back( ( void * )floats );
			} else {
				const int LENGTH = 16;
				float *floats = ( float *)lmalloc( sizeof( float ) * LENGTH );
				// replace ';'by ':' before split shaderDefaults[k]
				shaderDefaults[k] = replaceAll(shaderDefaults[k], ';', ':');
				MStringArray tmp;
				shaderDefaults[k].split( ':', tmp );
				assert(tmp.length()==LENGTH);
//				cout << "shaderDefaults["<<k<<"]=" << shaderDefaults[k]<<endl;
//				cout << "tmp=" << tmp<<endl;
//				liquidMessage2(messageWarning,"[liqGetloInfo] %s.%s[%s] array's size: %d.", shaderNode.name().asChar(), shaderParams[k].asChar(), shaderTypes[k].asChar(), tmp.length() );
				//tmp[] -> floats[]
 				for(int i =0; i<LENGTH; ++i)
				{
 					floats[i] = tmp[i].asFloat();
 					//liquidMessage2(messageWarning,"%f", floats[i]);
 				}

				argDefault.push_back( ( void * )floats );
			}
			break;
        }

		case SHADER_TYPE_SHADER:
		{
			int len = shaderArraySizes[k];
			if ( shaderArraySizes[k] > 0 ) 
			{
				liquidMessage2(messageError, "SHADER_TYPE_SHADER for array is not implemented yet.");
// 				// replace ';'by ':' before split shaderDefaults[k]
// 				shaderDefaults[k] = replaceAll(shaderDefaults[k], ';', ':');
// 				MStringArray tmp;
// 				shaderDefaults[k].split( ':', tmp );
// 				//assert(tmp.length()==shaderArraySizes[k]);
// 				MString *strings = ( MString *)lmalloc( sizeof( MString ) * shaderArraySizes[k] );
// 				for (int kk = 0; kk < shaderArraySizes[k]; kk ++ ) {
// 					strings[kk] = tmp[kk];
// 				}
// 				argDefault.push_back( ( void * )strings );
			} else {
				char *strings = ( char * )lmalloc( sizeof( char ) * strlen( shaderDefaults[k].asChar() ) + 1 );
				strcpy( strings, shaderDefaults[k].asChar() );
				argDefault.push_back( ( void * )strings );
			}
			break;
		}
        default: {
          //cout <<"setShaderNode:     + DEFAULT CASE REACHED !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"<<endl;
			liquidMessage2(messageError,"[liqGetloInfo] type [%s] is not supported.", shaderTypes[k].asChar() );
          argDefault.push_back( NULL );
          break;
        }

      }
    }
  }
  rstatus = 1;
  return rstatus;
}


MStatus liqGetSloInfo::doIt( const MArgList& args )
{
	CM_TRACE_FUNC("liqGetSloInfo::doIt(args)");

  assert(0&&"liqGetSloInfo::doIt() seems nerver been used.");

  MStatus     status;
  unsigned    i;

  try {
    if ( args.length() < 2 ) throw( "Not enough arguments specified for liquidGetSloInfo!\n" );
    MString shaderFileName = args.asString( args.length() - 1, &status );
    int success = setShader( shaderFileName );
    if ( !success ) throw( "Error loading shader specified for liquidGetSloInfo!\n" );
    for ( i = 0; i < args.length() - 1; i++ ) {
      if ( MString( "-name" ) == args.asString( i, &status ) )  {
        setResult( getName() );
      }
      if ( MString( "-type" ) == args.asString( i, &status ) )  {
        setResult( getTypeStr2() );
      }
      if ( MString( "-numParam" ) == args.asString( i, &status ) )  {
        setResult( getNumParam() );
      }
      if ( MString( "-argName" ) == args.asString( i, &status ) )  {
        i++;
        int argNum = args.asInt( i, &status );
        setResult( getArgName( argNum ) );
      }
      if ( MString( "-argType" ) == args.asString( i, &status ) )  {
        i++;
        int argNum = args.asInt( i, &status );
        setResult( getArgTypeStr( argNum ) );
      }
      if ( MString( "-argArraySize" ) == args.asString( i, &status ) )  {
        i++;
        int argNum = args.asInt( i, &status );
        setResult( getArgArraySize( argNum ) );
      }
      if ( MString( "-argDetail" ) == args.asString( i, &status ) )  {
        i++;
        int argNum = args.asInt( i, &status );
        setResult( getArgDetailStr( argNum ) );
      }
      if ( MString( "-argDefault" ) == args.asString( i, &status ) )  {
        i++;
        int argNum = args.asInt( i, &status );
        MStringArray defaults;
        switch ( getArgType( argNum ) ) {
        case SHADER_TYPE_STRING: {
          defaults.append( getArgStringDefault( argNum, 0 ) );
          break;
        }
        case SHADER_TYPE_SCALAR: {
          if ( getArgArraySize( argNum ) > 0 ) {
            for ( int kk = 0; kk < getArgArraySize( argNum ); kk++ ) {
              char defaultTmp[256];
              sprintf( defaultTmp, "%f", getArgFloatDefault( argNum, kk ) );
              defaults.append( defaultTmp );
            }
          } else {
            char defaultTmp[256];
            sprintf( defaultTmp, "%f", getArgFloatDefault( argNum, 0 ) );
            defaults.append( defaultTmp );
          }
          break;
        }
		case SHADER_TYPE_INT: 
		{
			if ( getArgArraySize( argNum ) > 0 ) {
				for ( int kk = 0; kk < getArgArraySize( argNum ); kk++ ) {
					char defaultTmp[256];
					sprintf( defaultTmp, "%d", getArgIntDefault( argNum, kk ) );
					defaults.append( defaultTmp );
				}
			} else {
				char defaultTmp[256];
				sprintf( defaultTmp, "%d", getArgIntDefault( argNum, 0 ) );
				defaults.append( defaultTmp );
			}
			break;
		}
		case SHADER_TYPE_BOOL: 
			{
				if ( getArgArraySize( argNum ) > 0 ) {
					for ( int kk = 0; kk < getArgArraySize( argNum ); kk++ ) {
						char defaultTmp[256];
						sprintf( defaultTmp, "%d", getArgBoolDefault( argNum, kk ) );
						defaults.append( defaultTmp );
					}
				} else {
					char defaultTmp[256];
					sprintf( defaultTmp, "%d", getArgBoolDefault( argNum, 0 ) );
					defaults.append( defaultTmp );
				}
				break;
			}
          case SHADER_TYPE_COLOR:
          case SHADER_TYPE_POINT:
          case SHADER_TYPE_VECTOR:
          case SHADER_TYPE_NORMAL: {
            if ( getArgArraySize( argNum ) > 0 ) {
              for ( int kk = 0; kk < getArgArraySize( argNum ) * 3; kk+=3 ) {
                char defaultTmp[256];
                sprintf( defaultTmp, "%f", getArgFloatDefault( argNum, kk ) );
                defaults.append( defaultTmp );
                sprintf( defaultTmp, "%f", getArgFloatDefault( argNum, kk+1 ) );
                defaults.append( defaultTmp );
                sprintf( defaultTmp, "%f", getArgFloatDefault( argNum, kk+2 ) );
                defaults.append( defaultTmp );
              }
            } else {
              char defaultTmp[256];
              sprintf( defaultTmp, "%f", getArgFloatDefault( argNum, 0 ) );
              defaults.append( defaultTmp );
              sprintf( defaultTmp, "%f", getArgFloatDefault( argNum, 1 ) );
              defaults.append( defaultTmp );
              sprintf( defaultTmp, "%f", getArgFloatDefault( argNum, 2 ) );
              defaults.append( defaultTmp );
            }
            break;
          }
		  case SHADER_TYPE_SHADER: 
			  {
				  if ( getArgArraySize( argNum ) > 0 ) {
					  for ( int kk = 0; kk < getArgArraySize( argNum ); kk++ ) {
						  char defaultTmp[256];
						  sprintf( defaultTmp, "%s", getArgStringDefault( argNum, kk ) );
						  defaults.append( defaultTmp );
					  }
				  } else {
					  char defaultTmp[256];
					  sprintf( defaultTmp, "%s", getArgStringDefault( argNum, 0 ) );
					  defaults.append( defaultTmp );
				  }
				  break;
			  }
          default: {
			  liquidMessage2(messageError,"[liqGetsloInfo] type [%s] is not supported.", getArgType( argNum ) );
            defaults.append( MString( "unknown" ) );
            break;
          }
        }
        setResult( defaults );
      }
      if ( MString( "-argExists" ) == args.asString( i, &status ) )  {
        i++;
        MString name = args.asString( i, &status );
        for ( int k = 0; k < getNumParam(); k++ ) {
          if ( argName[k] == name ) {
            setResult( true );
          } else {
            setResult( false );
          }
        }
      }
    }
  } catch ( MString errorMessage ) {
    resetIt();
    MGlobal::displayError( errorMessage );
  } catch ( ... ) {
    resetIt();
    cerr << "liquidGetSloInfo: Unknown exception thrown\n" << endl;
  }
  resetIt();
  return MS::kSuccess;
};

