//Maya ASCII 2012 scene
//Name: test_liqShaderNode_surface_as_brdfmix2.ma
//Last modified: Sat, Aug 25, 2012 02:14:26 PM
//Codeset: 936
requires maya "2012";
requires "liquid_2012x32d" "2.3.5 (buildtime=13:45:36.17)";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2012";
fileInfo "version" "2012";
fileInfo "cutIdentifier" "001200000000-796618";
fileInfo "osv" "Microsoft Windows XP Professional Service Pack 3 (Build 2600)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -18.03309185415041 68.418165074128311 0.94916282255403317 ;
	setAttr ".r" -type "double3" -84.338352729604594 5.40000000000013 3.9934162746107558e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 67.461346234446566;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pPlane1";
	setAttr ".t" -type "double3" 1.8617072439878957 0 -1.8172749423550822 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  4.3902531 0 0.61210227 6.2210708 
		0 0.61210227 4.3902531 0 1.9511285 6.2210708 0 1.9511285;
createNode transform -n "pointLight1";
	setAttr ".t" -type "double3" 0.42541837234943092 5.8058997326862505 0 ;
createNode pointLight -n "pointLightShape1" -p "pointLight1";
	setAttr -k off ".v";
	setAttr ".us" no;
createNode transform -n "pPlane2";
	setAttr ".t" -type "double3" -8.9599267929142421 0 -7.3043725382363505 ;
createNode mesh -n "pPlaneShape2" -p "pPlane2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pPlane3";
	setAttr ".t" -type "double3" -8.7282429113483744 0 7.8937561764856774 ;
createNode mesh -n "pPlaneShape3" -p "pPlane3";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 9 ".lnk";
	setAttr -s 9 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "liquidCleanUpNode";
	setAttr ".b" -type "string" "if ( `whatIs liquid` == \"Command\" ) liquidCreateScriptNode;";
	setAttr ".a" -type "string" "if ( `whatIs liquid` == \"Command\" ) liquidCleanUp;";
	setAttr ".st" 2;
createNode liquidGlobals -n "liquidGlobals";
	setAttr ".rc" -type "string" "perspShape";
	setAttr ".ddin[0]" -type "string" "$SCN.$CAM.$F.$RND.bmp";
	setAttr ".ddim[0]" -type "string" "rgba";
	setAttr ".ddit[0]" -type "string" "it";
	setAttr ".ddbd[0]"  8;
	setAttr ".shdd" -type "string" "generatedShader";
	setAttr ".unt" yes;
	setAttr ".osg" yes;
	setAttr ".rdc" -type "string" "prman";
	setAttr ".prv" -type "string" "prman";
	setAttr ".lrs" -type "string" "E:/MyDocuments/maya/projects/default/rmantmp/test_liqShaderNode_surface_as_brdfmix25.xml";
	setAttr ".shi" -type "string" "sloinfo";
	setAttr ".shcp" -type "string" "shader";
	setAttr ".she" -type "string" "slo";
	setAttr ".mtx" -type "string" "txmake";
	setAttr ".vtx" -type "string" "sho";
	setAttr ".txe" -type "string" "tex";
	setAttr ".dsdn" -type "string" "deepshad";
	setAttr ".dsim" -type "string" "deepopacity";
	setAttr ".Photon" yes;
	setAttr ".ZBuffer" no;
	setAttr ".DepthMask" yes;
	setAttr ".Blackman_Harris" yes;
	setAttr ".Mitchell" yes;
	setAttr ".SeparableCatmull_Rom" yes;
	setAttr ".Blobbies" yes;
	setAttr ".Points" yes;
	setAttr ".Raytracing" yes;
	setAttr ".AdvancedVisibility" yes;
	setAttr ".rnd" -type "string" "appleseed";
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n"
		+ "            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n"
		+ "            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n"
		+ "                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n"
		+ "                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n"
		+ "                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n"
		+ "                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n"
		+ "                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n"
		+ "            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 0\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n"
		+ "                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n"
		+ "                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n"
		+ "                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n"
		+ "            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"quad\\\" -ps 1 50 50 -ps 2 50 50 -ps 3 50 50 -ps 4 50 50 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Top View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera top` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera top` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Side View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Front View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode polyPlane -n "polyPlane1";
	setAttr ".w" 11.657814551284549;
	setAttr ".h" 16.996083339719902;
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode shadingEngine -n "liquidSurface1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode liquidSurface -n "liquidSurface_I1";
	addAttr -ci true -h true -sn "bsdf_model" -ln "bsdf_model" -dt "string";
	addAttr -ci true -uac -h true -k true -sn "lambertian_brdf_reflectance" -ln "lambertian_brdf_reflectance" 
		-at "float3" -nc 3;
	addAttr -ci true -h true -k true -sn "lambertian_brdf_reflectancea" -ln "lambertian_brdf_reflectancea" 
		-at "float" -p "lambertian_brdf_reflectance";
	addAttr -ci true -h true -k true -sn "lambertian_brdf_reflectanceb" -ln "lambertian_brdf_reflectanceb" 
		-at "float" -p "lambertian_brdf_reflectance";
	addAttr -ci true -h true -k true -sn "lambertian_brdf_reflectancec" -ln "lambertian_brdf_reflectancec" 
		-at "float" -p "lambertian_brdf_reflectance";
	addAttr -ci true -h true -sn "edf_model" -ln "edf_model" -dt "string";
	addAttr -ci true -uac -h true -k true -sn "diffuse_edf_exitance" -ln "diffuse_edf_exitance" 
		-at "float3" -nc 3;
	addAttr -ci true -h true -k true -sn "diffuse_edf_exitancea" -ln "diffuse_edf_exitancea" 
		-at "float" -p "diffuse_edf_exitance";
	addAttr -ci true -h true -k true -sn "diffuse_edf_exitanceb" -ln "diffuse_edf_exitanceb" 
		-at "float" -p "diffuse_edf_exitance";
	addAttr -ci true -h true -k true -sn "diffuse_edf_exitancec" -ln "diffuse_edf_exitancec" 
		-at "float" -p "diffuse_edf_exitance";
	addAttr -ci true -h true -sn "surface_shader_model" -ln "surface_shader_model" -dt "string";
	addAttr -ci true -uac -h true -k true -sn "constant_surface_shader_color" -ln "constant_surface_shader_color" 
		-at "float3" -nc 3;
	addAttr -ci true -h true -k true -sn "constant_surface_shader_colora" -ln "constant_surface_shader_colora" 
		-at "float" -p "constant_surface_shader_color";
	addAttr -ci true -h true -k true -sn "constant_surface_shader_colorb" -ln "constant_surface_shader_colorb" 
		-at "float" -p "constant_surface_shader_color";
	addAttr -ci true -h true -k true -sn "constant_surface_shader_colorc" -ln "constant_surface_shader_colorc" 
		-at "float" -p "constant_surface_shader_color";
	addAttr -ci true -uac -h true -k true -sn "lambertian_brdf_reflectance_multiplier" 
		-ln "lambertian_brdf_reflectance_multiplier" -at "float3" -nc 3;
	addAttr -ci true -h true -k true -sn "lambertian_brdf_reflectance_multipliera" -ln "lambertian_brdf_reflectance_multipliera" 
		-at "float" -p "lambertian_brdf_reflectance_multiplier";
	addAttr -ci true -h true -k true -sn "lambertian_brdf_reflectance_multiplierb" -ln "lambertian_brdf_reflectance_multiplierb" 
		-at "float" -p "lambertian_brdf_reflectance_multiplier";
	addAttr -ci true -h true -k true -sn "lambertian_brdf_reflectance_multiplierc" -ln "lambertian_brdf_reflectance_multiplierc" 
		-at "float" -p "lambertian_brdf_reflectance_multiplier";
	setAttr ".rms" -type "string" "as_shader";
	setAttr ".rst" -type "string" "surface";
	setAttr ".rml" -type "string" "E:/dev/Autodesk/maya/myplugin/project/liquid_/2.3.3/test/test_as_simple/lambertianBRDF_physicalSS.dll";
	setAttr ".rpr" -type "stringArray" 6 "bsdf_model" "lambertian_brdf_reflectance" "lambertian_brdf_reflectance_multiplier" "edf_model" "diffuse_edf_exitance" "surface_shader_model"  ;
	setAttr ".rdt" -type "stringArray" 6 "uniform" "uniform" "uniform" "uniform" "uniform" "uniform"  ;
	setAttr ".rty" -type "stringArray" 6 "string" "color" "color" "string" "color" "string"  ;
	setAttr ".rdf" -type "stringArray" 6 "lambertian_brdf" "1.01.01.0" "1.01.01.0" "diffuse_edf" "1.01.01.0" "physical_surface_shader"  ;
	setAttr ".ras" -type "Int32Array" 6 -1 -1 -1 -1 -1 -1 ;
	setAttr ".rlc" -type "stringArray" 6 "liquidAE_LifString( \"bsdf_model\", -1, \"string\", \"bsdf_model\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifColor( \"lambertian_brdf_reflectance\", -1, \"color\", \"lambertian_brdf_reflectance\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifColor( \"lambertian_brdf_reflectance_multiplier\", -1, \"color\", \"lambertian_brdf_reflectance_multiplier\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifString( \"edf_model\", -1, \"string\", \"edf_model\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifColor( \"diffuse_edf_exitance\", -1, \"color\", \"diffuse_edf_exitance\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifString( \"surface_shader_model\", -1, \"string\", \"surface_shader_model\", {\"0\", \"0\"}, \"\", 14 );"  ;
	setAttr ".rmt" -type "stringArray" 0  ;
	setAttr ".rio" -type "Int32Array" 6 0 0 0 0 0 0 ;
	setAttr ".bsdf_model" -type "string" "lambertian_brdf";
	setAttr -k on ".lambertian_brdf_reflectance" -type "float3" 1 1 0 ;
	setAttr ".edf_model" -type "string" "diffuse_edf";
	setAttr -k on ".diffuse_edf_exitance" -type "float3" 0.045456626 0.045456626 0.045456626 ;
	setAttr ".surface_shader_model" -type "string" "physical_surface_shader";
	setAttr -k on ".constant_surface_shader_color" -type "float3" 1 0 0 ;
	setAttr -k on ".lambertian_brdf_reflectance_multiplier" -type "float3" 1 1 1 ;
