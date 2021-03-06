 ---------------------------------------------------------------------
                          CONTENTS
 ---------------------------------------------------------------------
- License
- Features
- Build/Install/Test
- Others
- NOTES
- F.A.Q.
- How to join this project?


 ---------------------------------------------------------------------
                          License
 ---------------------------------------------------------------------
The contents of this file are subject to the Mozilla Public License Version 1.1
(the "License"); you may not use this file except in compliance with the
License. You may obtain a copy of the License at http://www.mozilla.org/MPL/

Software distributed under the License is distributed on an "AS IS" basis,
WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License for
the specific language governing rights and limitations under the License.

The Original Code is the Liquid Rendering Toolkit.
The Initial Developer of the Original Code is Colin Doncaster. Portions created
by Colin Doncaster are Copyright (C) 2002. All Rights Reserved.

Contributor(s): Dan Bethell, Berj Bannayan, Andrew Chapman, Colin Doncaster,
St閜hane Deverly, George Harker, Jamie McCarter, Ken McGaugh, Moritz Moeller,
Michael Duffy, Richard Pickler, Rob Pieke, Paul Scruby, Yuri Meshalkin,
Alf Kraus, Leon Tony Atkinson.

The RenderMan (R) Interface Procedures and Protocol are:
Copyright 1988, 1989, Pixar
All Rights Reserved

RenderMan (R) is a registered trademark of Pixar

 ---------------------------------------------------------------------
                          Features
 ---------------------------------------------------------------------
 see ./features.txt

 ---------------------------------------------------------------------
                          Build/Install/Test/AutomationTest
 ---------------------------------------------------------------------
- Development environment
   - msvc 2010(sp1)
   - Boost(1.47 or later), set BOOST_ROOT in system environment variables, e.g. BOOST_ROOT=E:/dev/boost/1_47
   - Maya2013 x64, set MAYA_PATH2012 in system environment variables, e.g. MAYA_PATH2013=C:\Program Files\Autodesk\Maya2013,
   and add C:\Program Files\Autodesk\Maya2013\bin to PATH.
   - (For 3delight renderer only) 3delight for maya.
- Build Dependence
   - aqsis
     - open liquid_\dependence\aqsis\1.6.0\build\aqsis_all.sln, set 'Win32','DebugLib_liquid' in Configuration Manager,
     - build the following projects:
        build only aqsis_core project,
	build only aqsis_math project,
	build only aqsis_ri2rib project,
	build only aqsis_ribparse project,
        build only aqsis_tex project,
	build only aqsis_util project,
	build only aqsis_riutil project,
	build only aqsis_shadervm project,
     - copy these libs from $(LiquidRoot)\dependence\aqsis\1.6.0\build\DebugLib_liquid\ to 
       $(LiquidRoot)\dependence\aqsis\1.6.0\build\DebugLib\
