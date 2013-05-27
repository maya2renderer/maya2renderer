#ifndef _ER_HELPER_H_
#define _ER_HELPER_H_
#include "../common/prerequest_maya.h"

namespace elvishray
{	
	//MString getGroupName(const MString& objname);

	//If $nodename.$plugname is connected from other plug, return 1; else return 0;
	int isPlugConnectedIn(const MString &nodename, const MString &plugname);

	int isBumpMapConnected(const char* nodename);
	//
	MString getTestShaderName();
	MString getTestMaterialName();
	//
	MString convertMayaPlugNameToERShaderParameterName(const MString& attr);
}

#endif//_ER_HELPER_H_