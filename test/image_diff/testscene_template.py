import os
import testone_by_mayapy as MyTestOne


def test_all_scene():
    LIQUID_ROOT= os.environ["LIQUID_ROOT"]
    '''
    testFile=LIQUID_ROOT+"/2.3.3/test/test_motionblur/transform/deform.ma"
    MyTestOne.test_one_scene(testFile, "renderman")
    MyTestOne.test_one_scene(testFile, "elvichray")
    MyTestOne.test_one_scene(testFile, "appleseed")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_motionblur/transform/transform.ma"
    MyTestOne.test_one_scene(testFile, "renderman")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_rm_texture/check11_tif_3delight.ma"
    MyTestOne.test_one_scene(testFile, "renderman")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_rm_texture/check11_jpg_3delight.ma"
    MyTestOne.test_one_scene(testFile, "renderman")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_rm_texture/check12_bmp.ma"
    MyTestOne.test_one_scene(testFile, "renderman")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_rm_texture/check12_bmp_3delight.ma"
    MyTestOne.test_one_scene(testFile, "renderman")

    #testFile=LIQUID_ROOT+"/2.3.3/test/test_shader_pl/test_shader_pl.ma"
    #MyTestOne.test_one_scene(testFile, "elvishray")
    testFile=LIQUID_ROOT+"/2.3.3/test/test_shader_pl/test_shader_pl_connection.ma"
    MyTestOne.test_one_scene(testFile, "renderman")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_shader_pl/test_type_3delight.ma"
    MyTestOne.test_one_scene(testFile, "renderman")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_shader_pl/test_type_array_3delight.ma"
    MyTestOne.test_one_scene(testFile, "renderman")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_shader_pl/test_type_array.ma"
    MyTestOne.test_one_scene(testFile, "renderman")

    #[Warning] test_displace_pl.ma lead mayabatch crash!
    #testFile=LIQUID_ROOT+"/2.3.3/test/test_shader_pl/test_displace_pl.ma"
    #MyTestOne.test_one_scene(testFile, "elvishray")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_shader_graph/er_rm_shader_graph.ma"
    MyTestOne.test_one_scene(testFile, "renderman")
    testFile=LIQUID_ROOT+"/2.3.3/test/test_shader_graph/er_rm_shader_graph_phong.ma"
    MyTestOne.test_one_scene(testFile, "renderman")
    #testFile=LIQUID_ROOT+"/2.3.3/test/test_shader_graph/er_rm_shader_graph_phong_transparent.ma"
    #MyTestOne.test_one_scene(testFile, "elvishray")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_er_shader/three_boxes.ma"
    MyTestOne.test_one_scene(testFile, "renderman")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_er_shader/lambert_transparent.ma"
    MyTestOne.test_one_scene(testFile, "renderman")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_er_light/er_pointlight.ma"
    MyTestOne.test_one_scene(testFile, "elvishray")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_er_light/er_spotlight.ma"
    MyTestOne.test_one_scene(testFile, "elvishray")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_er_light/er_directlight.ma"
    MyTestOne.test_one_scene(testFile, "elvishray")
    
    testFile=LIQUID_ROOT+"/2.3.3/test/test_er_dof/er_dof2.ma"
    MyTestOne.test_one_scene(testFile, "elvishray")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_er_dof/rm_dof2.ma"
    MyTestOne.test_one_scene(testFile, "renderman")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_er_env/er_env_simple_env.ma"
    MyTestOne.test_one_scene(testFile, "elvishray")
    testFile=LIQUID_ROOT+"/2.3.3/test/test_er_env/er_env_physicalsky.ma"
    MyTestOne.test_one_scene(testFile, "elvishray")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_rm_displacement/test_displacement.ma"
    MyTestOne.test_one_scene(testFile, "renderman")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_rm_light/rm_spotlight_delight.ma"
    MyTestOne.test_one_scene(testFile, "renderman")
    testFile=LIQUID_ROOT+"/2.3.3/test/test_rm_light/rm_directlight_delight.ma"
    MyTestOne.test_one_scene(testFile, "renderman")

    #testFile=LIQUID_ROOT+"/2.3.3/test/hair/test_shaveHair(shave_v61)_er.ma"
    #MyTestOne.test_one_scene(testFile, "elvishray")
    #testFile=LIQUID_ROOT+"/2.3.3/test/hair/test_shaveHair(shave_v61)_rm.ma"
    #MyTestOne.test_one_scene(testFile, "renderman")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_pfxhair/test_pfxHair_onehair.ma"
    MyTestOne.test_one_scene(testFile, "renderman")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_pfxhair/test_pfxHair_onehair.ma"
    MyTestOne.test_one_scene(testFile, "elvishray")

    #animation
    testFile=LIQUID_ROOT+"/2.3.3/test/test_animation/checker_anim.ma"
    MyTestOne.test_one_scene(testFile, "renderman")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_animation/er_anim.ma"
    MyTestOne.test_one_scene(testFile, "elvishray")

    #testFile=LIQUID_ROOT+"/2.3.3/test/test_golbalnode/test_simple.ma"
    #MyTestOne.test_one_scene(testFile, "elvishray")
    #MyTestOne.test_one_scene(testFile, "renderman")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_subd/test_subdiv.ma"
    MyTestOne.test_one_scene(testFile, "renderman")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_subd/test_subdiv_tex.ma"
    MyTestOne.test_one_scene(testFile, "renderman")

    #MyTestOne.test_one_scene("D:/tmp/maya_test/Trex/scenes/TrexAnimation_er.ma", "elvishray")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_er_vertex_normal/er_vertex_normal.ma"
    MyTestOne.test_one_scene(testFile, "elvishray")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_er_volume/er_volume.ma"
    MyTestOne.test_one_scene(testFile, "elvishray")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_deepshadow/test_deepshadow_3delight.ma"
    MyTestOne.test_one_scene(testFile, "renderman")
 
    testFile=LIQUID_ROOT+"/2.3.3/test/test_mib_ao/mib_amb_occlusion.ma"
    MyTestOne.test_one_scene(testFile, "renderman")

    #testFile=LIQUID_ROOT+"/test/animation_test/Trex/Trex/scenes/TrexAnimation_liq_anim.ma"
    #MyTestOne.test_one_scene(testFile, "elvishray")
    #testFile=LIQUID_ROOT+"/test/animation_test/Trex/Trex/scenes/TrexAnimation_liq_f357_tri_lambert.ma"
    #MyTestOne.test_one_scene(testFile, "renderman")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_multiple_shapes/test_multiple_shapes_simple.ma"
    MyTestOne.test_one_scene(testFile, "renderman")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_multiple_shapes/test_multiple_shapes.ma"
    MyTestOne.test_one_scene(testFile, "renderman")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_multiple_shapes/test_multiple_shapes_mb.ma"
    MyTestOne.test_one_scene(testFile, "renderman")

    testFile=LIQUID_ROOT+"/test/animation_test/HappyWalk/HappyWalk_liq_simple.ma"
    MyTestOne.test_one_scene(testFile, "renderman")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_lightlink/test_lightlink.ma"
    MyTestOne.test_one_scene(testFile, "renderman")
 
    testFile=LIQUID_ROOT+"/test/animation_test/MoxMotionMeetsFBIK/MoxMotionMeetsFBIK/scenes/texture_anim2.ma"
    MyTestOne.test_one_scene(testFile, "renderman")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_particle/ParticleColorChangeOnCollision.ma"
    MyTestOne.test_one_scene(testFile, "renderman")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_particle/particleColorChangeOnCollisionMethod1.ma"
    MyTestOne.test_one_scene(testFile, "renderman")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_particle/particle2.ma"
    MyTestOne.test_one_scene(testFile, "renderman")
  
    testFile=LIQUID_ROOT+"/2.3.3/test/test_particle/TextureBaseParticleRamp.ma"
    MyTestOne.test_one_scene(testFile, "renderman")

    #-----------------------------------------
    testFile=LIQUID_ROOT+"/2.3.3/test/test_shader_graph/er_rm_shader_graph_phong_simple.ma"
    MyTestOne.test_one_scene(testFile, "renderman")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_aov/er_aov.ma/er_aov.ma"
    MyTestOne.test_one_scene(testFile, "elvishray")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_aov/test_aov_3delight_params.ma/test_aov_3delight_params.ma"
    MyTestOne.test_one_scene(testFile, "renderman")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_procedural/test_procedural.ma"
    MyTestOne.test_one_scene(testFile, "elvishray")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_er_shader/phong_reflect.ma"
    MyTestOne.test_one_scene(testFile, "elvishray")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_er_shader/architectural.ma"
    MyTestOne.test_one_scene(testFile, "elvishray")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_er_shader/phong.ma"
    MyTestOne.test_one_scene(testFile, "elvishray")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_er_shader/er_displace.ma"
    MyTestOne.test_one_scene(testFile, "elvishray")

    #testFile=LIQUID_ROOT+"/2.3.3/test/test_er_light/er_liquidshader_skylight.ma"
    #MyTestOne.test_one_scene(testFile, "elvishray")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_er_light/er_liquidshader_spherelight.ma"
    MyTestOne.test_one_scene(testFile, "elvishray")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_er_light/er_liquidshader_quadlight.ma"
    MyTestOne.test_one_scene(testFile, "elvishray")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_er_light/er_lightshader.ma"
    MyTestOne.test_one_scene(testFile, "elvishray")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_rm_light/rm_liquidShader.ma"
    MyTestOne.test_one_scene(testFile, "renderman")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_er_light/er_volumelight.ma"
    MyTestOne.test_one_scene(testFile, "elvishray")

    #testFile=LIQUID_ROOT+"/2.3.3/test/test_er_light/er_ambientlight.ma"
    #MyTestOne.test_one_scene(testFile, "elvishray")

    testFile=LIQUID_ROOT+"/2.3.3/test/test_er_light/er_quardlight.ma"
    MyTestOne.test_one_scene(testFile, "elvishray")

    testFile=LIQUID_ROOT+"/test/unittest/er/light/quardlight/er_quardlight.ma"
    MyTestOne.test_one_scene(testFile, "elvishray")
    '''    