- Build
  - access https://github.com/maya2renderer/maya2renderer, check out the code to your local directory, say it $(LiquidRoot).
    (In the liquidDLL.mod I set $(LIQUIDHOME) to $(LiquidRoot)/2.3.3)
    The directory structure should be：
       $(LiquidRoot)\
                 +---2.3.3\
                 +---dependence\
	         ...
  - copy ER SDK to $(LiquidRoot)\dependence\elvishray\r274\
    The directory structure should be:
       $(LiquidRoot)\
                 +---2.3.3\
                 +---dependence/elvishray/r274/
                                            +-- bin/
                                                  +-- er.exe
                                                  +-- eiAPI.dll
                                                  ...
                                            +-- include/
                                            +-- lib/
                                            ...
  - build ER. 
    - When you configure cmake for ER, set CMAKE_INSTALL_PREFIX to $(LiquidRoot)\dependence\elvishray, so ER will copy *.dll to $(LiquidRoot)\dependence\elvishray\bin\$(ConfigurationName)
    - select a ConfigurationName, e.g. M2R2012Release. 
    - copy $(LiquidRoot)\2.3.3\include\liqConfig_template.h to liqConfig.h, open #define _USE_ELVISHRAY_ in liqConfig.h
    - build ER, and copy generated *.lib to $(LiquidRoot)\dependence\elvishray\bin\$(ConfigurationName)
  - build $(LiquidRoot)\2.3.3\src\elvishray\eiSHADER_maya\build\eiSHADER_maya.sln. eiSHADER_maya.dll will be generated at $(LiquidRoot)\dependence\elvishray\bin\$(ConfigurationName)
    NOTE: you'd better set the ConfigurationName same with ER project. e.g. Release.
  - copy $(LiquidRoot)\dependence\elvishray\bin\$(ConfigurationName)\*.* to $(LiquidRoot)\dependence\elvishray\bin\$(ConfigurationName)\*.*
    e.g. you can choose Release as the ConfigurationName.
  - open $(LiquidRoot)\2.3.3\include\liqConfig.h, set _USE_SHAVE_ to 1 if shave(v61 or later) is installed, or set _USE_SHAVE_ to 0 if shave isn't installed.
  - open $(LiquidRoot)\2.3.3\src\MSVC2005\liquid.sln, choose “Win32” and “M2R2012Release” in Configuration Manager，
    - (For renderman renderer only)
      - if you use PRman:
         - make sure $(RMANTREE) is set(e.g. RMANTREE=D:\Program Files\Pixar\RenderManProServer-13.5.2),
           $(RMANTREE) contains 3 sub-directories, bin\, etc\ and lib\.
         - I have not the right to use 3delight's shader header files in this project,
           so, it is your choice to put $(DELIGHT)\<version>\maya\rsl\*.h to $(LiquidRoot)\dependence\_3delight\ or not.
         - build displayDriverAqsis project, liqmaya*.dll will be generated;
         - make sure liqmaya.dll is copied to "$(RMANTREE)\etc\d_liqmaya.dll"
      - if you use 3Delight:
         - make sure $(DELIGHT) is set(e.g. DELIGHT=D:\ProgramFiles\3Delight).
         - I have not the right to use 3delight's shader header files in this project,
           so, it is your choice to put $(DELIGHT)\<version>\maya\rsl\*.h to $(LiquidRoot)\dependence\_3delight\ or not.
         - build displayDriverAqsis.vcproj(not displayDriver3delight.vcproj), liqmaya*.dll will be generated;
         - make sure liqmaya*.dll is copied to "$(DELIGHT)\displays\liqmaya.dpy"
    - build liquidDLL project；
    - build renderman or elvishray or appleseed project.

- Install
  - copy $(LIQUIDHOME)\bin\x64\M2R2013Debug\liquidDLL.mod to (My_Documents_DIR)\maya\2013-x64\modules\liquidDLL.mod
    make sure ELVISHRAY_BIN point to the ER's DLL directory which you are using.
  - open (My_Documents_DIR)\maya\2009\Maya.env, set LIQUIDHOME to your liquid directory $(LiquidRoot)/2.3.3,
     e.g.  LIQUIDHOME = E:/dev/autodesk/maya/myplugin/project/liquid_/2.3.3
  - copy $(LiquidRoot)\2.3.3\rendererDesc\liquidRenderer.xml to $(MayaRoot)\bin\rendererDesc\liquidRenderer.xml
  - (For Elvishray renderer only)
    you must copy manager.ini of Elvishray to $(MAYA_PATH2009)/bin/
     - copy $(LiquidRoot)\dependence\elvishray\bin\manager.ini to $(MAYA_PATH2009)/bin/
     - open $(MAYA_PATH2009)/bin/manager.ini, set searchpath to the directory which contain eiIMG.dll and eiSHADER.dll
	e.g. if $(MAYA_PATH2009)/bin/manager.ini doesn't has searchpath, you can append the follow line to manager.ini
	searchpath E:/dev/Autodesk/maya/myplugin/project/liquid_/dependence/elvishray/bin
  - (For Renderman renderer only)
    run $(LiquidRoot)\2.3.3\lib\shaders\compile.cmd to compile the rm shaders.

