
#include <liqlog.h>
#include "renderermgr.h"

LIQUID_EXPORT char gLogBuffer[LOG_BUFFER_LEN];

void _logFunctionCall(const char* log)
{
	if(liqglo.m_logFunctionCall)
	{
		printf("CALL:%s\n", log );
		if(liqglo.m_logMsgFlush)
		{
			_flushall();
		}
	}
}
void _liqRIBMsg(const char* msg)
{
	//RiArchiveRecord( RI_COMMENT, "\t\t\t\t[DEBUG] %s", msg );
	liquid::RendererMgr::getInstancePtr()->getRenderer()->logFrame(msg);
}