createNode shadingEngine -n "liquidSurface2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode liqGlobalsNodeRenderer -n "liqGlobalsNodeRenderer_appleseed";
	addAttr -ci true -h true -sn "env_model" -ln "env_model" -at "long";
	addAttr -ci true -h true -sn "env_edf_model" -ln "env_edf_model" -at "long";
	addAttr -ci true -uac -h true -sn "constant_environment_edf_exitance" -ln "constant_environment_edf_exitance" 
		-at "float3" -nc 3;
	addAttr -ci true -sn "constant_environment_edf_exitanceR" -ln "constant_environment_edf_exitanceR" 
		-at "float" -p "constant_environment_edf_exitance";
	addAttr -ci true -sn "constant_environment_edf_exitanceG" -ln "constant_environment_edf_exitanceG" 
		-at "float" -p "constant_environment_edf_exitance";
	addAttr -ci true -sn "constant_environment_edf_exitanceB" -ln "constant_environment_edf_exitanceB" 
		-at "float" -p "constant_environment_edf_exitance";
	addAttr -ci true -uac -h true -sn "constant_hemisphere_environment_edf_exitance" 
		-ln "constant_hemisphere_environment_edf_exitance" -at "float3" -nc 3;
	addAttr -ci true -sn "constant_hemisphere_environment_edf_exitanceR" -ln "constant_hemisphere_environment_edf_exitanceR" 
		-at "float" -p "constant_hemisphere_environment_edf_exitance";
	addAttr -ci true -sn "constant_hemisphere_environment_edf_exitanceG" -ln "constant_hemisphere_environment_edf_exitanceG" 
		-at "float" -p "constant_hemisphere_environment_edf_exitance";
	addAttr -ci true -sn "constant_hemisphere_environment_edf_exitanceB" -ln "constant_hemisphere_environment_edf_exitanceB" 
		-at "float" -p "constant_hemisphere_environment_edf_exitance";
	addAttr -ci true -uac -h true -sn "gradient_environment_edf_horizon_exitance" -ln "gradient_environment_edf_horizon_exitance" 
		-at "float3" -nc 3;
	addAttr -ci true -sn "gradient_environment_edf_horizon_exitanceR" -ln "gradient_environment_edf_horizon_exitanceR" 
		-at "float" -p "gradient_environment_edf_horizon_exitance";
	addAttr -ci true -sn "gradient_environment_edf_horizon_exitanceG" -ln "gradient_environment_edf_horizon_exitanceG" 
		-at "float" -p "gradient_environment_edf_horizon_exitance";
	addAttr -ci true -sn "gradient_environment_edf_horizon_exitanceB" -ln "gradient_environment_edf_horizon_exitanceB" 
		-at "float" -p "gradient_environment_edf_horizon_exitance";
	addAttr -ci true -uac -h true -sn "gradient_environment_edf_zenith_exitance" -ln "gradient_environment_edf_zenith_exitance" 
		-at "float3" -nc 3;
	addAttr -ci true -sn "gradient_environment_edf_zenith_exitanceR" -ln "gradient_environment_edf_zenith_exitanceR" 
		-at "float" -p "gradient_environment_edf_zenith_exitance";
	addAttr -ci true -sn "gradient_environment_edf_zenith_exitanceG" -ln "gradient_environment_edf_zenith_exitanceG" 
		-at "float" -p "gradient_environment_edf_zenith_exitance";
	addAttr -ci true -sn "gradient_environment_edf_zenith_exitanceB" -ln "gradient_environment_edf_zenith_exitanceB" 
		-at "float" -p "gradient_environment_edf_zenith_exitance";
	addAttr -ci true -uac -h true -sn "latlong_map_environment_edf_exitance" -ln "latlong_map_environment_edf_exitance" 
		-at "float3" -nc 3;
	addAttr -ci true -sn "latlong_map_environment_edf_exitanceR" -ln "latlong_map_environment_edf_exitanceR" 
		-at "float" -p "latlong_map_environment_edf_exitance";
	addAttr -ci true -sn "latlong_map_environment_edf_exitanceG" -ln "latlong_map_environment_edf_exitanceG" 
		-at "float" -p "latlong_map_environment_edf_exitance";
	addAttr -ci true -sn "latlong_map_environment_edf_exitanceB" -ln "latlong_map_environment_edf_exitanceB" 
		-at "float" -p "latlong_map_environment_edf_exitance";
	addAttr -ci true -uac -h true -sn "mirrorball_map_environment_edf_exitance" -ln "mirrorball_map_environment_edf_exitance" 
		-at "float3" -nc 3;
	addAttr -ci true -sn "mirrorball_map_environment_edf_exitanceR" -ln "mirrorball_map_environment_edf_exitanceR" 
		-at "float" -p "mirrorball_map_environment_edf_exitance";
	addAttr -ci true -sn "mirrorball_map_environment_edf_exitanceG" -ln "mirrorball_map_environment_edf_exitanceG" 
		-at "float" -p "mirrorball_map_environment_edf_exitance";
	addAttr -ci true -sn "mirrorball_map_environment_edf_exitanceB" -ln "mirrorball_map_environment_edf_exitanceB" 
		-at "float" -p "mirrorball_map_environment_edf_exitance";
	addAttr -ci true -h true -sn "env_shader_model" -ln "env_shader_model" -at "long";
	addAttr -ci true -h true -sn "framename" -ln "framename" -dt "string";
	addAttr -ci true -h true -sn "tile_size" -ln "tile_size" -dt "string";
	addAttr -ci true -h true -sn "pixel_format" -ln "pixel_format" -dv 4 -at "long";
	addAttr -ci true -h true -sn "color_space" -ln "color_space" -at "long";
	addAttr -ci true -h true -sn "clamping" -ln "clamping" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "gamma_correction" -ln "gamma_correction" -dv 1 -at "float";
	addAttr -ci true -h true -sn "useFinal" -ln "useFinal" -min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "final_frame_renderer" -ln "final_frame_renderer" -at "long";
	addAttr -ci true -h true -sn "final_tile_renderer" -ln "final_tile_renderer" -at "long";
	addAttr -ci true -h true -sn "final_sample_renderer" -ln "final_sample_renderer" 
		-at "long";
	addAttr -ci true -h true -sn "final_sample_generator" -ln "final_sample_generator" 
		-at "long";
	addAttr -ci true -h true -sn "final_lighting_engine" -ln "final_lighting_engine" 
		-dv 1 -at "long";
	addAttr -ci true -h true -sn "final_min_samples" -ln "final_min_samples" -dv 1 -at "long";
	addAttr -ci true -h true -sn "final_max_samples" -ln "final_max_samples" -dv 1 -at "long";
	addAttr -ci true -h true -sn "final_sample_filter_size" -ln "final_sample_filter_size" 
		-dv 4 -at "long";
	addAttr -ci true -h true -sn "final_sample_filter_type" -ln "final_sample_filter_type" 
		-at "long";
	addAttr -ci true -h true -sn "interactive_frame_renderer" -ln "interactive_frame_renderer" 
		-dv 1 -at "long";
	addAttr -ci true -h true -sn "interactive_tile_renderer" -ln "interactive_tile_renderer" 
		-at "long";
	addAttr -ci true -h true -sn "interactive_sample_renderer" -ln "interactive_sample_renderer" 
		-at "long";
	addAttr -ci true -h true -sn "interactive_sample_generator" -ln "interactive_sample_generator" 
		-at "long";
	addAttr -ci true -h true -sn "interactive_lighting_engine" -ln "interactive_lighting_engine" 
		-dv 1 -at "long";
	addAttr -ci true -h true -sn "interactive_min_samples" -ln "interactive_min_samples" 
		-dv 1 -at "long";
	addAttr -ci true -h true -sn "interactive_max_samples" -ln "interactive_max_samples" 
		-dv 1 -at "long";
	addAttr -ci true -h true -sn "interactive_sample_filter_size" -ln "interactive_sample_filter_size" 
		-dv 1 -at "long";
	addAttr -ci true -h true -sn "interactive_sample_filter_type" -ln "interactive_sample_filter_type" 
		-dv 1 -at "long";
	addAttr -ci true -h true -sn "export_mesh_to" -ln "export_mesh_to" -dt "string";
	addAttr -ci true -h true -sn "export_mesh_facet_groups" -ln "export_mesh_facet_groups" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "export_mesh_vertex_groups" -ln "export_mesh_vertex_groups" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "export_mesh_materials" -ln "export_mesh_materials" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "export_mesh_smoothing" -ln "export_mesh_smoothing" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -h true -sn "export_mesh_normals" -ln "export_mesh_normals" -min 
		0 -max 1 -at "bool";
	setAttr ".framename" -type "string" "beauty";
	setAttr ".tile_size" -type "string" "32|32";
	setAttr ".useFinal" yes;
	setAttr ".export_mesh_to" -type "string" "E:/MyDocuments/maya/projects/default/as_mesh";
	setAttr ".export_mesh_facet_groups" yes;
	setAttr ".export_mesh_vertex_groups" yes;
	setAttr ".export_mesh_materials" yes;
	setAttr ".export_mesh_smoothing" yes;
	setAttr ".export_mesh_normals" yes;