- Test 
  - open maya2009, load $(LiquidRoot)\2.3.3\test\er.ma,
  - load liquid plugin:
    Menu "Window" --> "Settings/Preferences" --> "Plug-in Manager"
    Liquid plugin would be listed in "Plug-in Manager" window if you use $(LiquidRoot)\2.3.3\bin\Maya.env,
    If liquid plugin is not listed, load $(LiquidRoot)\2.3.3\bin\Prman\win32\liquid_2009x32d.mll manually please.
  - in "Render Settings" panel
    - select Liquid renderer
    - in liquid tab：
       - set "Debug-->NewTranslator(refactoring)" checked.
       - set "Renderer-->Renderer" to elvishray
  - render.

- Automation test( for developer only )
  - cd $(LiquidRoot)\test\image_diff
  - copy mayaenv_template*.py to mayaenv.py, and add envs from Maya.env into mayaenv.py
  - copy testscene_template.py to testscene.py, and add the test scenes into testscene.py
  - run test.bat. If $(LiquidRoot)\dependence\python26\python.exe doesn't exist, it will remind you to unzip $(LiquidRoot)\dependence\python26.7z, which constains python2.6 and PIL.
     Generally, the images will be generated at %MayaProjectDirectory%\rmanpix,
     rib files will be generated at %MayaProjectDirectory%\rib,
     slo file will be generated at %MayaProjectDirectory%\generatedShader
    

 ---------------------------------------------------------------------
                            Others
 ---------------------------------------------------------------------
- link error boost::system::get_system_category() 找不到
  解决方法：在liquid项目里把\boost\1_39\libs\system\src\error_code.cpp包含进去


- liquid生成的rib文件，用renderman studio it.exe 测试
  对于liquid生成的rib脚本,把Display里的"liqmaya"改成"it"
  例如$(LiquidRoot)\2.3.3\test\render_with_rms_it\_perspShape.0010.rib里的“liqmaya”已经改为"it"。
  - 由于liquid生成的rib使用绝对路径，所以将$(LiquidRoot)\2.3.3\test\render_with_rms_it\*.*拷贝到E:\MyDocuments\maya\projects\default\rib，
  - 必须先打开it。（D:\Program Files\Pixar\RenderMan-Studio-1.0.1-Maya2008\bin\it.exe）
  - 运行test.bat


-deepShadow测试
 - 打开$(LiquidRoot)\2.3.3\test\test_deepshadow\test_deepshadow.ma
 - 菜单Liquid-》Helpers-》Convert Shading Network To RSL
 - RenderSettings面板
   - 选择Liquid渲染器
   - liquid面板里：勾选NewTranslator(refactoring)；Renderer里选择renderman；
 - 渲染


- compile $(LiquidRoot)\2.3.3\lib\shaders\*.sl
  - You must set RMS_ROOT to you RendermanStudio install directory(e.g.D:\Program Files\Pixar\RenderMan-Studio-1.0.1-Maya2008) in system enviroment variables.
  - and if you use -I option, e.g.shader -I"%RMS_ROOT%\lib\shaders\src", make sure the full path doesn't contain '.' at all.
  - run $(LiquidRoot)\2.3.3\lib\shaders\compile.cmd


- MakeTextute 测试
  - 把$(LiquidRoot)\2.3.3\test\test_rm_texture\textures\*.* 拷贝到E:\MyDocuments\maya\projects\default\rmantex下，再运行test case
  - 可行的texture路径格式
      E:/MyDocuments/maya/projects/default/rmantex/check10.tex
      E:/MyDocuments/maya/projects/default/rmantex/check11.bmp (Note: have to set "Map&Texture" to "rmantex")
      E:/MyDocuments/maya/projects/default/rmantex/a.b/check.14.bmp (Note: have to set "Map&Texture" to "rmantex/a.b")
  - 不可行的texture路径格式
      E:\MyDocuments\maya\projects\default\rmantex/check10.tex(反斜杠‘\’)
  - 测试用例 $(LiquidRoot)\2.3.3\test\test_rm_texture\*.*
  - 对于liquidSurfaceShader里的texture
    liquidMaya generates texture(*.tex) to liqglo.liqglo_textureDir
    But now, we generate texture(*.tex) to the same directory as source.
    see liqExpression::CalcValue(){...case exp_MakeTexture:...}

