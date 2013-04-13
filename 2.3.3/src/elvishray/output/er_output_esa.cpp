#include <liqConfig.h>
#ifdef _USE_ELVISHRAY_
#include "er_output_esa.h"
#include <liqlog.h>

namespace elvishray
{
	OutputESA::OutputESA(const std::string &filefullpath)
		:OutputBase()
	{
		const std::string logFileName(filefullpath+".esa");
		m_outputfile.open(logFileName.c_str(), std::ios_base::out);
		if( !m_outputfile.is_open() )
		{
			liquidMessage2(messageError,"can't open file: %s.\n", logFileName.c_str() );
		}
	}
	OutputESA::~OutputESA()
	{
		m_outputfile.close();
	}
	//----------------------------------------------------
	// ER API interfaces
	//----------------------------------------------------
	void OutputESA::ei_context()
	{
		m_outputfile<<"ei_context();"<<std::endl;
	}
	void OutputESA::ei_end_context()
	{
		m_outputfile<<"ei_end_context();"<<std::endl;
	}
}//namespace elvishray
#endif//_USE_ELVISHRAY_