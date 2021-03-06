#include <common/prerequest_maya.h>

// Liquid headers
#include <liqlog.h>
#include <liqRibTranslator.h>
#include <liqGlobalHelpers.h>
#include <common/mayacheck.h>
/**
 * Syntax defintion
 */
MSyntax liqRibTranslator::syntax()
{
	//CM_TRACE_FUNC("liqRibTranslator::syntax()");

	MSyntax syntax;

	syntax.addFlag("lr",    "launchRender");
	syntax.addFlag("nolr",  "noLaunchRender");
	syntax.addFlag("GL",    "useGlobals");
	syntax.addFlag("sel",   "selected");
	syntax.addFlag("ra",    "readArchive");
	syntax.addFlag("acv",   "allCurves");
	syntax.addFlag("tif",   "tiff");
	syntax.addFlag("dof",   "dofOn");
	syntax.addFlag("bin",   "doBinary");
	syntax.addFlag("sh",    "shadows");
	syntax.addFlag("nsh",   "noShadows");
	syntax.addFlag("zip",   "doCompression");
	syntax.addFlag("cln",   "cleanRib");
	syntax.addFlag("pro",   "progress");
	syntax.addFlag("mb",    "motionBlur");
	syntax.addFlag("rmot",  "relativeMotion");
	syntax.addFlag("db",    "deformationBlur");
	syntax.addFlag("d",     "debug");
	syntax.addFlag("net",   "netRender");
	syntax.addFlag("fsr",   "fullShadowRib");
	syntax.addFlag("rem",   "remote");
	syntax.addFlag("rs",    "renderScript");
	syntax.addFlag("nrs",   "noRenderScript");
	syntax.addFlag("err",   "errHandler");
	syntax.addFlag("sdb",   "shaderDebug");
	syntax.addFlag("n",     "sequence",         MSyntax::kLong, MSyntax::kLong, MSyntax::kLong);
	syntax.addFlag("fl",    "frameList",        MSyntax::kString);
	syntax.addFlag("m",     "mbSamples",        MSyntax::kLong);
	syntax.addFlag("dbs",   "defBlock");
	syntax.addFlag("cam",   "camera",           MSyntax::kString);
	syntax.addFlag("rcam",  "rotateCamera");
	syntax.addFlag("s",     "samples",          MSyntax::kLong);
	syntax.addFlag("rnm",   "ribName",          MSyntax::kString);
	syntax.addFlag("pd",    "projectDir",       MSyntax::kString);
	syntax.addFlag("rel",   "relativeDirs");
	syntax.addFlag("prm",   "preFrameMel",      MSyntax::kString);
	syntax.addFlag("pom",   "postFrameMel",     MSyntax::kString);
	syntax.addFlag("rid",   "ribdir",           MSyntax::kString);
	syntax.addFlag("txd",   "texdir",           MSyntax::kString);
	syntax.addFlag("tmd",   "tmpdir",           MSyntax::kString);
	syntax.addFlag("pid",   "picdir",           MSyntax::kString);
	syntax.addFlag("pec",   "preCommand",       MSyntax::kString);
	syntax.addFlag("poc",   "postJobCommand",   MSyntax::kString);
	syntax.addFlag("pof",   "postFrameCommand", MSyntax::kString);
	syntax.addFlag("prf",   "preFrameCommand",  MSyntax::kString);
	syntax.addFlag("rec",   "renderCommand",    MSyntax::kString);
	syntax.addFlag("rgc",   "ribgenCommand",    MSyntax::kString);
	syntax.addFlag("blt",   "blurTime",         MSyntax::kDouble);
	syntax.addFlag("sr",    "shadingRate",      MSyntax::kDouble);
	syntax.addFlag("bs",    "bucketSize",       MSyntax::kLong, MSyntax::kLong);
	syntax.addFlag("pf",    "pixelFilter",      MSyntax::kLong, MSyntax::kLong, MSyntax::kLong);
	syntax.addFlag("gs",    "gridSize",         MSyntax::kLong);
	syntax.addFlag("txm",   "texmem",           MSyntax::kLong);
	syntax.addFlag("es",    "eyeSplits",        MSyntax::kLong);
	syntax.addFlag("ar",    "aspect",           MSyntax::kDouble);
	syntax.addFlag("x",     "width",            MSyntax::kLong);
	syntax.addFlag("y",     "height",           MSyntax::kLong);
	syntax.addFlag("cw",    "cropWindow",       MSyntax::kLong, MSyntax::kLong, MSyntax::kLong, MSyntax::kLong);
	syntax.addFlag("def",   "deferred");
	syntax.addFlag("ndf",   "noDef");
	syntax.addFlag("pad",   "padding",          MSyntax::kLong);
	syntax.addFlag("rgo",   "ribGenOnly");
	syntax.addFlag("sfso",  "singleFrameShadowsOnly");
	syntax.addFlag("nsfs",  "noSingleFrameShadows");
	syntax.addFlag("rv",    "renderView");
	syntax.addFlag("rvl",   "renderViewlocal");
	syntax.addFlag("rvp",   "renderViewPort",  MSyntax::kLong);
	syntax.addFlag("shn",   "shotName",        MSyntax::kString);
	syntax.addFlag("shv",   "shotVersion",     MSyntax::kString);
	syntax.addFlag("lyr",   "layer",           MSyntax::kString);
	//	syntax.addFlag("lrp",   "currentLayerRifParameters",           MSyntax::kString);
	syntax.addFlag("obl",   "objectList", MSyntax::kString, MSyntax::kString, MSyntax::kString, MSyntax::kString, MSyntax::kString, MSyntax::kString);
	syntax.addFlag("oob",   "onlyObjectBlock");
	syntax.addFlag("igs",   "ignoreSurfaces");
	syntax.addFlag("no_igs","noIgnoreSurfaces");
	syntax.addFlag("igd",   "ignoreDisplacements");
	syntax.addFlag("no_igd","noIgnoreDisplacements");
	syntax.addFlag("igv",   "ignoreVolumes");
	syntax.addFlag("no_igv","noIgnoreVolumes");
	syntax.addFlag("no_ufe","noUseFrameExtension");
	syntax.addFlag("skv",   "skipVisibilityAttributes");
	syntax.addFlag("sks",   "skipShadingAttributes");
	syntax.addFlag("skr",   "skipRayTraceAttributes");

	syntax.addFlag("easp",   "exportAllShadersParams");
	syntax.addFlag("rhcn",   "ribHasCameraName");
	return syntax;
}