- rm ao测试（test/test_ao2/occlude2.ma），注意打开RenderSettings->Liquid->Rays->RayTracing->Enable
  rm里如果要提高ao的质量，除了调ao shader的参数外，还要调maxerror的值，
  比如将RenderSettings->Liquid->Rays->GlobalIllumination设置为0

- er渲染不出mesh，脚本里有mesh数据，但mesh的material名称为空，例如：
    ei_instance("pCubeShape3");
       ei_add_material("");
       ei_element("pCubeShape3_object");
       ei_motion(1);
    ei_end_instance();
  解决方法，选择该mesh，点击菜单Liquid-》Helpers-》Convert Shading Network To RSL。


- export shader graph with new code(C++)
  - select "Render Settings-->Liquid-->Frame-->Debug-->OutputShaderGraph(ER)"
    Note: This option will output the shader graph but not render the scene.
    So, if you render with renderman, it will complain:
        "Error: liquidNewShaderNode : shader is not readable >
         E:/MyDocuments/maya/projects/default/generatedShader/<YourShaderName>.slo //"
    Just ingore this error, it will disappear after you uncheck the "OutputShaderGraph(ER)" option.
  - set "Render Settings-->Liquid-->File-->Directories-->GeneratedShaders" to "generatedShader"
  - edit the shader or shader graph
  - assign the shader to a mesh
  - select the mesh
  - render. The shader will be generated at ,e.g. E:/MyDocuments/maya/projects/default/generatedShader/<YourShaderName>.er
  - test case: $(LiquidRoot)\2.3.3\test\test_shader_graph\er_rm_shader_graph.ma

- liquidDisplacement测试
  - test case: 2.3.3\test\test_rm_displacement\test_displacement.ma
  - 渲染时，如果liquidDisplacement1的效果出不来，
    需要在liquidDisplacement1的标签页里点击“Reload”按钮。
    这时“liquidDisplacement1-->RIB”标签页的参数就可以显示出来了
    再点击渲染，就可以了。
  - 未被选中的mesh的*.erapi,*.rmsg,*.sl_my是无法输出的

- ei_material(), shading group测试
  - test case:2.3.3\test\test_shadinggroup\er_rm_shadinggroup.ma
  - ei_material相当于maya里的shading group，
    surface shader，volume shader，displament shader仍使用maya里的数据，
    liqShadowShader，liqEnvironmentShader，liqPhotonShader供er使用，
    在mesh shape对应的shadinggroup标签的“ExtraAttributes”里有liqShadowShader，liqEnvironmentShader，liqPhotonShader


- batch render
  - er  test case: maya_render_er.bat, 2.3.3\test\test_er_shader\er_shader_lambert.ma
  - cmd batch render script: $(LiquidRoot)\2.3.3\test\mayabatch_template.bat


- liquidSurfaceShader parameters list
  - 见HowToUseLiquid.pdf的liquidSurfaceShader章节


- MotionBlur
  - 见motion_blur.pdf


- automation test
  - first, render you scene(test_motionblur\transform\deform.ma) manully, 
    and save the image as stander image to the sub-directory(output_img_std/) of your scene file, e.g. test_motionblur\transform\output_img_std/.
  - add your test scene in testall.py.test_all_scene()
        LIQUIDHOME="E:/dev/Autodesk/maya/myplugin/project/liquid_/2.3.3
        testFile=$(LIQUIDHOME)+"/test/test_motionblur/transform/deform.ma"
        liqRenderer=""
        MyTestOne.test_one_scene(testFile, liqRenderer)
    - if you set liqRenderer="elvishray", the test file will rendered with elvishray only,
      if you set liqRenderer="renderman", the test file will rendered with prman only,
      if you set liqRenderer="", the test file will rendered with both elvishray and prman.

  - run $(LiquidRoot)\test\image_diff\test.py, it will run the test and generate the log file _liqTestLog.htm



