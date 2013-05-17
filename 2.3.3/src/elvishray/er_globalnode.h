#ifndef _ER_GlobalsNode_H_
#define _ER_GlobalsNode_H_

#include "../common/prerequest_maya.h"

namespace elvishray
{
	class GlobalNode : public MPxNode
	{
	  public:
		GlobalNode();
		virtual ~GlobalNode();

		static  void *    creator();
		static  MStatus   initialize();

		static  const MTypeId   typeId;
		static  const MString   typeName;
	private:
		//dev
		static MObject aoutput_call;
		static MObject aoutput_esa;
		static MObject aoutput_ess;
		//verose&link
		static MObject averbose;
		static MObject alink_eiIMG;
		static MObject alink_eiSHADER;
		static MObject alink_eiSHADER_maya;
		//options
		static MObject acontrast;
		static MObject asamples;
		static MObject afilterType;
		static MObject afilterSize;
		//motion
		//trace_depth
		static MObject atrace_depth_transp;
		static MObject atrace_depth_glossy_reflect;
		static MObject atrace_depth_diffuse_reflect;
		static MObject atrace_depth_glossy_refract;
		static MObject atrace_depth_diffuse_refract;
		static MObject atrace_depth_sum;

		static MObject adisplace;
		static MObject amax_displace;
		static MObject aface;
		//approx
		static MObject aapprox_method;
		static MObject aapprox_any;
		static MObject aapprox_view_dep;
		static MObject aapprox_args;
		static MObject aapprox_sharp;
		static MObject aapprox_min_subdiv;
		static MObject aapprox_max_subdiv;
		static MObject aapprox_max_grid_size;
		static MObject aapprox_motion_factor;

	private:
		GlobalNode(const GlobalNode&);
		GlobalNode& operator=(const GlobalNode&);
	};

}//namespace elvishray



#endif//_ER_GlobalsNode_H_
