
#include <ri_interface.h>

#ifdef RIBLIB_AQSIS


#pragma comment(lib,"E:/dev/autodesk/maya/myplugin/project/liquid_/dependence/aqsis/1.6.0/build/DebugLib/aqsis_ri2rib.lib")//
#pragma comment(lib,"E:/dev/autodesk/maya/myplugin/project/liquid_/dependence/aqsis/1.6.0/build/DebugLib/aqsis_core.lib")
#pragma comment(lib,"E:/dev/autodesk/maya/myplugin/project/liquid_/dependence/aqsis/1.6.0/build/DebugLib/aqsis_math.lib")

#pragma comment(lib,"E:/dev/autodesk/maya/myplugin/project/liquid_/dependence/aqsis/1.6.0/build/DebugLib/aqsis_ribparse.lib")
#pragma comment(lib,"E:/dev/autodesk/maya/myplugin/project/liquid_/dependence/aqsis/1.6.0/build/DebugLib/aqsis_riutil.lib")//
#pragma comment(lib,"E:/dev/autodesk/maya/myplugin/project/liquid_/dependence/aqsis/1.6.0/build/DebugLib/aqsis_shadervm.lib")
#pragma comment(lib,"E:/dev/autodesk/maya/myplugin/project/liquid_/dependence/aqsis/1.6.0/build/DebugLib/aqsis_tex.lib")
#pragma comment(lib,"E:/dev/autodesk/maya/myplugin/project/liquid_/dependence/aqsis/1.6.0/build/DebugLib/aqsis_util.lib")

//pre-build libtiff.lib
//#pragma comment(lib,"E:/dev/tools/libtiff/3.8.2/lib/libtiff.lib")
//we build libtiff.lib from source code
#pragma comment(lib,"E:/dev/Autodesk/maya/myplugin/project/liquid_/dependence/libtiff/3.8.2/src/tiff/3.8.2/tiff-3.8.2-src/libtiff/libtiff.lib")

//#elif defined()
#else 
#	pragma comment(lib,"../../bin/win32lib/rilib_d.lib")
#endif