- press ESC to interrupt the rendering.


- *.pl 文件里shaderType可以使用shadow
  - use liqShader.shader_type_ex instead of liqShader.shader_type.
  - shader_type_ex can be set by shaderType-section in *.pl
  - shader_type_ex is set by liqGetSloInfo::shaderTypeEx, which comes from "$node.rmanShaderType"
  - add ".rmanShaderType" to liqSurfaceNode/liqDisplacementNode/liqCoShaderNode/liqLightNode/liqVolumeNode
  - set ".rmanShaderType" in rmanParams_create()
  - use ".rmanShaderType" in liqGetSloInfo::setShaderNode()-->shaderNode.findPlug("rmanShaderType",...);


- Depth of Field
  - RM 的DOF 只需在RenderSettings-->liquid-->Frame-->MotionBlur&DepthofField里勾选“Depth of Field”
  - ER 的DOF除了需要勾选RenderSettings-->liquid-->Frame-->MotionBlur&DepthofField里勾选“Depth of Field”，
    还需要（以test_er_dof\er_dof2.ma为例）：
    - 选中cameraShape1节点，在Depth of Field里勾选“Depth of Field”
    - Menu -->Liquid-->ObjectAttributes-->Create CustomShaderForERCamera,这样就在cameraShape1节点上建立了liqLensShader，liqEnvironmentShader属性
    - 建立DOF shader。
       - 新建liquidSurface2，将cameraShape1.liqLensShader连接到liquidSurface2上，
       - 设置liquidSurface2的参数
          - 设置shader=simple_dof.dll
	  - 连接cameraShape1.nearClipPlane到liquidSurface2.fplane
	  - 连接cameraShape1.fStop到liquidSurface2.fstop

- 添加shadow/Environment shader时，先选中shape节点，然后再点击Liquid->ObjectAttribute->CreateCustomShader

