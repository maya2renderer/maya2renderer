#include <liqConfig.h>
#ifdef _USE_ELVISHRAY_
#include "er_output_ess.h"
#include <liqlog.h>

namespace elvishray
{
	OutputESS::OutputESS(const std::string &filefullpath)
		:OutputBase()
	{
		const std::string logFileName(filefullpath+".ess");
		m_outputfile.open(logFileName.c_str(), std::ios_base::out);
		if( !m_outputfile.is_open() )
		{
			liquidMessage2(messageError,"can't open file: %s.\n", logFileName.c_str() );
		}
	}
	OutputESS::~OutputESS()
	{
		m_outputfile.close();
	}
	//----------------------------------------------------
	// ER API interfaces
	//----------------------------------------------------
	void OutputESS::ei_context()
	{
		m_outputfile<<"//context"<<std::endl;
	}
	void OutputESS::ei_end_context()
	{
		m_outputfile<<"//end context"<<std::endl;
	}

}//namespace elvishray
#endif//_USE_ELVISHRAY_