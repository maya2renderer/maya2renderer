#include "eiAPI/ei.h"

//#define UAE_ESS_DADA

void spotlight_test2()
{
	//    Generated by Liquid v2.3.5 (buildtime=22:30:18.85)
	//    Scene : E:/MyDocuments/maya/projects/default/er_spotlight_one
	//    User  : yaoyansi
	//    Time  : Mon Feb 27 22:46:59 2012

	//### SCENE BEGIN ###
	eiContext *CONTEXT = ei_create_context();
	ei_context(CONTEXT);
	//ei_set_connection( &(MayaConnection::getInstance()->connection.base );
	ei_verbose( 6 );
	ei_link( "eiIMG" );
	ei_link( "eiSHADER" );
// 	ei_link( "eiSHADER_maya" );
// 	//----------------phong_shader_for_test begin---
// 	ei_shader("phong_shader_for_test");
// 	ei_shader_param_string("desc","plastic");
// 	ei_shader_param_vector("Cs",1,0.2,0.3);
// 	ei_shader_param_vector("Kd",0.7,1,1);
// 	ei_shader_param_scalar("Ks",1);
// 	ei_shader_param_scalar("roughness",0.2);
// 	ei_end_shader();
// 	ei_shader("opaque_shadow_for_test");
// 	ei_shader_param_string("desc","opaque");
// 	ei_end_shader();
// 	ei_material("phong_mtl_for_test");
// 	ei_add_surface("phong_shader_for_test");
// 	ei_add_shadow("opaque_shadow_for_test");
// 	ei_end_material();
// 	//----------------phong_shader_for_test end ---

	//############################### option #
	ei_options("perspShape_option");
	ei_contrast(0.05,0.05,0.05,0.05);
	ei_samples(0,2);
#ifdef UAE_ESS_DADA

#else
	ei_filter(4,3);
	//transform motion=0, deform motion=0
	ei_motion(0);
	ei_trace_depth(4,4,4);
	ei_displace(1);
	ei_max_displace(1);
	ei_face(3);
#endif
	ei_end_options();
	// maya settings: focal=35, aperture = 36, aspect=1.33333
	//Depth of Field on camera "|persp|perspShape" is turned off in Maya

	//############################### camera #
	ei_camera("|persp|perspShape_object");
	ei_output("E:/MyDocuments/maya/projects/default/rmanpix/er_spotlight_one.perspShape.1.elvishray-2.bmp","bmp",1);
	ei_output_variable("color",10);
	ei_end_output();
#ifdef UAE_ESS_DADA
	ei_focal(1.000000);
	ei_aperture(0.828427);
	ei_aspect(1.33333);
	ei_resolution(640,480);
	//ei_clip(0.1,1000);
#else
	ei_focal(35);
	ei_aperture(36);
	ei_aspect(1.33333);
	ei_resolution(768,576);
	ei_clip(0.1,1000);
#endif
	ei_end_camera();
	//----------------------------------
	ei_instance("|persp|perspShape");
	ei_element("|persp|perspShape_object");
#ifdef UAE_ESS_DADA
	ei_transform(
		0.965926,-0.258819,-0.000000,0.000000,
		0.117501,0.438521,0.891007, 0.000000,
		-0.230609, -0.860646, 0.453990, 0.000000,
		-73.653915, -319.819275, 185.246506, 1.000000
	);
#else
	ei_transform(0.736097,1.38778e-017,0.676876,0,   0.185872,0.961558,-0.202134,0,   -0.650855,0.274603,0.7078,0,   -7.39524,3.14342,5.02456,1);
#endif	
	ei_end_instance();
	//
	// shader(plastic,, ...)
	ei_shader("liquidSurface1");
	ei_shader_param_string( "desc","plastic");
	ei_shader_param_vector("Cs",1,0,0);
	ei_shader_param_vector("Kd",1,1,1);
	ei_shader_param_scalar("Ks",0.5);
	ei_shader_param_scalar("roughness",0.1);
	ei_shader_param_vector("specularcolor",1,1,1);
	ei_end_shader();
	// shader(opaque,, ...)
	ei_shader("liquidSurface2");
	ei_shader_param_string( "desc","opaque");
	ei_end_shader();
	// shader(plastic,, ...)
	ei_shader("liquidSurface3");
	ei_shader_param_string( "desc","plastic");
	ei_shader_param_vector("Cs",0,0,1);
	ei_shader_param_vector("Kd",1,1,1);
	ei_shader_param_scalar("Ks",0.5);
	ei_shader_param_scalar("roughness",0.1);
	ei_shader_param_vector("specularcolor",1,1,1);
	ei_end_shader();

	ei_material("liquidSurface3SG");
	ei_add_surface("liquidSurface3");
	ei_end_material();
	ei_material("liquidSurface1SG");
	ei_add_surface("liquidSurface1");
	ei_add_shadow("liquidSurface2");
	ei_end_material();

	// Renderer::exportLight("_spotLight2_spotLightShape2");

	// Renderer::exportSpotLight()
	ei_shader("|spotLight2|spotLightShape2_shader");
#ifdef UAE_ESS_DADA
	ei_shader_param_string("desc","spotlight");
	ei_shader_param_vector("lightcolor",1,1,1);
	ei_shader_param_scalar("intensity",1);
	ei_shader_param_scalar("deltaangle",0.114319);
	ei_shader_param_vector("direction",0,0,-1);
	ei_shader_param_scalar("spread",0.489565);
#else
	ei_shader_param_string("desc","spotlight");
	ei_shader_param_vector("lightcolor",1,1,1);
	ei_shader_param_scalar("intensity",1);
	ei_shader_param_scalar("deltaangle",0.00152309);
	ei_shader_param_vector("direction",0,0,-1);
	ei_shader_param_scalar("spread",0.0190323);
#endif
	ei_end_shader();
	ei_light("|spotLight2|spotLightShape2_object");
	ei_add_light("|spotLight2|spotLightShape2_shader" );
#ifdef UAE_ESS_DADA
	ei_origin( 0.000000, 0.000000, 0.000000);
#else
	ei_origin( 0.000000, 0.000000, 0.000000);
	//ei_transform(1,0,0,0,   0,1,0,0,   0,0,1,0,   0,0,0,1);
#endif
	ei_end_light();
	ei_instance("|spotLight2|spotLightShape2");
	ei_element("|spotLight2|spotLightShape2_object");
#ifdef UAE_ESS_DADA
	ei_transform(
		1.000000,0.000000,0.000000,0.000000,
		0.000000,1.000000,0.000000,0.000000,
		0.000000,0.000000,1.000000,0.000000,
		4.059041,1.106999,271.584686,1.000000
		);
#else
	ei_transform(1,0,0,0,   0,1,0,0,   0,0,-1,0,   0,0,0,1);
#endif
	ei_end_instance();

	// Renderer::exportOneGeometry_Mesh(|pCube1|pCubeShape1,0,0)

	//############################### mesh #
	ei_object("pCubeShape1_object","poly");
	{
		eiTag tag;
		//### vertex positions, fnMesh.numVertices()=8
		tag = ei_tab(EI_DATA_TYPE_VECTOR, 1024);
		//tag=220
		ei_pos_list(tag);
		ei_tab_add_vector(-0.5,-0.5,0.5);
		ei_tab_add_vector(0.5,-0.5,0.5);
		ei_tab_add_vector(-0.5,0.5,0.5);
		ei_tab_add_vector(0.5,0.5,0.5);
		ei_tab_add_vector(-0.5,0.5,-0.5);
		ei_tab_add_vector(0.5,0.5,-0.5);
		ei_tab_add_vector(-0.5,-0.5,-0.5);
		ei_tab_add_vector(0.5,-0.5,-0.5);
		ei_end_tab();
		//### UV, size=14
		tag = eiNULL_TAG;
		ei_declare("u",2,5, &tag);
		tag = ei_tab(EI_DATA_TYPE_SCALAR, 1024);
		//tag=224
		ei_variable("u", &tag);
		ei_tab_add_scalar(0.375);
		ei_tab_add_scalar(0.625);
		ei_tab_add_scalar(0.375);
		ei_tab_add_scalar(0.625);
		ei_tab_add_scalar(0.375);
		ei_tab_add_scalar(0.625);
		ei_tab_add_scalar(0.375);
		ei_tab_add_scalar(0.625);
		ei_tab_add_scalar(0.375);
		ei_tab_add_scalar(0.625);
		ei_tab_add_scalar(0.875);
		ei_tab_add_scalar(0.875);
		ei_tab_add_scalar(0.125);
		ei_tab_add_scalar(0.125);
		ei_end_tab();
		tag = eiNULL_TAG;
		ei_declare("v",2,5, &tag);
		tag = ei_tab(EI_DATA_TYPE_SCALAR, 1024);
		//tag=226
		ei_variable("v", &tag);
		ei_tab_add_scalar(0);
		ei_tab_add_scalar(0);
		ei_tab_add_scalar(0.25);
		ei_tab_add_scalar(0.25);
		ei_tab_add_scalar(0.5);
		ei_tab_add_scalar(0.5);
		ei_tab_add_scalar(0.75);
		ei_tab_add_scalar(0.75);
		ei_tab_add_scalar(1);
		ei_tab_add_scalar(1);
		ei_tab_add_scalar(0);
		ei_tab_add_scalar(0.25);
		ei_tab_add_scalar(0);
		ei_tab_add_scalar(0.25);
		ei_end_tab();
		//### triangles, size=[2, 2, 2, 2, 2, 2]
		tag = ei_tab(EI_DATA_TYPE_INDEX, 1024);
		//tag=228
		ei_triangle_list(tag);
		ei_tab_add_index(0);
		ei_tab_add_index(1);
		ei_tab_add_index(2);
		ei_tab_add_index(2);
		ei_tab_add_index(1);
		ei_tab_add_index(3);
		ei_tab_add_index(2);
		ei_tab_add_index(3);
		ei_tab_add_index(4);
		ei_tab_add_index(4);
		ei_tab_add_index(3);
		ei_tab_add_index(5);
		ei_tab_add_index(4);
		ei_tab_add_index(5);
		ei_tab_add_index(6);
		ei_tab_add_index(6);
		ei_tab_add_index(5);
		ei_tab_add_index(7);
		ei_tab_add_index(6);
		ei_tab_add_index(7);
		ei_tab_add_index(0);
		ei_tab_add_index(0);
		ei_tab_add_index(7);
		ei_tab_add_index(1);
		ei_tab_add_index(1);
		ei_tab_add_index(7);
		ei_tab_add_index(3);
		ei_tab_add_index(3);
		ei_tab_add_index(7);
		ei_tab_add_index(5);
		ei_tab_add_index(6);
		ei_tab_add_index(0);
		ei_tab_add_index(4);
		ei_tab_add_index(4);
		ei_tab_add_index(0);
		ei_tab_add_index(2);
		ei_end_tab();
	}//pCubeShape1_object
	ei_end_object();
	//--------------------------
	ei_instance("pCubeShape1");
	ei_add_material("liquidSurface1SG");
	ei_element("pCubeShape1_object");
	ei_transform(0.767864,0,-0.502506,0,   0,0.917675,0,0,   0.502506,0,0.767864,0,   0.0691485,0.091951,-2.25972,1);
	//ribNode->doDef=205, ribNode->doMotion=205
	ei_motion(1);
	ei_end_instance();
	//

	// Renderer::exportOneGeometry_Mesh(|pPlane1|pPlaneShape1,0,0)

	//############################### mesh #
	ei_object("pPlaneShape1_object","poly");
	{
		eiTag tag;
		//### vertex positions, fnMesh.numVertices()=4
		tag = ei_tab(EI_DATA_TYPE_VECTOR, 1024);
		//tag=233
		ei_pos_list(tag);
#ifdef UAE_ESS_DADA
ei_tab_add_vector(-122.330475,-116.084732,0.000000);
ei_tab_add_vector(-61.165237,-116.084732,0.000000);
ei_tab_add_vector(0.000000,-116.084732,0.000000);
ei_tab_add_vector(61.165237,-116.084732,0.000000);
ei_tab_add_vector(122.330475,-116.084732,0.000000);
ei_tab_add_vector(-122.330475,-58.042366,0.000000);
ei_tab_add_vector(-61.165237,-58.042366,0.000000);
ei_tab_add_vector(0.000000,-58.042366,0.000000);
ei_tab_add_vector(61.165237,-58.042366,0.000000);
ei_tab_add_vector(122.330475,-58.042366,0.000000);
ei_tab_add_vector(-122.330475,0.000000,0.000000);
ei_tab_add_vector(-61.165237,0.000000,0.000000);
ei_tab_add_vector(0.000000,0.000000,0.000000);
ei_tab_add_vector(61.165237,0.000000,0.000000);
ei_tab_add_vector(122.330475,0.000000,0.000000);
ei_tab_add_vector(-122.330475,58.042366,0.000000);
ei_tab_add_vector(-61.165237,58.042366,0.000000);
ei_tab_add_vector(0.000000,58.042366,0.000000);
ei_tab_add_vector(61.165237,58.042366,0.000000);
ei_tab_add_vector(122.330475,58.042366,0.000000);
ei_tab_add_vector(-122.330475,116.084732,0.000000);
ei_tab_add_vector(-61.165237,116.084732,0.000000);
ei_tab_add_vector(0.000000,116.084732,0.000000);
ei_tab_add_vector(61.165237,116.084732,0.000000);
ei_tab_add_vector(122.330475,116.084732,0.000000);
#else
		ei_tab_add_vector(-4.76676,-1.12863e-015,5.08292);
		ei_tab_add_vector(4.76676,-1.12863e-015,5.08292);
		ei_tab_add_vector(-4.76676,1.12863e-015,-5.08292);
		ei_tab_add_vector(4.76676,1.12863e-015,-5.08292);
#endif
		ei_end_tab();
		//### N
		tag = eiNULL_TAG;
		ei_declare("N",2,5, &tag);
		tag = ei_tab(EI_DATA_TYPE_VECTOR, 1024);
		//tag=235
		ei_variable("N", &tag);
#ifdef UAE_ESS_DADA
		ei_tab_add_vector(0.000000, 0.000000, 1.000000);
		ei_tab_add_vector(0.000000, 0.000000, 1.000000);
		ei_tab_add_vector(0.000000, 0.000000, 1.000000);
		ei_tab_add_vector(0.000000, 0.000000, 1.000000);
		ei_tab_add_vector(0.000000, 0.000000, 1.000000);
		ei_tab_add_vector(0.000000, 0.000000, 1.000000);
		ei_tab_add_vector(0.000000, 0.000000, 1.000000);
		ei_tab_add_vector(0.000000, 0.000000, 1.000000);
		ei_tab_add_vector(0.000000, 0.000000, 1.000000);
		ei_tab_add_vector(0.000000, 0.000000, 1.000000);
		ei_tab_add_vector(0.000000, 0.000000, 1.000000);
		ei_tab_add_vector(0.000000, 0.000000, 1.000000);
		ei_tab_add_vector(0.000000, 0.000000, 1.000000);
		ei_tab_add_vector(0.000000, 0.000000, 1.000000);
		ei_tab_add_vector(0.000000, 0.000000, 1.000000);
		ei_tab_add_vector(0.000000, 0.000000, 1.000000);
		ei_tab_add_vector(0.000000, 0.000000, 1.000000);
		ei_tab_add_vector(0.000000, 0.000000, 1.000000);
		ei_tab_add_vector(0.000000, 0.000000, 1.000000);
		ei_tab_add_vector(0.000000, 0.000000, 1.000000);
		ei_tab_add_vector(0.000000, 0.000000, 1.000000);
		ei_tab_add_vector(0.000000, 0.000000, 1.000000);
		ei_tab_add_vector(0.000000, 0.000000, 1.000000);
		ei_tab_add_vector(0.000000, 0.000000, 1.000000);
		ei_tab_add_vector(0.000000, 0.000000, 1.000000);
#else
		ei_tab_add_vector(0,1,2.22045e-016);
		ei_tab_add_vector(0,1,2.22045e-016);
		ei_tab_add_vector(0,1,2.22045e-016);
		ei_tab_add_vector(0,1,2.22045e-016);
#endif
		ei_end_tab();

#ifdef UAE_ESS_DADA

#else		//### UV, size=4
		tag = eiNULL_TAG;
		ei_declare("u",2,5, &tag);
		tag = ei_tab(EI_DATA_TYPE_SCALAR, 1024);
		//tag=237
		ei_variable("u", &tag);
		ei_tab_add_scalar(0);
		ei_tab_add_scalar(0.937799);
		ei_tab_add_scalar(0);
		ei_tab_add_scalar(0.937799);
		ei_end_tab();
		tag = eiNULL_TAG;
		ei_declare("v",2,5, &tag);
		tag = ei_tab(EI_DATA_TYPE_SCALAR, 1024);
		//tag=239
		ei_variable("v", &tag);
		ei_tab_add_scalar(0);
		ei_tab_add_scalar(0);
		ei_tab_add_scalar(1);
		ei_tab_add_scalar(1);
		ei_end_tab();
#endif
		//### triangles, size=[2]
		tag = ei_tab(EI_DATA_TYPE_INDEX, 1024);
		//tag=241
		ei_triangle_list(tag);
#ifdef UAE_ESS_DADA
			ei_tab_add_index(5);ei_tab_add_index(0);ei_tab_add_index(6);
			ei_tab_add_index(1);ei_tab_add_index(6);ei_tab_add_index(0);
			ei_tab_add_index(6);ei_tab_add_index(1);ei_tab_add_index(7);
			ei_tab_add_index(2);ei_tab_add_index(7);ei_tab_add_index(1);
			ei_tab_add_index(7);ei_tab_add_index(2);ei_tab_add_index(8);
			ei_tab_add_index(3);ei_tab_add_index(8);ei_tab_add_index(2);
			ei_tab_add_index(8);ei_tab_add_index(3);ei_tab_add_index(9);
			ei_tab_add_index(4);ei_tab_add_index(9);ei_tab_add_index(3);
			ei_tab_add_index(10);ei_tab_add_index(5);ei_tab_add_index(11);
			ei_tab_add_index(6);ei_tab_add_index(11);ei_tab_add_index(5);
			ei_tab_add_index(11);ei_tab_add_index(6);ei_tab_add_index(12);
			ei_tab_add_index(7);ei_tab_add_index(12);ei_tab_add_index(6);
			ei_tab_add_index(12);ei_tab_add_index(7);ei_tab_add_index(13);
			ei_tab_add_index(8);ei_tab_add_index(13);ei_tab_add_index(7);
			ei_tab_add_index(13);ei_tab_add_index(8);ei_tab_add_index(14);
			ei_tab_add_index(9);ei_tab_add_index(14);ei_tab_add_index(8);
			ei_tab_add_index(15);ei_tab_add_index(10);ei_tab_add_index(16);
			ei_tab_add_index(11);ei_tab_add_index(16);ei_tab_add_index(10);
			ei_tab_add_index(16);ei_tab_add_index(11);ei_tab_add_index(17);
			ei_tab_add_index(12);ei_tab_add_index(17);ei_tab_add_index(11);
			ei_tab_add_index(17);ei_tab_add_index(12);ei_tab_add_index(18);
			ei_tab_add_index(13);ei_tab_add_index(18);ei_tab_add_index(12);
			ei_tab_add_index(18);ei_tab_add_index(13);ei_tab_add_index(19);
			ei_tab_add_index(14);ei_tab_add_index(19);ei_tab_add_index(13);
			ei_tab_add_index(20);ei_tab_add_index(15);ei_tab_add_index(21);
			ei_tab_add_index(16);ei_tab_add_index(21);ei_tab_add_index(15);
			ei_tab_add_index(21);ei_tab_add_index(16);ei_tab_add_index(22);
			ei_tab_add_index(17);ei_tab_add_index(22);ei_tab_add_index(16);
			ei_tab_add_index(22);ei_tab_add_index(17);ei_tab_add_index(23);
			ei_tab_add_index(18);ei_tab_add_index(23);ei_tab_add_index(17);
			ei_tab_add_index(23);ei_tab_add_index(18);ei_tab_add_index(24);
			ei_tab_add_index(19);ei_tab_add_index(24);ei_tab_add_index(18);
#else	
		ei_tab_add_index(0);
		ei_tab_add_index(1);
		ei_tab_add_index(2);
		ei_tab_add_index(2);
		ei_tab_add_index(1);
		ei_tab_add_index(3);
#endif
		ei_end_tab();
	}//pPlaneShape1_object
	ei_end_object();
	//--------------------------
	ei_instance("pPlaneShape1");
	ei_add_material("liquidSurface3SG");
	ei_element("pPlaneShape1_object");
#ifdef UAE_ESS_DADA
	ei_transform(
		1.000000,0.000000,0.000000,0.000000,
		0.000000,1.000000,0.000000,0.000000,
		0.000000,0.000000,1.000000,0.000000,
		5.742889,6.604416,0.000000,1.000000
	);
#else	
	ei_transform(1,0,0,0,   0,1,0,0,   0,0,1,0,   0.747431,-0.565344,-3.9602,1);
#endif
	//ribNode->doDef=205, ribNode->doMotion=205
	ei_motion(1);
	ei_end_instance();
	//

	//Renderer::worldEpilogue()
	ei_instgroup("perspShape");
	//camera
	ei_add_instance("|persp|perspShape");
	//lightlinks and meshes
	ei_add_instance("|spotLight2|spotLightShape2");
	//ei_add_instance("pCubeShape1");
	//lightlinks and meshes
	//ei_add_instance("|spotLight2|spotLightShape2");
	ei_add_instance("pPlaneShape1");
	ei_end_instgroup( );
	ei_render("perspShape", "|persp|perspShape", "perspShape_option");
	ei_delete_context(CONTEXT);

}