createNode liquidSurface -n "liquidSurface_I0";
	addAttr -ci true -h true -sn "bsdf_model" -ln "bsdf_model" -dt "string";
	addAttr -ci true -uac -h true -k true -sn "lambertian_brdf_reflectance" -ln "lambertian_brdf_reflectance" 
		-at "float3" -nc 3;
	addAttr -ci true -h true -k true -sn "lambertian_brdf_reflectancea" -ln "lambertian_brdf_reflectancea" 
		-at "float" -p "lambertian_brdf_reflectance";
	addAttr -ci true -h true -k true -sn "lambertian_brdf_reflectanceb" -ln "lambertian_brdf_reflectanceb" 
		-at "float" -p "lambertian_brdf_reflectance";
	addAttr -ci true -h true -k true -sn "lambertian_brdf_reflectancec" -ln "lambertian_brdf_reflectancec" 
		-at "float" -p "lambertian_brdf_reflectance";
	addAttr -ci true -uac -h true -k true -sn "lambertian_brdf_reflectance_multiplier" 
		-ln "lambertian_brdf_reflectance_multiplier" -at "float3" -nc 3;
	addAttr -ci true -h true -k true -sn "lambertian_brdf_reflectance_multipliera" -ln "lambertian_brdf_reflectance_multipliera" 
		-at "float" -p "lambertian_brdf_reflectance_multiplier";
	addAttr -ci true -h true -k true -sn "lambertian_brdf_reflectance_multiplierb" -ln "lambertian_brdf_reflectance_multiplierb" 
		-at "float" -p "lambertian_brdf_reflectance_multiplier";
	addAttr -ci true -h true -k true -sn "lambertian_brdf_reflectance_multiplierc" -ln "lambertian_brdf_reflectance_multiplierc" 
		-at "float" -p "lambertian_brdf_reflectance_multiplier";
	addAttr -ci true -h true -sn "edf_model" -ln "edf_model" -dt "string";
	addAttr -ci true -uac -h true -k true -sn "diffuse_edf_exitance" -ln "diffuse_edf_exitance" 
		-at "float3" -nc 3;
	addAttr -ci true -h true -k true -sn "diffuse_edf_exitancea" -ln "diffuse_edf_exitancea" 
		-at "float" -p "diffuse_edf_exitance";
	addAttr -ci true -h true -k true -sn "diffuse_edf_exitanceb" -ln "diffuse_edf_exitanceb" 
		-at "float" -p "diffuse_edf_exitance";
	addAttr -ci true -h true -k true -sn "diffuse_edf_exitancec" -ln "diffuse_edf_exitancec" 
		-at "float" -p "diffuse_edf_exitance";
	addAttr -ci true -h true -sn "surface_shader_model" -ln "surface_shader_model" -dt "string";
	setAttr ".rms" -type "string" "as_shader";
	setAttr ".rst" -type "string" "surface";
	setAttr ".rml" -type "string" "E:/dev/Autodesk/maya/myplugin/project/liquid_/2.3.3/test/test_as_simple/lambertianBRDF_physicalSS.dll";
	setAttr ".rpr" -type "stringArray" 6 "bsdf_model" "lambertian_brdf_reflectance" "lambertian_brdf_reflectance_multiplier" "edf_model" "diffuse_edf_exitance" "surface_shader_model"  ;
	setAttr ".rdt" -type "stringArray" 6 "uniform" "uniform" "uniform" "uniform" "uniform" "uniform"  ;
	setAttr ".rty" -type "stringArray" 6 "string" "color" "color" "string" "color" "string"  ;
	setAttr ".rdf" -type "stringArray" 6 "lambertian_brdf" "1.01.01.0" "1.01.01.0" "diffuse_edf" "1.01.01.0" "physical_surface_shader"  ;
	setAttr ".ras" -type "Int32Array" 6 -1 -1 -1 -1 -1 -1 ;
	setAttr ".rlc" -type "stringArray" 6 "liquidAE_LifString( \"bsdf_model\", -1, \"string\", \"bsdf_model\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifColor( \"lambertian_brdf_reflectance\", -1, \"color\", \"lambertian_brdf_reflectance\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifColor( \"lambertian_brdf_reflectance_multiplier\", -1, \"color\", \"lambertian_brdf_reflectance_multiplier\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifString( \"edf_model\", -1, \"string\", \"edf_model\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifColor( \"diffuse_edf_exitance\", -1, \"color\", \"diffuse_edf_exitance\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifString( \"surface_shader_model\", -1, \"string\", \"surface_shader_model\", {\"0\", \"0\"}, \"\", 14 );"  ;
	setAttr ".rmt" -type "stringArray" 0  ;
	setAttr ".rio" -type "Int32Array" 6 0 0 0 0 0 0 ;
	setAttr ".bsdf_model" -type "string" "lambertian_brdf";
	setAttr -k on ".lambertian_brdf_reflectance" -type "float3" 1 0 0 ;
	setAttr -k on ".lambertian_brdf_reflectance_multiplier" -type "float3" 1 1 1 ;
	setAttr ".edf_model" -type "string" "diffuse_edf";
	setAttr -k on ".diffuse_edf_exitance" -type "float3" 0.083329521 0.083329521 0.083329521 ;
	setAttr ".surface_shader_model" -type "string" "physical_surface_shader";