/**
 * Read the values from the command line and set the internal values.
 */
MStatus liqRibTranslator::liquidDoArgs( MArgList args )
{
	//CM_TRACE_FUNC("liqRibTranslator::liquidDoArgs(args)");

	MStatus status;
	MString argValue;

	LIQDEBUGPRINTF( "-> processing arguments\n" );

	// Parse the arguments and set the options.
	if( args.length() == 0 ) 
	{
		liquidMessage( "Doing nothing, no parameters given", messageError );
		return MS::kFailure;
	}
	// find the activeView for previews;
	//width        = M3dView::active3dView().portWidth();
	//height       = M3dView::active3dView().portHeight();


	//[refactor 42] begin, to liqRibTranslator::setGlobals0()
	// get the current project directory
	//MString MELCommand = "workspace -q -rd";
	//MString MELReturn;
	//MGlobal::executeCommand( MELCommand, MELReturn );
	//liqglo.liqglo_projectDir = MELReturn;
	//[refactor 42] end,

	// get the current scene name
	//liqglo.liqglo_sceneName = liquidTransGetSceneName();//omitted by yaoyansi

	// setup default animation parameters
	liqglo.frameNumbers.push_back( ( int )MAnimControl::currentTime().as( MTime::uiUnit() ) );

	// check to see if the correct project directory was found
	/*if( !fileFullyAccessible( liqglo_projectDir ) ) {
	liqglo_projectDir = m_systemTempDirectory;
	liquidMessage( "Trying to set project directory to system temp directory '" + string( liqglo_projectDir.asChar() ) + "'.", messageWarning );
	}*/
	LIQ_ADD_SLASH_IF_NEEDED( liqglo.liqglo_projectDir );
	if( !fileFullyAccessible( liqglo.liqglo_projectDir ) ) 
	{
		liquidMessage( "Cannot find project directory, '" + liqglo.liqglo_projectDir + "'. Defaulting to system temp directory!", messageWarning );
		liqglo.liqglo_projectDir = m_systemTempDirectory;
	}

	bool GL_read( false );

	for( unsigned i( 0 ); i < args.length(); i++ ) 
	{
		MString arg = args.asString( i, &status );
		MString err, err_fmt = "error in ^1s parameter";
		err.format( err_fmt, arg);
		IfMErrorMsgReturnIt(status, err );

		if((arg == "-lr") || (arg == "-launchRender"))			liqglo.launchRender = true;
		else if((arg == "-nolr") || (arg == "-noLaunchRender")) liqglo.launchRender = false;
		else if((arg == "-GL") || (arg == "-useGlobals")) 
		{
			//load up all the render global parameters!
			if( liquidInitGlobals() && !GL_read ) 
				liquidReadGlobals();
			GL_read = true;
		} 
		else if((arg == "-sel") || (arg == "-selected"))		m_renderSelected = true;
		else if((arg == "-ra") || (arg == "-readArchive"))		liqglo.m_exportReadArchive = true;
		else if((arg == "-acv") || (arg == "-allCurves"))		liqglo.liqglo_renderAllCurves = true;
		else if((arg == "-tif") || (arg == "-tiff"))			liqglo.outFormat = "tiff";
		else if((arg == "-dof") || (arg == "-dofOn"))			liqglo.doDof = true;
		else if((arg == "-bin") || (arg == "-doBinary"))		liqglo.liqglo_doBinary = true;
		else if((arg == "-sh") || (arg == "-shadows"))			liqglo.liqglo_doShadows = true;
		else if((arg == "-nsh") || (arg == "-noShadows"))		liqglo.liqglo_doShadows = false;
		else if((arg == "-zip") || (arg == "-doCompression"))	liqglo.liqglo_doCompression = true;
		else if((arg == "-cln") || (arg == "-cleanRib"))		liqglo.cleanRib = true;
		else if((arg == "-cmd") || (arg == "-createMissingDirs")) createOutputDirectories = true;
		else if((arg == "-pro") || (arg == "-progress"))		m_showProgress = true;
		else if((arg == "-mb") || (arg == "-motionBlur"))		liqglo.liqglo_doMotion = true;
		else if((arg == "-db") || (arg == "-deformationBlur"))	liqglo.liqglo_doDef = true;
		else if((arg == "-d") || (arg == "-debug"))				debugMode = 1;
		else if((arg == "-net") || (arg == "-netRender"))		liqglo.useNetRman = true;
		else if((arg == "-fsr") || (arg == "-fullShadowRib"))	liqglo.fullShadowRib = true;
		else if((arg == "-rem") || (arg == "-remote"))			liqglo.remoteRender = true;
		else if((arg == "-rs") || (arg == "-renderScript"))		useRenderScript = true;
		else if((arg == "-nrs") || (arg == "-noRenderScript"))	useRenderScript = false;
		else if((arg == "-err") || (arg == "-errHandler"))		m_errorMode = 1;
		else if((arg == "-sdb") || (arg == "-shaderDebug"))		m_shaderDebug = true;
		else if((arg == "-rmot") || (arg == "-relativeMotion"))	liqglo.liqglo_relativeMotion = true;
		else if((arg == "-rcam") || (arg == "-rotateCamera"))	liqglo.liqglo_rotateCamera = true;
		else if((arg == "-rel") || (arg == "-relativeDirs"))	liqglo.liqglo_relativeFileNames = true;
		else if((arg == "-def") || (arg == "-deferred"))		liqglo.m_deferredGen = true;
		else if((arg == "-ndf") || (arg == "-noDef"))			liqglo.m_deferredGen = false;
		else if((arg == "-rgo") || (arg == "-ribGenOnly"))		m_justRib = true;
		else if((arg == "-rv") || (arg == "-renderView"))		liqglo.m_renderView = true;
		else if((arg == "-rvl") || (arg == "-renderViewLocal")) liqglo.m_renderViewLocal = true;
		else if((arg == "-nsfs") || (arg == "-noSingleFrameShadows")) liqglo.liqglo_noSingleFrameShadows = true;
		else if((arg == "-sfso") || (arg == "-singleFrameShadowsOnly"))liqglo.liqglo_singleFrameShadowsOnly = true;
		else if((arg == "-n") || (arg == "-sequence")) 
		{
      		argValue = args.asString( ++i, &status );
			int first( argValue.asInt() );
			IfMErrorMsgReturnIt(status, err);
			argValue = args.asString( ++i, &status );
			int last( argValue.asInt() );
			IfMErrorMsgReturnIt(status, err);
			argValue = args.asString( ++i, &status );
			int step( argValue.asInt() );
			IfMErrorMsgReturnIt(status, err);
			m_animation = true;
			if( first > last ) 
				step = -abs( step );
			// Fill our vector with frames
			liqglo.frameNumbers.clear();
			for ( int frame( first ); frame <= last; frame += step ) 
				liqglo.frameNumbers.push_back( frame );
		} 
		else if((arg == "-fl") || (arg == "-frameList") ) 
		{
			argValue = args.asString( ++i, &status );
			IfMErrorMsgReturnIt(status, err);
			// fill our vector with frames
			liqglo.frameNumbers = generateFrameNumbers( std::string( argValue.asChar() ) );
			if( liqglo.frameNumbers.size() ) { 
				m_animation = true;
				//liquidMessage2(messageInfo, ">>> render frames: ");
				//for( unsigned i(0) ; i < frameNumbers.size() ; i++ )
				//  liquidMessage2(messageInfo, "%d ", frameNumbers[i] );
				//liquidMessage2(messageInfo, ".");
			}
		} 
		else if((arg == "-m") || (arg == "-mbSamples")) 
		{
			argValue = args.asString( ++i, &status );
			liqglo.liqglo_motionSamples = argValue.asInt();
			IfMErrorMsgReturnIt(status, err);
		} 
		else if((arg == "-dbs") || (arg == "-defBlock")) 
		{
			argValue = args.asString( ++i, &status );
			liqglo.m_deferredBlockSize = argValue.asInt();
			IfMErrorMsgReturnIt(status, err);
		} 
		else if((arg == "-cam") || (arg == "-camera")) 
		{
			MString parsingString = args.asString( ++i, &status );
			liqglo.renderCamera = parseString( parsingString );
			liqglo.liqglo_renderCamera = liqglo.renderCamera;
			IfMErrorMsgReturnIt(status, err);
		} 

		else if((arg == "-s") || (arg == "-samples")) 
		{
			argValue = args.asString( ++i, &status );
			liqglo.pixelSamples = argValue.asInt();
			IfMErrorMsgReturnIt(status, err);
		} 
		else if((arg == "-rnm") || (arg == "-ribName")) 
		{
			MString parsingString = args.asString( ++i, &status );;
			//Note:  -ribName is set to liqglo.liqglo_sceneName originally. 
			//       Because we replace liqglo.liqglo_sceneName with liquidTransGetSceneName(), and delete liqglo.liqglo_sceneName,
			//       we use liqglo.liqglo_ribName to store the ribName which passed by commandline parameter '-ribName'
			//  [2/17/2012 yaoyansi]
			assert(0&&"warrning: ribName is store in liqglo.liqglo_ribName instead of liqglo.liqglo_sceneName.[2/17/2012 yaoyansi]");
#if 0
			liqglo.liqglo_sceneName = parseString( parsingString );//liquidMaya r772 use this one.
#else
			liqglo.liqglo_ribName = parseString( parsingString );
#endif
			IfMErrorMsgReturnIt(status, err);
		} 
		else if((arg == "-pd") || (arg == "-projectDir")) 
		{
			MString parsingString = args.asString( ++i, &status );
			liqglo.liqglo_projectDir = parseString( parsingString, false );
			LIQ_ADD_SLASH_IF_NEEDED( liqglo.liqglo_projectDir );
#ifdef _WIN32
			int dirMode = 6; // dummy arg
			int mkdirMode = 0;
#else
			mode_t dirMode, mkdirMode;
			dirMode = R_OK|W_OK|X_OK|F_OK;
			mkdirMode = S_IRWXU|S_IRWXG|S_IRWXO;
#endif
			if( createOutputDirectories ) 
				makeFullPath( liqglo.liqglo_projectDir.asChar(), mkdirMode );
			if( !fileFullyAccessible( liqglo.liqglo_projectDir ) ) 
			{
				liquidMessage( "Cannot find or access Maya project directory; defaulting to system temp directory!", messageWarning );
				liqglo.liqglo_projectDir = m_systemTempDirectory;
			}
			IfMErrorMsgReturnIt(status, err);
		} 
		else if((arg == "-prm") || (arg == "-preFrameMel")) 
		{
			m_preFrameMel =  args.asString( ++i, &status );
			IfMErrorMsgReturnIt(status, err);
		} 
		else if((arg == "-pom") || (arg == "-postFrameMel")) 
		{
			m_postFrameMel = args.asString( ++i, &status );
			IfMErrorMsgReturnIt(status, err);
		} 
		else if((arg == "-rid") || (arg == "-ribdir")) 
		{
			MString parsingString = args.asString( ++i, &status );
			liqglo.liqglo_ribDir = parseString( parsingString, false );
			IfMErrorMsgReturnIt(status, err);
		} 
		else if((arg == "-txd") || (arg == "-texdir")) 
		{
			MString parsingString = args.asString( ++i, &status );
			liqglo.liqglo_textureDir = parseString( parsingString, false );
			IfMErrorMsgReturnIt(status, err);
		} 
		else if((arg == "-tmd") || (arg == "-tmpdir")) 
		{
			MString parsingString = args.asString( ++i, &status );
			m_tmpDir = parseString( parsingString, false );
			IfMErrorMsgReturnIt(status, err);
		} 
		else if((arg == "-pid") || (arg == "-picdir")) 
		{
			MString parsingString = args.asString( ++i, &status );
			liqglo.m_pixDir = parseString( parsingString, false );
			IfMErrorMsgReturnIt(status, err);
		} 
		else if((arg == "-pec") || (arg == "-preCommand")) 
		{
			liqglo.m_preCommand = args.asString( ++i, &status );
			IfMErrorMsgReturnIt(status, err);
		} 
		else if((arg == "-poc") || (arg == "-postJobCommand")) 
		{
			MString varVal = args.asString( ++i, &status );
			m_postJobCommand = parseString( varVal );
			IfMErrorMsgReturnIt(status, err);
		} 
		else if((arg == "-pof") || (arg == "-postFrameCommand")) 
		{
			m_postFrameCommand = args.asString( ++i, &status );
			IfMErrorMsgReturnIt(status, err);
		} 
		else if((arg == "-prf") || (arg == "-preFrameCommand")) 
		{
			m_preFrameCommand = args.asString( ++i, &status );
			IfMErrorMsgReturnIt(status, err);
		} 
		else if((arg == "-rec") || (arg == "-renderCommand")) 
		{
			m_renderCommand = args.asString( ++i, &status );
			IfMErrorMsgReturnIt(status, err);
		} 
		else if((arg == "-rgc") || (arg == "-ribgenCommand")) 
		{
			m_ribgenCommand = args.asString( ++i, &status );
			IfMErrorMsgReturnIt(status, err);
		} 
		else if((arg == "-blt") || (arg == "-blurTime")) 
		{
			argValue = args.asString( ++i, &status );
			m_blurTime = argValue.asDouble();
			IfMErrorMsgReturnIt(status, err);
		} 
		else if((arg == "-sr") || (arg == "-shadingRate")) 
		{ 
			argValue = args.asString( ++i, &status );
			liqglo.shadingRate = argValue.asDouble();
			IfMErrorMsgReturnIt(status, err);
		} 
		else if((arg == "-bs") || (arg == "-bucketSize")) 
		{
			argValue = args.asString( ++i, &status );
			liqglo.bucketSize[0] = argValue.asInt();
			IfMErrorMsgReturnIt(status, err);
			argValue = args.asString( ++i, &status );
			liqglo.bucketSize[1] = argValue.asInt();
			IfMErrorMsgReturnIt(status, err);
		} 
		else if((arg == "-pf") || (arg == "-pixelFilter")) 
		{
			argValue = args.asString( ++i, &status );
			liqglo.m_rFilter = argValue.asInt();
			IfMErrorMsgReturnIt(status, err);
			argValue = args.asString( ++i, &status );
			liqglo.m_rFilterX = argValue.asInt();
			IfMErrorMsgReturnIt(status, err);
			argValue = args.asString( ++i, &status );
			liqglo.m_rFilterY = argValue.asInt();
			IfMErrorMsgReturnIt(status, err);
		} 
		else if((arg == "-gs") || (arg == "-gridSize")) 
		{
			argValue = args.asString( ++i, &status );
			liqglo.gridSize = argValue.asInt();
			IfMErrorMsgReturnIt(status, err);
		} 
		else if((arg == "-txm") || (arg == "-texmem")) 
		{
			argValue = args.asString( ++i, &status );
			liqglo.textureMemory = argValue.asInt();
			IfMErrorMsgReturnIt(status, err);
		} 
		else if ((arg == "-es") || (arg == "-eyeSplits")) 
		{
			argValue = args.asString( ++i, &status );
			liqglo.eyeSplits = argValue.asInt();
			IfMErrorMsgReturnIt(status, err);
		} 
		else if ((arg == "-ar") || (arg == "-aspect")) 
		{
			argValue = args.asString( ++i, &status );
			liqglo.aspectRatio = argValue.asDouble();
			IfMErrorMsgReturnIt(status, err);
		} 
		else if ((arg == "-x") || (arg == "-width")) 
		{
			argValue = args.asString( ++i, &status );
			width = argValue.asInt();
			IfMErrorMsgReturnIt(status, err);
		} 
		else if ((arg == "-y") || (arg == "-height")) 
		{
			argValue = args.asString( ++i, &status );
			height = argValue.asInt();
			IfMErrorMsgReturnIt(status, err);
		} 
// 		else if((arg == "-def") || (arg == "-deferred")) {
//       		IfMErrorMsgReturnIt(status, "error in -deferred parameter");
//       		m_deferredGen = true;
//     	} 
// 		else if((arg == "-ndf") || (arg == "-noDef")) {
//       		IfMErrorMsgReturnIt(status, "error in -noDef parameter");
//       		m_deferredGen = false;
//     	} 
		else if((arg == "-pad") || (arg == "-padding")) 
		{
			argValue = args.asString( ++i, &status );
			liqglo.liqglo_outPadding = argValue.asInt();
			IfMErrorMsgReturnIt(status, err);
		} 
		else if((arg == "-rvp") || (arg == "-renderViewPort")) 
		{
			argValue = args.asString( ++i, &status );
			liqglo.m_renderViewPort = argValue.asInt();
			IfMErrorMsgReturnIt(status, err);
		} 
		else if ((arg == "-cw") || (arg == "-cropWindow")) 
		{
			argValue = args.asString( ++i, &status );
			liqglo.m_cropX1 = argValue.asDouble();
			IfMErrorMsgReturnIt(status, err);
			argValue = args.asString( ++i, &status );
			liqglo.m_cropX2 = argValue.asDouble();
			IfMErrorMsgReturnIt(status, err);
			argValue = args.asString( ++i, &status );
			liqglo.m_cropY1 = argValue.asDouble();
			IfMErrorMsgReturnIt(status, err);
			argValue = args.asString( ++i, &status );
			liqglo.m_cropY2 = argValue.asDouble();
			IfMErrorMsgReturnIt(status, err);
			if( liqglo.m_renderView ) 
				liqglo.m_renderViewCrop = true;
		}
 		else if ((arg == "-shn") || (arg == "-shotName")) 
 		{
 			liqglo.liqglo_shotName = args.asString( ++i, &status );
 			IfMErrorMsgReturnIt(status, err);
 		} 
 		else if ((arg == "-shv") || (arg == "-shotVersion")) 
 		{
 			liqglo.liqglo_shotVersion = args.asString( ++i, &status );
 			IfMErrorMsgReturnIt(status, err);
 		}
		else if((arg == "-obl") || (arg == "-objectList")) {
      		m_objectListToExport = args.asStringArray( ++i, &status );
      		m_exportSpecificList = true;
      		IfMErrorMsgReturnIt(status, err);
    	}
    	else if((arg == "-oob") || (arg == "-onlyObjectBlock")) {
      		m_exportOnlyObjectBlock = true;
    	}
		else if((arg == "-igs") || (arg == "-ignoreSurfaces")) {
      		m_ignoreSurfaces = true;
    	}
		else if((arg == "-no_igs") || (arg == "-noIgnoreSurfaces")) {
		  m_ignoreSurfaces = false;
		}
		else if((arg == "-igd") || (arg == "-ignoreDisplacements")) {
		  m_ignoreDisplacements = true;
		}
		else if((arg == "-no_igd") || (arg == "-noIgnoreDisplacements")) {
		  m_ignoreDisplacements = false;
		}
		else if((arg == "-igv") || (arg == "-ignoreVolumes")) {
		  m_ignoreVolumes = true;
		}
		else if((arg == "-no_igv") || (arg == "-noIgnoreVolumes")) {
		  m_ignoreVolumes = false;
		}
		else if((arg == "-no_ufe") || (arg == "-noUseFrameExtension")) {
		  m_useFrameExt = false;
		}
		else if((arg == "-skv") || (arg == "-skipVisibilityAttributes")) {
		  m_skipVisibilityAttributes = true;
		}
		else if((arg == "-sks") || (arg == "-skipShadingAttributes")) {
		  m_skipShadingAttributes = true;
		}
		else if((arg == "-skr") || (arg == "-skipRayTraceAttributes")) {
		  m_skipRayTraceAttributes = true;
		}
		else if((arg == "-easp") || (arg == "-exportAllShadersParams")) {
		  argValue = args.asString( ++i, &status );
		  liqglo.liqglo_exportAllShadersParams = argValue.asInt();
		  IfMErrorMsgReturnIt(status, err);
		}
		else if((arg == "-rhcn") || (arg == "-ribHasCameraName")) {
		  argValue = args.asString( ++i, &status );
		  liqglo.liqglo_beautyRibHasCameraName = argValue.asInt();
      	  IfMErrorMsgReturnIt(status, err);
		}
		else if((arg == "-sdm") || (arg == "-skipDefaultMatte")) {
		  argValue = args.asString( ++i, &status );
		  liqglo.liqglo_skipDefaultMatte = argValue.asInt();
		  IfMErrorMsgReturnIt(status, err);
		}
		else if((arg == "-ipr") || (arg == "-iprrendering")) {
			liqglo.iprRendering = 1;
			IfMErrorMsgReturnIt(status, err);
		}
		else if((arg == "-initGlobalsOnly")) {
			m_initGlobalsOnly = true;
			IfMErrorMsgReturnIt(status, err);
		}
		else {
			printf("[liqRibTranslator] undefined argument %d : '%s' \n", i, args.asString( i ).asChar());
		}
	}
	if( !m_useFrameExt )
	{
		if( m_animation )
		{
			liquidMessage( "[liqRibTranslator] useFrameExtension is false and animation was true, set animation=false", messageWarning );
		}
		m_animation = false;
	}
	liquidMessage( "Using project base path '" + liqglo.liqglo_projectDir + "'", messageInfo );
	setSearchPaths();
	return MS::kSuccess;
}

