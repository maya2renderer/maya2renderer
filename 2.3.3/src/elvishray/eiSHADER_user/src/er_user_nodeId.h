#ifndef _ER_USER_NODE_ID_
#define _ER_USER_NODE_ID_

#include <common/prerequest_maya.h>
#include "../../er_.h"
#include "../../er_nodeId.h"

namespace elvishray
{
	// 0x00000000 - 0x0007ffff is used for local testing of nodes
	enum UserTypeID
	{
		UTI_START				= 0x00040000,

		UTI_Checker2_NODE		= 0x00040000,
		UTI_Architectural_NODE	= 0x00040001,

		UTI_NUM,
	};
	//

	//
}//namespace elvishray
#endif//_ER_USER_NODE_ID_