createNode shadingEngine -n "liquidSurface3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
createNode liquidSurface -n "liquidSurface4";
	addAttr -ci true -h true -sn "bsdf0" -ln "bsdf0" -dt "string";
	addAttr -ci true -h true -sn "bsdf1" -ln "bsdf1" -dt "string";
	addAttr -ci true -h true -sn "weight0" -ln "weight0" -at "double";
	addAttr -ci true -h true -sn "edf_model" -ln "edf_model" -dt "string";
	addAttr -ci true -uac -h true -k true -sn "diffuse_edf_exitance" -ln "diffuse_edf_exitance" 
		-at "float3" -nc 3;
	addAttr -ci true -h true -k true -sn "diffuse_edf_exitancea" -ln "diffuse_edf_exitancea" 
		-at "float" -p "diffuse_edf_exitance";
	addAttr -ci true -h true -k true -sn "diffuse_edf_exitanceb" -ln "diffuse_edf_exitanceb" 
		-at "float" -p "diffuse_edf_exitance";
	addAttr -ci true -h true -k true -sn "diffuse_edf_exitancec" -ln "diffuse_edf_exitancec" 
		-at "float" -p "diffuse_edf_exitance";
	addAttr -ci true -h true -sn "surface_shader_model" -ln "surface_shader_model" -dt "string";
	addAttr -ci true -h true -sn "bsdf_model" -ln "bsdf_model" -dt "string";
	addAttr -ci true -h true -sn "weight1" -ln "weight1" -at "double";
	addAttr -ci true -h true -sn "bsdf_mix_bsdf0" -ln "bsdf_mix_bsdf0" -dt "string";
	addAttr -ci true -h true -sn "bsdf_mix_bsdf1" -ln "bsdf_mix_bsdf1" -dt "string";
	addAttr -ci true -h true -sn "bsdf_mix_weight0" -ln "bsdf_mix_weight0" -at "double";
	addAttr -ci true -h true -sn "bsdf_mix_weight1" -ln "bsdf_mix_weight1" -at "double";
	setAttr ".rms" -type "string" "as_shader";
	setAttr ".rst" -type "string" "surface";
	setAttr ".rml" -type "string" "E:/dev/Autodesk/maya/myplugin/project/liquid_/2.3.3/test/test_as_simple/bsdfmix_physicalSS.dll";
	setAttr ".rpr" -type "stringArray" 8 "bsdf_model" "bsdf_mix_bsdf0" "bsdf_mix_bsdf1" "bsdf_mix_weight0" "bsdf_mix_weight1" "edf_model" "diffuse_edf_exitance" "surface_shader_model"  ;
	setAttr ".rdt" -type "stringArray" 8 "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform"  ;
	setAttr ".rty" -type "stringArray" 8 "string" "string" "string" "float" "float" "string" "color" "string"  ;
	setAttr ".rdf" -type "stringArray" 8 "bsdf_mix" "" "" "0.5" "0.5" "diffuse_edf" "1.01.01.0" "physical_surface_shader"  ;
	setAttr ".ras" -type "Int32Array" 8 -1 -1 -1 -1 -1 -1
		 -1 -1 ;
	setAttr ".rlc" -type "stringArray" 8 "liquidAE_LifString( \"bsdf_model\", -1, \"string\", \"bsdf_model\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifString( \"bsdf_mix_bsdf0\", -1, \"string\", \"bsdf_mix_bsdf0\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifString( \"bsdf_mix_bsdf1\", -1, \"string\", \"bsdf_mix_bsdf1\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifFloat( \"bsdf_mix_weight0\", -1, \"float\", \"bsdf_mix_weight0\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifFloat( \"bsdf_mix_weight1\", -1, \"float\", \"bsdf_mix_weight1\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifString( \"edf_model\", -1, \"string\", \"edf_model\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifColor( \"diffuse_edf_exitance\", -1, \"color\", \"diffuse_edf_exitance\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifString( \"surface_shader_model\", -1, \"string\", \"surface_shader_model\", {\"0\", \"0\"}, \"\", 14 );"  ;
	setAttr ".rmt" -type "stringArray" 0  ;
	setAttr ".rio" -type "Int32Array" 8 0 0 0 0 0 0
		 0 0 ;
	setAttr ".bsdf0" -type "string" "lambertian_brdf";
	setAttr ".bsdf1" -type "string" "lambertian_brdf";
	setAttr ".weight0" 0.45000000009313224;
	setAttr ".edf_model" -type "string" "diffuse_edf";
	setAttr -k on ".diffuse_edf_exitance" -type "float3" 0.022720683 0.022720683 0.022720683 ;
	setAttr ".surface_shader_model" -type "string" "physical_surface_shader";
	setAttr ".bsdf_model" -type "string" "bsdf_mix";
	setAttr ".weight1" 0.5;
	setAttr ".bsdf_mix_weight0" 0.5;
	setAttr ".bsdf_mix_weight1" 0.5;