- 3delight shaders
  - because I use -I option to compile RM shader, e.g. shader -I"%RMS_ROOT%\lib\shaders\src", the full path can't contain '.' at all.
    I move /2.3.3/lib/shaders/_3delight/*.* to /dependence/_3delight/*.*


  ---------------------------------------------------------------------
                              NOTES
  ---------------------------------------------------------------------
- liquidSurfaceShader 有些参数没有输出到rib文件里
  注意：参数如果是默认值，就不被输出到rib文件里。
  你可以更改参数的值，看看是否仍然没有输出到rib文件里


- limit on the string parameter of the user-defined shader
  Assuming that we define a string variable, strA, in the user-defined shader.
   - if strA is used to specify a texture name(e.g. string strA="/texturepath/a.tex"),
     then prefix 'texname' must be added to the variable name(e.g. string texnamestrA="/texturepath/a.tex").
   - if strA is  NOT used to specify a texture name,
     the prefix 'texname' must NOT be added to the variable name. 
     
     In this case, if 'texname' is added to strA, e.g.string texnamestrA="teststr", maya2renderer will output 'string texnamestrA="teststr.tex"' to rib file.
     but the texture teststr.tex doesn't exist, and it would lead an error.
    see liqShader.cpp line306 for more details.
    // [2/1/2012 yaoyansi]
    // This is a limit in liquid(maya2renderer).
    // - If the attribute name starts with 'texname',(e.g. texname, texname0, texname_0, and etc.)
    //   it is a texture name or texture full path, 
    //   so we MUST append '.tex' to the plug value.
    // - If the plug is not a texture name or texture full path,
    //   DO NOT let the attribute name starts with 'texname'.
   - the string value cann't contain '|' which is assigned to global variable $gSeperator.


- *.pl 文件里matrix array没有实现


- 每次更新Maya.env后，需要相应更新liquid_\test\image_diff\testall.py里configMayaEnv()的环境变量ELVISHRAY_BIN的值
- 每次更细ER后
  - ER binary files(*.lib/*.dll/*.exe)所在的路径是否改变了，如果改变了，则需要更改：
    - eiSHADER_maya.sln里link lib的路径， post build event里的路径
    - liquid.sln里link的路径
    - liquid_\2.3.3\bin\Maya.env里ELVISHRAY_BIN的路径，并把Maya.env考到E:\MyDocuments\maya\2009\Maya.env
      同时更新liquid_\test\image_diff\testall.py里configMayaEnv()的环境变量ELVISHRAY_BIN的值
    - Maya2009\bin\manager.ini里searchpath的路径
  - 编译er，编译eiSHADER_maya.sln，编译liquid.sln


- 设置帧序列时，一定要记得把Animation选项勾上，否则只输出当前帧。


- maya_phong 里判断transparency是否为0：if ( almost_zerov( &transparency(), 0.001f ) )


- may file node
  - num_channels暂不考虑，以后判断texture file是否是单通道纹理后，参照3delight的实现再修改
  - 若干输入参数没有用到，以后参照3delight的实现再修改
  - color_texture/scalar_texture的参数dsdx, dsdy, dtdx, dtdy不知道如何设置
  - liquid里  ei_make_texture(..., ..., eiInt swrap, eiInt twrap,
	eiInt filter, eiScalar swidth, eiScalar twidth);时这几个参数如何设置

- 如果rm shader渲染不出来，请确认$(LiquidRoot)\2.3.3\lib\shaders下面的*.sl编译了(执行compile.cmd编译之)

- Bump channel in Phong shader(for er)
  I make a hack to achieve the bump effect.The following steps will deliver (bump)file.outColor to phong.normalCamera
  - create bump2d.bumpNormal
  - file.outColor --> bump2d.bumpNormal
  - set bump2d.bumpInterp=2
  - in maya_bump2d: if(bumpInterp==2) outNormal()=bumpNormal();
  todo: 
  - delete bump2d.bumpNormal
  - recover bump2d.bumpInterp


- vertex normal 
  - smooth normal, like a sphere: fnMesh.getVertexNormal(vertex i, false, normal, MSpace::kObject)
  - sharp edge, like a cube
    in this case, like a cube, a vertex has a specified normal corresponding to each adjacent polygon.
    but elvishray's only allow a vertex to be assigned only one normal.
    so I can't generate the normal list for this case.


- place2dTexture
  - repeatUV is an output plug, so it is not set in OutputHelper::addRSLVariable()
    but repeatUV is set in maya directly. So repeateUV must be set manully. see RSL::Visitor::visitPlace2dTexture()


- liquidShaderNode.color is renamed to liqcolor, and liquidShaderNode.opacity is renamed to liqopacity
  see Commit:dd662068d3b2243090a2da1a2b094356b983ea6e
  appleseed's constant surface shader has a "color" variable, which collides with liquidShaderNode.color.
  And, liquidShaderNode.color has three sub-values: colorR,colorG,colorB;
  But when liquid parse ConstantSurfaceShader.pl, it will create the attribute "color" which has sub-value : colora, colorb, colorc.

- lif 文件里 有的UI显示不正确，比如枚举变量
  lif的解析有bug，避免这个bug的一个方法是让lif文件以空行结尾
  见test_as_simple下test.lif和test_bad.lif的差异


- limitation:
  - If a plug of liquidShader is input AND output,
  - If colorR instead of color in connected.


- shader parameters in elvishray shader
  - add prefix 'o_' to output parameter name
  - add prefix 'i_' to input parameter name

  ---------------------------------------------------------------------
                              F.A.Q.
  ---------------------------------------------------------------------
- Q: $(LiquidRoot)\2.3.3\renderers\*.lg 文件是什么?
  A:renderman是一个标准，支持这个标准的渲染器有prman，aqsis，3dlight等，
    lg文件就是用来配置prman，aqsis，3dlight各自的参数的
  
  Q:Aqsis和prman在我们项目里起的作用是什么
  A:liquid里用到aqsis的ribout模块，以输出rib文件



  ---------------------------------------------------------------------
                     How to join this project ?
  ---------------------------------------------------------------------
  If you want to join this project, please let me know. 
  You can email to:
  yaoyansi2(at)yahoo.com.cn