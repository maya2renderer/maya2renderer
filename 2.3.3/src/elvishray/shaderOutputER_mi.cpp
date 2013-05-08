#include <liqConfig.h>
#ifdef _USE_ELVISHRAY_

#include "shaderOutputER.h"
//#include <liqlog.h>
#include "../common/mayacheck.h"
//#include "../shadergraph/convertShadingNetwork.h"
//#include "../shadergraph/shadermgr.h"
#include "er_log.h"
#include "er_output_mgr.h"

namespace ER
{

// @node	mr shader node name
void Visitor::visit_mib_amb_occlusion(const char* node)
{
	CM_TRACE_FUNC("Visitor::visit_mib_amb_occlusion("<<node<<")");

	OutputHelper o;
	o.beginRSL("maya_mib_amb_occlusion", node);

	o.addRSLVariable("index",	"samples",		"samples",		node);
	o.addRSLVariable("color",	"bright",		"bright",		node);
	o.addRSLVariable("color",	"dark",			"dark",			node);
	o.addRSLVariable("float",	"spread",		"spread",		node);
	o.addRSLVariable("float",	"max_distance",	"max_distance",	node);
	o.addRSLVariable("bool",	"reflective",	"reflective",	node);
	//liquidMessage2(messageWarning, "visit_mib_amb_occlusion(): outValue should be added?");
	//o.addRSLVariable("color",	"outValue",		"outValue",		node);

	o.endRSL();
}

}//namespace ER
#endif//_USE_ELVISHRAY_