createNode shadingEngine -n "liquidSurface4SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
createNode polyPlane -n "polyPlane2";
	setAttr ".w" 17.527022708350096;
	setAttr ".h" 14.197148604466243;
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode polyPlane -n "polyPlane3";
	setAttr ".w" 17.379823202977295;
	setAttr ".h" 15.171891071946776;
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode liquidShader -n "liquidShader4";
	addAttr -ci true -h true -sn "bsdf_model" -ln "bsdf_model" -dt "string";
	addAttr -ci true -h true -sn "bsdf_mix_bsdf0" -ln "bsdf_mix_bsdf0" -dt "string";
	addAttr -ci true -h true -sn "bsdf_mix_bsdf1" -ln "bsdf_mix_bsdf1" -dt "string";
	addAttr -ci true -h true -sn "bsdf_mix_weight0" -ln "bsdf_mix_weight0" -at "double";
	addAttr -ci true -h true -sn "bsdf_mix_weight1" -ln "bsdf_mix_weight1" -at "double";
	addAttr -ci true -h true -sn "edf_model" -ln "edf_model" -dt "string";
	addAttr -ci true -uac -h true -k true -sn "diffuse_edf_exitance" -ln "diffuse_edf_exitance" 
		-at "float3" -nc 3;
	addAttr -ci true -h true -k true -sn "diffuse_edf_exitancea" -ln "diffuse_edf_exitancea" 
		-at "float" -p "diffuse_edf_exitance";
	addAttr -ci true -h true -k true -sn "diffuse_edf_exitanceb" -ln "diffuse_edf_exitanceb" 
		-at "float" -p "diffuse_edf_exitance";
	addAttr -ci true -h true -k true -sn "diffuse_edf_exitancec" -ln "diffuse_edf_exitancec" 
		-at "float" -p "diffuse_edf_exitance";
	addAttr -ci true -h true -sn "surface_shader_model" -ln "surface_shader_model" -dt "string";
	addAttr -ci true -sn "liqAssignedObjects" -ln "liqAssignedObjects" -at "message";
	setAttr ".rms" -type "string" "as_shader";
	setAttr ".rst" -type "string" "surface";
	setAttr ".rml" -type "string" "E:/dev/Autodesk/maya/myplugin/project/liquid_/2.3.3/test/test_as_simple/bsdfmix_physicalSS.dll";
	setAttr ".rpr" -type "stringArray" 8 "bsdf_model" "bsdf_mix_bsdf0" "bsdf_mix_bsdf1" "bsdf_mix_weight0" "bsdf_mix_weight1" "edf_model" "diffuse_edf_exitance" "surface_shader_model"  ;
	setAttr ".rdt" -type "stringArray" 8 "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform"  ;
	setAttr ".rty" -type "stringArray" 8 "string" "string" "string" "float" "float" "string" "color" "string"  ;
	setAttr ".rdf" -type "stringArray" 8 "bsdf_mix" "" "" "0.5" "0.5" "diffuse_edf" "1.01.01.0" "physical_surface_shader"  ;
	setAttr ".ras" -type "Int32Array" 8 -1 -1 -1 -1 -1 -1
		 -1 -1 ;
	setAttr ".rlc" -type "stringArray" 8 "liquidAE_LifString( \"bsdf_model\", -1, \"string\", \"bsdf_model\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifString( \"bsdf_mix_bsdf0\", -1, \"string\", \"bsdf_mix_bsdf0\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifString( \"bsdf_mix_bsdf1\", -1, \"string\", \"bsdf_mix_bsdf1\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifFloat( \"bsdf_mix_weight0\", -1, \"float\", \"bsdf_mix_weight0\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifFloat( \"bsdf_mix_weight1\", -1, \"float\", \"bsdf_mix_weight1\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifString( \"edf_model\", -1, \"string\", \"edf_model\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifColor( \"diffuse_edf_exitance\", -1, \"color\", \"diffuse_edf_exitance\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifString( \"surface_shader_model\", -1, \"string\", \"surface_shader_model\", {\"0\", \"0\"}, \"\", 14 );"  ;
	setAttr ".rmt" -type "stringArray" 0  ;
	setAttr ".rio" -type "Int32Array" 8 0 0 0 0 0 0
		 0 0 ;
	setAttr ".bsdf_model" -type "string" "bsdf_mix";
	setAttr ".bsdf_mix_weight1" 0.5;
	setAttr ".edf_model" -type "string" "diffuse_edf";
	setAttr -k on ".diffuse_edf_exitance" -type "float3" 0.017547876 0.017547876 0.017547876 ;
	setAttr ".surface_shader_model" -type "string" "physical_surface_shader";
createNode shadingEngine -n "liquidShader1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
createNode liquidShader -n "liquidShader_I0";
	addAttr -ci true -h true -sn "bsdf_model" -ln "bsdf_model" -dt "string";
	addAttr -ci true -h true -sn "bsdf_mix_bsdf0" -ln "bsdf_mix_bsdf0" -dt "string";
	addAttr -ci true -h true -sn "bsdf_mix_bsdf1" -ln "bsdf_mix_bsdf1" -dt "string";
	addAttr -ci true -h true -sn "bsdf_mix_weight0" -ln "bsdf_mix_weight0" -at "double";
	addAttr -ci true -h true -sn "bsdf_mix_weight1" -ln "bsdf_mix_weight1" -at "double";
	addAttr -ci true -h true -sn "edf_model" -ln "edf_model" -dt "string";
	addAttr -ci true -uac -h true -k true -sn "diffuse_edf_exitance" -ln "diffuse_edf_exitance" 
		-at "float3" -nc 3;
	addAttr -ci true -h true -k true -sn "diffuse_edf_exitancea" -ln "diffuse_edf_exitancea" 
		-at "float" -p "diffuse_edf_exitance";
	addAttr -ci true -h true -k true -sn "diffuse_edf_exitanceb" -ln "diffuse_edf_exitanceb" 
		-at "float" -p "diffuse_edf_exitance";
	addAttr -ci true -h true -k true -sn "diffuse_edf_exitancec" -ln "diffuse_edf_exitancec" 
		-at "float" -p "diffuse_edf_exitance";
	addAttr -ci true -h true -sn "surface_shader_model" -ln "surface_shader_model" -dt "string";
	addAttr -ci true -uac -h true -k true -sn "lambertian_brdf_reflectance" -ln "lambertian_brdf_reflectance" 
		-at "float3" -nc 3;
	addAttr -ci true -h true -k true -sn "lambertian_brdf_reflectancea" -ln "lambertian_brdf_reflectancea" 
		-at "float" -p "lambertian_brdf_reflectance";
	addAttr -ci true -h true -k true -sn "lambertian_brdf_reflectanceb" -ln "lambertian_brdf_reflectanceb" 
		-at "float" -p "lambertian_brdf_reflectance";
	addAttr -ci true -h true -k true -sn "lambertian_brdf_reflectancec" -ln "lambertian_brdf_reflectancec" 
		-at "float" -p "lambertian_brdf_reflectance";
	addAttr -ci true -uac -h true -k true -sn "lambertian_brdf_reflectance_multiplier" 
		-ln "lambertian_brdf_reflectance_multiplier" -at "float3" -nc 3;
	addAttr -ci true -h true -k true -sn "lambertian_brdf_reflectance_multipliera" -ln "lambertian_brdf_reflectance_multipliera" 
		-at "float" -p "lambertian_brdf_reflectance_multiplier";
	addAttr -ci true -h true -k true -sn "lambertian_brdf_reflectance_multiplierb" -ln "lambertian_brdf_reflectance_multiplierb" 
		-at "float" -p "lambertian_brdf_reflectance_multiplier";
	addAttr -ci true -h true -k true -sn "lambertian_brdf_reflectance_multiplierc" -ln "lambertian_brdf_reflectance_multiplierc" 
		-at "float" -p "lambertian_brdf_reflectance_multiplier";
	addAttr -ci true -sn "liqAssignedObjects" -ln "liqAssignedObjects" -at "message";
	setAttr ".rms" -type "string" "as_shader";
	setAttr ".rst" -type "string" "surface";
	setAttr ".rml" -type "string" "E:/dev/Autodesk/maya/myplugin/project/liquid_/2.3.3/test/test_as_simple/lambertianBRDF_physicalSS.dll";
	setAttr ".rpr" -type "stringArray" 6 "bsdf_model" "lambertian_brdf_reflectance" "lambertian_brdf_reflectance_multiplier" "edf_model" "diffuse_edf_exitance" "surface_shader_model"  ;
	setAttr ".rdt" -type "stringArray" 6 "uniform" "uniform" "uniform" "uniform" "uniform" "uniform"  ;
	setAttr ".rty" -type "stringArray" 6 "string" "color" "color" "string" "color" "string"  ;
	setAttr ".rdf" -type "stringArray" 6 "lambertian_brdf" "1.01.01.0" "1.01.01.0" "diffuse_edf" "1.01.01.0" "physical_surface_shader"  ;
	setAttr ".ras" -type "Int32Array" 6 -1 -1 -1 -1 -1 -1 ;
	setAttr ".rlc" -type "stringArray" 6 "liquidAE_LifString( \"bsdf_model\", -1, \"string\", \"bsdf_model\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifColor( \"lambertian_brdf_reflectance\", -1, \"color\", \"lambertian_brdf_reflectance\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifColor( \"lambertian_brdf_reflectance_multiplier\", -1, \"color\", \"lambertian_brdf_reflectance_multiplier\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifString( \"edf_model\", -1, \"string\", \"edf_model\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifColor( \"diffuse_edf_exitance\", -1, \"color\", \"diffuse_edf_exitance\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifString( \"surface_shader_model\", -1, \"string\", \"surface_shader_model\", {\"0\", \"0\"}, \"\", 14 );"  ;
	setAttr ".rmt" -type "stringArray" 0  ;
	setAttr ".rio" -type "Int32Array" 6 0 0 0 0 0 0 ;
	setAttr ".bsdf_model" -type "string" "lambertian_brdf";
	setAttr ".bsdf_mix_bsdf0" -type "string" "";
	setAttr ".bsdf_mix_bsdf1" -type "string" "";
	setAttr ".bsdf_mix_weight0" 0.5;
	setAttr ".bsdf_mix_weight1" 0.5;
	setAttr ".edf_model" -type "string" "diffuse_edf";
	setAttr -k on ".diffuse_edf_exitance" -type "float3" 0.029236287 0.029236287 0.029236287 ;
	setAttr ".surface_shader_model" -type "string" "physical_surface_shader";
	setAttr -k on ".lambertian_brdf_reflectance" -type "float3" 1 0 0 ;
	setAttr -k on ".lambertian_brdf_reflectance_multiplier" -type "float3" 1 1 1 ;
createNode shadingEngine -n "liquidShader5SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
createNode liquidShader -n "liquidShader_I1";
	addAttr -ci true -h true -sn "bsdf_model" -ln "bsdf_model" -dt "string";
	addAttr -ci true -h true -sn "bsdf_mix_bsdf0" -ln "bsdf_mix_bsdf0" -dt "string";
	addAttr -ci true -h true -sn "bsdf_mix_bsdf1" -ln "bsdf_mix_bsdf1" -dt "string";
	addAttr -ci true -h true -sn "bsdf_mix_weight0" -ln "bsdf_mix_weight0" -at "double";
	addAttr -ci true -h true -sn "bsdf_mix_weight1" -ln "bsdf_mix_weight1" -at "double";
	addAttr -ci true -h true -sn "edf_model" -ln "edf_model" -dt "string";
	addAttr -ci true -uac -h true -k true -sn "diffuse_edf_exitance" -ln "diffuse_edf_exitance" 
		-at "float3" -nc 3;
	addAttr -ci true -h true -k true -sn "diffuse_edf_exitancea" -ln "diffuse_edf_exitancea" 
		-at "float" -p "diffuse_edf_exitance";
	addAttr -ci true -h true -k true -sn "diffuse_edf_exitanceb" -ln "diffuse_edf_exitanceb" 
		-at "float" -p "diffuse_edf_exitance";
	addAttr -ci true -h true -k true -sn "diffuse_edf_exitancec" -ln "diffuse_edf_exitancec" 
		-at "float" -p "diffuse_edf_exitance";
	addAttr -ci true -h true -sn "surface_shader_model" -ln "surface_shader_model" -dt "string";
	addAttr -ci true -uac -h true -k true -sn "lambertian_brdf_reflectance" -ln "lambertian_brdf_reflectance" 
		-at "float3" -nc 3;
	addAttr -ci true -h true -k true -sn "lambertian_brdf_reflectancea" -ln "lambertian_brdf_reflectancea" 
		-at "float" -p "lambertian_brdf_reflectance";
	addAttr -ci true -h true -k true -sn "lambertian_brdf_reflectanceb" -ln "lambertian_brdf_reflectanceb" 
		-at "float" -p "lambertian_brdf_reflectance";
	addAttr -ci true -h true -k true -sn "lambertian_brdf_reflectancec" -ln "lambertian_brdf_reflectancec" 
		-at "float" -p "lambertian_brdf_reflectance";
	addAttr -ci true -uac -h true -k true -sn "lambertian_brdf_reflectance_multiplier" 
		-ln "lambertian_brdf_reflectance_multiplier" -at "float3" -nc 3;
	addAttr -ci true -h true -k true -sn "lambertian_brdf_reflectance_multipliera" -ln "lambertian_brdf_reflectance_multipliera" 
		-at "float" -p "lambertian_brdf_reflectance_multiplier";
	addAttr -ci true -h true -k true -sn "lambertian_brdf_reflectance_multiplierb" -ln "lambertian_brdf_reflectance_multiplierb" 
		-at "float" -p "lambertian_brdf_reflectance_multiplier";
	addAttr -ci true -h true -k true -sn "lambertian_brdf_reflectance_multiplierc" -ln "lambertian_brdf_reflectance_multiplierc" 
		-at "float" -p "lambertian_brdf_reflectance_multiplier";
	addAttr -ci true -sn "liqAssignedObjects" -ln "liqAssignedObjects" -at "message";
	setAttr ".rms" -type "string" "as_shader";
	setAttr ".rst" -type "string" "surface";
	setAttr ".rml" -type "string" "E:/dev/Autodesk/maya/myplugin/project/liquid_/2.3.3/test/test_as_simple/lambertianBRDF_physicalSS.dll";
	setAttr ".rpr" -type "stringArray" 6 "bsdf_model" "lambertian_brdf_reflectance" "lambertian_brdf_reflectance_multiplier" "edf_model" "diffuse_edf_exitance" "surface_shader_model"  ;
	setAttr ".rdt" -type "stringArray" 6 "uniform" "uniform" "uniform" "uniform" "uniform" "uniform"  ;
	setAttr ".rty" -type "stringArray" 6 "string" "color" "color" "string" "color" "string"  ;
	setAttr ".rdf" -type "stringArray" 6 "lambertian_brdf" "1.01.01.0" "1.01.01.0" "diffuse_edf" "1.01.01.0" "physical_surface_shader"  ;
	setAttr ".ras" -type "Int32Array" 6 -1 -1 -1 -1 -1 -1 ;
	setAttr ".rlc" -type "stringArray" 6 "liquidAE_LifString( \"bsdf_model\", -1, \"string\", \"bsdf_model\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifColor( \"lambertian_brdf_reflectance\", -1, \"color\", \"lambertian_brdf_reflectance\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifColor( \"lambertian_brdf_reflectance_multiplier\", -1, \"color\", \"lambertian_brdf_reflectance_multiplier\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifString( \"edf_model\", -1, \"string\", \"edf_model\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifColor( \"diffuse_edf_exitance\", -1, \"color\", \"diffuse_edf_exitance\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifString( \"surface_shader_model\", -1, \"string\", \"surface_shader_model\", {\"0\", \"0\"}, \"\", 14 );"  ;
	setAttr ".rmt" -type "stringArray" 0  ;
	setAttr ".rio" -type "Int32Array" 6 0 0 0 0 0 0 ;
	setAttr ".bsdf_model" -type "string" "lambertian_brdf";
	setAttr ".bsdf_mix_bsdf0" -type "string" "";
	setAttr ".bsdf_mix_bsdf1" -type "string" "";
	setAttr ".bsdf_mix_weight0" 0.5;
	setAttr ".bsdf_mix_weight1" 0.5;
	setAttr ".edf_model" -type "string" "diffuse_edf";
	setAttr -k on ".diffuse_edf_exitance" -type "float3" 0.023392081 0.023392081 0.023392081 ;
	setAttr ".surface_shader_model" -type "string" "physical_surface_shader";
	setAttr -k on ".lambertian_brdf_reflectance" -type "float3" 1 1 0 ;
	setAttr -k on ".lambertian_brdf_reflectance_multiplier" -type "float3" 1 1 1 ;
createNode shadingEngine -n "liquidShader6SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
createNode file -n "file1";
	setAttr ".ftn" -type "string" "E:/dev/Autodesk/maya/myplugin/project/liquid_/2.3.3/test/test_as_simple/envBall0.jpg";
createNode place2dTexture -n "place2dTexture1";
select -ne :time1;
	setAttr ".o" 16;
	setAttr ".unw" 16;
select -ne :renderPartition;
	setAttr -s 9 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 8 ".s";
select -ne :defaultTextureList1;
select -ne :lightList1;
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "liquid";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultLightSet;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "polyPlane1.out" "pPlaneShape1.i";
connectAttr "polyPlane2.out" "pPlaneShape2.i";
connectAttr "polyPlane3.out" "pPlaneShape3.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "liquidSurface1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "liquidSurface2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "liquidSurface3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "liquidSurface4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "liquidShader1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "liquidShader5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "liquidShader6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "liquidSurface1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "liquidSurface2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "liquidSurface3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "liquidSurface4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "liquidShader1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "liquidShader5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "liquidShader6SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "liquidSurface1SG.msg" "materialInfo1.sg";
connectAttr "liquidSurface_I1.oc" "liquidSurface2SG.ss";
connectAttr "liquidSurface2SG.msg" "materialInfo2.sg";
connectAttr "liquidSurface_I1.msg" "materialInfo2.m";
connectAttr "liquidSurface_I1.msg" "materialInfo2.t" -na;
connectAttr "liquidSurface_I0.oc" "liquidSurface3SG.ss";
connectAttr "liquidSurface3SG.msg" "materialInfo3.sg";
connectAttr "liquidSurface_I0.msg" "materialInfo3.m";
connectAttr "liquidSurface_I0.msg" "materialInfo3.t" -na;
connectAttr "liquidSurface_I1.bsdf_model" "liquidSurface4.bsdf_mix_bsdf1";
connectAttr "liquidSurface_I0.bsdf_model" "liquidSurface4.bsdf_mix_bsdf0";
connectAttr "liquidSurface4.oc" "liquidSurface4SG.ss";
connectAttr "liquidSurface4SG.msg" "materialInfo4.sg";
connectAttr "liquidSurface4.msg" "materialInfo4.m";
connectAttr "liquidSurface4.msg" "materialInfo4.t" -na;
connectAttr "liquidShader_I0.bsdf_model" "liquidShader4.bsdf_mix_bsdf0";
connectAttr "liquidShader_I1.bsdf_model" "liquidShader4.bsdf_mix_bsdf1";
connectAttr "file1.oa" "liquidShader4.bsdf_mix_weight0";
connectAttr "liquidShader4.oc" "liquidShader1SG.ss";
connectAttr "pPlaneShape1.iog" "liquidShader1SG.dsm" -na;
connectAttr "liquidShader1SG.msg" "materialInfo5.sg";
connectAttr "liquidShader4.msg" "materialInfo5.m";
connectAttr "liquidShader4.msg" "materialInfo5.t" -na;
connectAttr "liquidShader_I0.oc" "liquidShader5SG.ss";
connectAttr "pPlaneShape2.iog" "liquidShader5SG.dsm" -na;
connectAttr "liquidShader5SG.msg" "materialInfo6.sg";
connectAttr "liquidShader_I0.msg" "materialInfo6.m";
connectAttr "liquidShader_I0.msg" "materialInfo6.t" -na;
connectAttr "liquidShader_I1.oc" "liquidShader6SG.ss";
connectAttr "pPlaneShape3.iog" "liquidShader6SG.dsm" -na;
connectAttr "liquidShader6SG.msg" "materialInfo7.sg";
connectAttr "liquidShader_I1.msg" "materialInfo7.m";
connectAttr "liquidShader_I1.msg" "materialInfo7.t" -na;
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "liquidSurface1SG.pa" ":renderPartition.st" -na;
connectAttr "liquidSurface2SG.pa" ":renderPartition.st" -na;
connectAttr "liquidSurface3SG.pa" ":renderPartition.st" -na;
connectAttr "liquidSurface4SG.pa" ":renderPartition.st" -na;
connectAttr "liquidShader1SG.pa" ":renderPartition.st" -na;
connectAttr "liquidShader5SG.pa" ":renderPartition.st" -na;
connectAttr "liquidShader6SG.pa" ":renderPartition.st" -na;
connectAttr "liquidSurface_I1.msg" ":defaultShaderList1.s" -na;
connectAttr "liquidSurface_I0.msg" ":defaultShaderList1.s" -na;
connectAttr "liquidSurface4.msg" ":defaultShaderList1.s" -na;
connectAttr "liquidShader4.msg" ":defaultShaderList1.s" -na;
connectAttr "liquidShader_I0.msg" ":defaultShaderList1.s" -na;
connectAttr "liquidShader_I1.msg" ":defaultShaderList1.s" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "pointLightShape1.ltd" ":lightList1.l" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pointLight1.iog" ":defaultLightSet.dsm" -na;
// End of test_liqShaderNode_surface_as_brdfmix2.ma