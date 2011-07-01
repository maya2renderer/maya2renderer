//Maya ASCII 2008 scene
//Name: test_main.ma
//Last modified: Tue, Nov 09, 2010 11:46:20 AM
//Codeset: 936
requires maya "2008";
requires "liquid_2008x32d" "2.3.5";
requires "VectorRender" "7.0 - 3.209 - cut 200802250428";
requires "Mayatomr" "9.0.1.4m - 3.6.51.0 ";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya Unlimited 2008";
fileInfo "version" "2008 Extension 2";
fileInfo "cutIdentifier" "200802250025-718075";
fileInfo "osv" "Microsoft Windows XP Service Pack 2 (Build 2600)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -38.495771787611936 30.62748616387028 -0.88434493643325596 ;
	setAttr ".r" -type "double3" -38.738352729568533 -86.199999999980946 4.7991059259394143e-014 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".fs" 10.372;
	setAttr ".fd" 35;
	setAttr ".coi" 48.44857196603396;
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
	setAttr -s 3 ".rlio";
	setAttr -s 3 ".rlio";
	setAttr ".t" -type "double3" 1.4024019556278926 0 0.87853797060105343 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pSphere1";
	addAttr -ci true -k true -sn "liqShadingRate" -ln "liqShadingRate" -dv 1 -min 0.001 
		-at "float";
	addAttr -ci true -k true -sn "liqDiceRasterOrient" -ln "liqDiceRasterOrient" -dv 
		1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "liqDoubleShaded" -ln "liqDoubleShaded" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -uac -k true -sn "liqColor" -ln "liqColor" -at "float3" -nc 3;
	addAttr -ci true -k true -sn "red" -ln "red" -dv 1 -at "float" -p "liqColor";
	addAttr -ci true -k true -sn "green" -ln "green" -dv 1 -at "float" -p "liqColor";
	addAttr -ci true -k true -sn "blue" -ln "blue" -dv 1 -at "float" -p "liqColor";
	addAttr -ci true -uac -sn "liqOpacity" -ln "liqOpacity" -at "float3" -nc 3;
	addAttr -ci true -sn "red1" -ln "red1" -dv 1 -at "float" -p "liqOpacity";
	addAttr -ci true -sn "green1" -ln "green1" -dv 1 -at "float" -p "liqOpacity";
	addAttr -ci true -sn "blue1" -ln "blue1" -dv 1 -at "float" -p "liqOpacity";
	addAttr -ci true -k true -sn "liqHitModeCamera" -ln "liqHitModeCamera" -min 0 -max 
		1 -en "Primitive:Shader" -at "enum";
	addAttr -ci true -k true -sn "liqMatte" -ln "liqMatte" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "liqStrategy" -ln "liqStrategy" -min 0 -max 1 -en "grids:vpvolumes" 
		-at "enum";
	addAttr -ci true -k true -sn "liqVolumeIntersectionStrategy" -ln "liqVolumeIntersectionStrategy" 
		-min 0 -max 1 -en "exclusive:additive" -at "enum";
	addAttr -ci true -k true -sn "liqVolumeIntersectionPriority" -ln "liqVolumeIntersectionPriority" 
		-at "double";
	addAttr -ci true -k true -sn "liquidCustomShadingGroup" -ln "liquidCustomShadingGroup" 
		-at "message";
	setAttr ".t" -type "double3" -0.66227611484835691 2.8985409243182048 3.3551647371240456 ;
	setAttr -k on ".liqHitModeCamera" 1;
createNode mesh -n "pSphereShape1" -p "pSphere1";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -max 12 -smx 8 -at "float";
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
createNode transform -n "pointLight1";
	setAttr -s 2 ".rlio";
	setAttr -s 2 ".rlio";
	setAttr ".t" -type "double3" -7.8296358714349097 6.1611067752271653 -0.67878355780008581 ;
createNode pointLight -n "pointLightShape1" -p "pointLight1";
	addAttr -ci true -sn "liquidLightShaderNode" -ln "liquidLightShaderNode" -at "message";
	setAttr -k off ".v";
	setAttr ".in" 1.9833999872207642;
	setAttr ".us" no;
createNode transform -n "pPlane2";
	setAttr -s 3 ".rlio";
	setAttr -s 3 ".rlio";
	setAttr ".t" -type "double3" 15.274468653844025 0 2.4288092206352889 ;
	setAttr ".r" -type "double3" 0 0 -83.967731520599713 ;
createNode mesh -n "pPlaneShape2" -p "pPlane2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pointLight2";
	setAttr -s 3 ".rlio";
	setAttr -s 3 ".rlio";
	setAttr ".t" -type "double3" -8.5314394239962112 15.734825479065391 7.1039934537166367 ;
createNode pointLight -n "pointLightShape2" -p "pointLight2";
	addAttr -ci true -sn "liquidLightShaderNode" -ln "liquidLightShaderNode" -at "message";
	setAttr -k off ".v";
	setAttr ".in" 1.4049999713897705;
	setAttr ".us" no;
createNode transform -n "pointLight3";
	setAttr -s 2 ".rlio";
	setAttr -s 2 ".rlio";
	setAttr ".t" -type "double3" 17.486464298170283 -4.4321903003957139 0 ;
createNode pointLight -n "pointLightShape3" -p "pointLight3";
	setAttr -k off ".v";
	setAttr ".in" 1.0743999481201172;
createNode transform -n "pSphere2";
	setAttr ".t" -type "double3" 4.0870581653861393 0 7.4212191164591808 ;
createNode mesh -n "pSphereShape2" -p "pSphere2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pSphere3";
	setAttr ".t" -type "double3" -3.6002286809402335 0 6.8450385976217145 ;
createNode mesh -n "pSphereShape3" -p "pSphere3";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -max 12 -smx 8 -at "float";
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
createNode transform -n "pCube1";
	setAttr ".t" -type "double3" -8.8845290750915353 0 7.5362955444658253 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder1";
	setAttr ".t" -type "double3" -8.1000294638896335 0 9.084514556730598 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -max 12 -smx 8 -at "float";
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
createNode transform -n "pCone1";
	setAttr ".t" -type "double3" -8.3145936055707566 0 10.650870990261026 ;
createNode mesh -n "pConeShape1" -p "pCone1";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -max 12 -smx 8 -at "float";
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
createNode transform -n "pTorus1";
	setAttr ".t" -type "double3" -9.6551365687082793 0 12.148540657223199 ;
createNode mesh -n "pTorusShape1" -p "pTorus1";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -max 12 -smx 8 -at "float";
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
createNode transform -n "pPlane3";
	setAttr ".t" -type "double3" -15.827792394326792 0 7.328479243793149 ;
createNode mesh -n "pPlaneShape3" -p "pPlane3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube2";
createNode mesh -n "pCubeShape2" -p "pCube2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr -s 4 ".pt";
createNode transform -n "pCube3";
	setAttr ".t" -type "double3" -4.8316707117643638 0 0.42383926656853321 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt";
	setAttr -s 8 ".pt";
createNode transform -n "pSphere4";
	setAttr ".t" -type "double3" 1.6629783540037728 3.4 -3.0766847465855438 ;
createNode mesh -n "pSphereShape4" -p "pSphere4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "spotLight1";
	setAttr ".t" -type "double3" -1.2945701765034379 5.2181641690142397 -0.97286402733910382 ;
	setAttr ".r" -type "double3" -175.62086832652551 -121.74599121938678 150.74326091817852 ;
createNode spotLight -n "spotLightShape1" -p "spotLight1";
	addAttr -ci true -sn "liquidLightShaderNode" -ln "liquidLightShaderNode" -at "message";
	setAttr -k off ".v";
createNode transform -n "pSphere5";
	setAttr ".t" -type "double3" 1.8886440672498868 3.4322837493578753 -7.8155766748553468 ;
createNode mesh -n "pSphereShape5" -p "pSphere5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "spotLight2";
	setAttr ".t" -type "double3" -1.3410698279392008 5.4188686125809857 -10.317006900358093 ;
	setAttr ".r" -type "double3" -4.5652102588333481 -127.74857622720032 -19.251872128508705 ;
createNode spotLight -n "spotLightShape2" -p "spotLight2";
	setAttr -k off ".v";
createNode transform -n "camera1";
	setAttr ".t" -type "double3" -19.51667410329215 5.8065244281307908 5.3666376330459862 ;
	setAttr ".r" -type "double3" 6.5067745779513073 -92.835169018685718 -25.187099079640952 ;
createNode camera -n "DepthOfField1" -p "camera1";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.41732 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".ncp" 0.01;
	setAttr ".fs" 10;
	setAttr ".fd" 35;
	setAttr ".coi" 17.153164846475185;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
	setAttr ".dof" yes;
createNode transform -n "pCube4";
	addAttr -ci true -k true -sn "liqVisibilityCamera" -ln "liqVisibilityCamera" -dv 
		1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "liqVisibilityNewTransmission" -ln "liqVisibilityNewTransmission" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "liqVisibilityDiffuse" -ln "liqVisibilityDiffuse" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "liqVisibilitySpecular" -ln "liqVisibilitySpecular" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "liqHitModeDiffuse" -ln "liqHitModeDiffuse" -min 0 
		-max 1 -en "Primitive:Shader" -at "enum";
	addAttr -ci true -k true -sn "liqHitModeSpecular" -ln "liqHitModeSpecular" -min 
		0 -max 1 -en "Primitive:Shader" -at "enum";
	addAttr -ci true -k true -sn "liqHitModeTransmission" -ln "liqHitModeTransmission" 
		-min 0 -max 1 -en "Primitive:Shader" -at "enum";
	addAttr -ci true -k true -sn "liqVisibilityPhoton" -ln "liqVisibilityPhoton" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "liqVisibilityMidpoint" -ln "liqVisibilityMidpoint" 
		-min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 2.2144942601468429 0 -7.0449447223300519 ;
	setAttr -k on ".liqVisibilityNewTransmission" yes;
	setAttr -k on ".liqVisibilityDiffuse" yes;
	setAttr -k on ".liqVisibilitySpecular" yes;
	setAttr -k on ".liqHitModeSpecular" 1;
	setAttr -k on ".liqHitModeTransmission" 1;
	setAttr -k on ".liqVisibilityPhoton" yes;
	setAttr -k on ".liqVisibilityMidpoint" yes;
createNode mesh -n "pCubeShape4" -p "pCube4";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -max 12 -smx 8 -at "float";
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
createNode transform -n "pCube5";
	addAttr -ci true -k true -sn "liqVisibilityCamera" -ln "liqVisibilityCamera" -dv 
		1 -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 2.3548477786072333 0 -4.4141088739502097 ;
createNode mesh -n "pCubeShape5" -p "pCube5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube6";
	addAttr -ci true -k true -sn "liqVisibilityDiffuse" -ln "liqVisibilityDiffuse" 
		-min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.1544831898580057 0 -3.8329005881536142 ;
	setAttr -k on ".liqVisibilityDiffuse" yes;
createNode mesh -n "pCubeShape6" -p "pCube6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube7";
	addAttr -ci true -k true -sn "liqVisibilitySpecular" -ln "liqVisibilitySpecular" 
		-min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -4.0967172181522251 0 -3.3456137487634674 ;
	setAttr -k on ".liqVisibilitySpecular" yes;
createNode mesh -n "pCubeShape7" -p "pCube7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube8";
	addAttr -ci true -k true -sn "liqVisibilityNewTransmission" -ln "liqVisibilityNewTransmission" 
		-min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -6.9058900723039436 0 -3.0576167715317286 ;
	setAttr -k on ".liqVisibilityNewTransmission" yes;
createNode mesh -n "pCubeShape8" -p "pCube8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube9";
	addAttr -ci true -k true -sn "liqVisibilityPhoton" -ln "liqVisibilityPhoton" -min 
		0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -9.3789491309228374 0 -2.9351435109528179 ;
	setAttr -k on ".liqVisibilityPhoton" yes;
createNode mesh -n "pCubeShape9" -p "pCube9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube10";
	addAttr -ci true -k true -sn "liqVisibilityMidpoint" -ln "liqVisibilityMidpoint" 
		-min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -11.278736370125142 0 -2.8592319319179413 ;
	setAttr -k on ".liqVisibilityMidpoint" yes;
createNode mesh -n "pCubeShape10" -p "pCube10";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube11";
	addAttr -ci true -k true -sn "liqShadingRate" -ln "liqShadingRate" -dv 1 -min 0.001 
		-at "float";
	addAttr -ci true -k true -sn "liqDiceRasterOrient" -ln "liqDiceRasterOrient" -dv 
		1 -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "liqDoubleShaded" -ln "liqDoubleShaded" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -uac -k true -sn "liqColor" -ln "liqColor" -at "float3" -nc 3;
	addAttr -ci true -k true -sn "red" -ln "red" -dv 1 -at "float" -p "liqColor";
	addAttr -ci true -k true -sn "green" -ln "green" -dv 1 -at "float" -p "liqColor";
	addAttr -ci true -k true -sn "blue" -ln "blue" -dv 1 -at "float" -p "liqColor";
	addAttr -ci true -uac -sn "liqOpacity" -ln "liqOpacity" -at "float3" -nc 3;
	addAttr -ci true -sn "red1" -ln "red1" -dv 1 -at "float" -p "liqOpacity";
	addAttr -ci true -sn "green1" -ln "green1" -dv 1 -at "float" -p "liqOpacity";
	addAttr -ci true -sn "blue1" -ln "blue1" -dv 1 -at "float" -p "liqOpacity";
	addAttr -ci true -k true -sn "liqHitModeCamera" -ln "liqHitModeCamera" -min 0 -max 
		1 -en "Primitive:Shader" -at "enum";
	addAttr -ci true -k true -sn "liqMatte" -ln "liqMatte" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "liqStrategy" -ln "liqStrategy" -min 0 -max 1 -en "grids:vpvolumes" 
		-at "enum";
	addAttr -ci true -k true -sn "liqVolumeIntersectionStrategy" -ln "liqVolumeIntersectionStrategy" 
		-min 0 -max 1 -en "exclusive:additive" -at "enum";
	addAttr -ci true -k true -sn "liqVolumeIntersectionPriority" -ln "liqVolumeIntersectionPriority" 
		-at "double";
	addAttr -ci true -k true -sn "liquidCustomShadingGroup" -ln "liquidCustomShadingGroup" 
		-at "message";
	setAttr ".t" -type "double3" 7.0730527174017084 0 -9.8393914110855913 ;
	setAttr -k on ".liqHitModeCamera" 1;
createNode mesh -n "pCubeShape11" -p "pCube11";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube12";
	addAttr -ci true -k true -sn "liqShadingRate" -ln "liqShadingRate" -dv 1 -min 0.001 
		-at "float";
	setAttr ".t" -type "double3" 6.6286358390263516 0 -8.1724014352557752 ;
createNode mesh -n "pCubeShape12" -p "pCube12";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube13";
	addAttr -ci true -uac -k true -sn "liqColor" -ln "liqColor" -at "float3" -nc 3;
	addAttr -ci true -k true -sn "red" -ln "red" -dv 1 -at "float" -p "liqColor";
	addAttr -ci true -k true -sn "green" -ln "green" -dv 1 -at "float" -p "liqColor";
	addAttr -ci true -k true -sn "blue" -ln "blue" -dv 1 -at "float" -p "liqColor";
	setAttr ".t" -type "double3" 3.9422113244346768 0 -7.5806684435620788 ;
createNode mesh -n "pCubeShape13" -p "pCube13";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube14";
	addAttr -ci true -uac -sn "liqOpacity" -ln "liqOpacity" -at "float3" -nc 3;
	addAttr -ci true -sn "red1" -ln "red1" -dv 1 -at "float" -p "liqOpacity";
	addAttr -ci true -sn "green1" -ln "green1" -dv 1 -at "float" -p "liqOpacity";
	addAttr -ci true -sn "blue1" -ln "blue1" -dv 1 -at "float" -p "liqOpacity";
	setAttr ".t" -type "double3" 0.91766700796114975 0 -7.0472437629000346 ;
createNode mesh -n "pCubeShape14" -p "pCube14";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube15";
	addAttr -ci true -k true -sn "liqMatte" -ln "liqMatte" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.9469421214385711 0 -6.3591091058488951 ;
createNode mesh -n "pCubeShape15" -p "pCube15";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube16";
	addAttr -ci true -k true -sn "liqHitModeCamera" -ln "liqHitModeCamera" -min 0 -max 
		1 -en "Primitive:Shader" -at "enum";
	setAttr ".t" -type "double3" -4.6669118300766357 0 -5.9202955254475356 ;
createNode mesh -n "pCubeShape16" -p "pCube16";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube17";
	addAttr -ci true -k true -sn "liqStrategy" -ln "liqStrategy" -min 0 -max 1 -en 
		"grids:vpvolumes" -at "enum";
	setAttr ".t" -type "double3" -6.5743350341257525 0 -6.2466446705364884 ;
	setAttr -k on ".liqStrategy" 1;
createNode mesh -n "pCubeShape17" -p "pCube17";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube18";
	addAttr -ci true -k true -sn "liqVolumeIntersectionStrategy" -ln "liqVolumeIntersectionStrategy" 
		-min 0 -max 1 -en "exclusive:additive" -at "enum";
	setAttr ".t" -type "double3" -8.6201118483220966 0 -6.2742423279712067 ;
	setAttr -k on ".liqVolumeIntersectionStrategy" 1;
createNode mesh -n "pCubeShape18" -p "pCube18";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube19";
	addAttr -ci true -k true -sn "liqVolumeIntersectionPriority" -ln "liqVolumeIntersectionPriority" 
		-at "double";
	setAttr ".t" -type "double3" -10.501890732197253 0 -6.311381741465377 ;
	setAttr -k on ".liqVolumeIntersectionPriority" 0.3;
createNode mesh -n "pCubeShape19" -p "pCube19";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube20";
	addAttr -ci true -k true -sn "liqDiceRasterOrient" -ln "liqDiceRasterOrient" -dv 
		1 -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -12.289095881832491 0 -6.2291264671990199 ;
	setAttr -k on ".liqDiceRasterOrient" no;
createNode mesh -n "pCubeShape20" -p "pCube20";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -max 12 -smx 8 -at "float";
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
createNode transform -n "pCube21";
	addAttr -ci true -k true -sn "liqDoubleShaded" -ln "liqDoubleShaded" -min 0 -max 
		1 -at "bool";
	setAttr ".t" -type "double3" -14.050403273395929 0 -6.3303960372112238 ;
	setAttr -k on ".liqDoubleShaded" yes;
createNode mesh -n "pCubeShape21" -p "pCube21";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube22";
	addAttr -ci true -k true -sn "liquidCustomShadingGroup" -ln "liquidCustomShadingGroup" 
		-at "message";
	setAttr ".t" -type "double3" -15.660636954410354 0 -6.5643237930403764 ;
createNode mesh -n "pCubeShape22" -p "pCube22";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube23";
	addAttr -ci true -k true -sn "liqVisibilityNewTransmission" -ln "liqVisibilityNewTransmission" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "liqVisibilityDiffuse" -ln "liqVisibilityDiffuse" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "liqVisibilitySpecular" -ln "liqVisibilitySpecular" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "liqHitModeDiffuse" -ln "liqHitModeDiffuse" -min 0 
		-max 1 -en "Primitive:Shader" -at "enum";
	addAttr -ci true -k true -sn "liqHitModeSpecular" -ln "liqHitModeSpecular" -min 
		0 -max 1 -en "Primitive:Shader" -at "enum";
	addAttr -ci true -k true -sn "liqHitModeTransmission" -ln "liqHitModeTransmission" 
		-min 0 -max 1 -en "Primitive:Shader" -at "enum";
	addAttr -ci true -k true -sn "liqVisibilityPhoton" -ln "liqVisibilityPhoton" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "liqVisibilityMidpoint" -ln "liqVisibilityMidpoint" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "liqTraceSampleMotion" -ln "liqTraceSampleMotion" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "liqTraceDisplacements" -ln "liqTraceDisplacements" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -sn "liqTraceBias" -ln "liqTraceBias" -dv 0.01 -at "float";
	addAttr -ci true -sn "liqMaxDiffuseDepth" -ln "liqMaxDiffuseDepth" -dv 1 -at "short";
	addAttr -ci true -sn "liqMaxSpecularDepth" -ln "liqMaxSpecularDepth" -dv 3 -at "short";
	setAttr ".t" -type "double3" 5.9770108715666126 0 -15.655122605836997 ;
	setAttr -k on ".liqHitModeSpecular" 1;
	setAttr -k on ".liqHitModeTransmission" 1;
createNode mesh -n "pCubeShape23" -p "pCube23";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -max 12 -smx 8 -at "float";
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
createNode transform -n "pCube24";
	addAttr -ci true -k true -sn "liqVisibilityNewTransmission" -ln "liqVisibilityNewTransmission" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "liqVisibilityDiffuse" -ln "liqVisibilityDiffuse" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "liqVisibilitySpecular" -ln "liqVisibilitySpecular" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "liqHitModeDiffuse" -ln "liqHitModeDiffuse" -min 0 
		-max 1 -en "Primitive:Shader" -at "enum";
	addAttr -ci true -k true -sn "liqHitModeSpecular" -ln "liqHitModeSpecular" -min 
		0 -max 1 -en "Primitive:Shader" -at "enum";
	addAttr -ci true -k true -sn "liqHitModeTransmission" -ln "liqHitModeTransmission" 
		-min 0 -max 1 -en "Primitive:Shader" -at "enum";
	addAttr -ci true -k true -sn "liqVisibilityPhoton" -ln "liqVisibilityPhoton" -min 
		0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "liqVisibilityMidpoint" -ln "liqVisibilityMidpoint" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "liqTraceSampleMotion" -ln "liqTraceSampleMotion" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "liqTraceDisplacements" -ln "liqTraceDisplacements" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -sn "liqTraceBias" -ln "liqTraceBias" -dv 0.01 -at "float";
	addAttr -ci true -sn "liqMaxDiffuseDepth" -ln "liqMaxDiffuseDepth" -dv 1 -at "short";
	addAttr -ci true -sn "liqMaxSpecularDepth" -ln "liqMaxSpecularDepth" -dv 3 -at "short";
	setAttr ".t" -type "double3" 5.2937499029530812 0 -13.496090301256094 ;
	setAttr -k on ".liqHitModeDiffuse" 1;
	setAttr ".liqTraceSampleMotion" yes;
	setAttr ".liqTraceDisplacements" yes;
	setAttr ".liqTraceBias" 0.019999999552965164;
	setAttr ".liqMaxDiffuseDepth" 2;
	setAttr ".liqMaxSpecularDepth" 4;
createNode mesh -n "pCubeShape24" -p "pCube24";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube25";
	addAttr -ci true -sn "liqIrradianceShadingRate" -ln "liqIrradianceShadingRate" 
		-dv 1 -at "float";
	addAttr -ci true -sn "liqIrradianceNSamples" -ln "liqIrradianceNSamples" -dv 64 
		-min 1 -smx 256 -at "short";
	addAttr -ci true -sn "liqIrradianceMaxError" -ln "liqIrradianceMaxError" -dv 0.5 
		-min 0 -max 1 -at "float";
	addAttr -ci true -sn "liqIrradianceMaxPixelDist" -ln "liqIrradianceMaxPixelDist" 
		-dv 30 -min -1 -smx 100 -at "float";
	addAttr -ci true -sn "liqIrradianceHandle" -ln "liqIrradianceHandle" -dt "string";
	addAttr -ci true -sn "liqIrradianceFileMode" -ln "liqIrradianceFileMode" -min 0 
		-max 3 -en "None:Read:Write:ReadWrite" -at "enum";
	setAttr ".t" -type "double3" 6.1774019797439195 0 -20.161892672685553 ;
createNode mesh -n "pCubeShape25" -p "pCube25";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube26";
	addAttr -ci true -sn "liqIrradianceShadingRate" -ln "liqIrradianceShadingRate" 
		-dv 1 -at "float";
	addAttr -ci true -sn "liqIrradianceNSamples" -ln "liqIrradianceNSamples" -dv 64 
		-min 1 -smx 256 -at "short";
	addAttr -ci true -sn "liqIrradianceMaxError" -ln "liqIrradianceMaxError" -dv 0.5 
		-min 0 -max 1 -at "float";
	addAttr -ci true -sn "liqIrradianceMaxPixelDist" -ln "liqIrradianceMaxPixelDist" 
		-dv 30 -min -1 -smx 100 -at "float";
	addAttr -ci true -sn "liqIrradianceHandle" -ln "liqIrradianceHandle" -dt "string";
	addAttr -ci true -sn "liqIrradianceFileMode" -ln "liqIrradianceFileMode" -min 0 
		-max 3 -en "None:Read:Write:ReadWrite" -at "enum";
	setAttr ".t" -type "double3" 5.9521009843669717 0 -17.931433017043538 ;
	setAttr ".liqIrradianceShadingRate" 2;
	setAttr ".liqIrradianceNSamples" 65;
	setAttr ".liqIrradianceHandle" -type "string" "aa";
	setAttr ".liqIrradianceFileMode" 1;
createNode mesh -n "pCubeShape26" -p "pCube26";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube27";
	addAttr -ci true -sn "liqPhotonGlobalMap" -ln "liqPhotonGlobalMap" -dt "string";
	addAttr -ci true -sn "liqPhotonCausticMap" -ln "liqPhotonCausticMap" -dt "string";
	addAttr -ci true -sn "liqPhotonEstimator" -ln "liqPhotonEstimator" -dv 500 -min 
		0 -at "float";
	addAttr -ci true -sn "liqPhotonShadingModel" -ln "liqPhotonShadingModel" -min 0 
		-max 5 -en "Matte:Glass:Water:Chrome:Transparent:Dielectric" -at "enum";
	setAttr ".t" -type "double3" 3.7235719784703321 0 -15.484488415025758 ;
createNode mesh -n "pCubeShape27" -p "pCube27";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube28";
	addAttr -ci true -sn "liqPhotonGlobalMap" -ln "liqPhotonGlobalMap" -dt "string";
	addAttr -ci true -sn "liqPhotonCausticMap" -ln "liqPhotonCausticMap" -dt "string";
	addAttr -ci true -sn "liqPhotonEstimator" -ln "liqPhotonEstimator" -dv 500 -min 
		0 -at "float";
	addAttr -ci true -sn "liqPhotonShadingModel" -ln "liqPhotonShadingModel" -min 0 
		-max 5 -en "Matte:Glass:Water:Chrome:Transparent:Dielectric" -at "enum";
	setAttr ".t" -type "double3" 3.4312297754865853 0 -12.438755138761337 ;
	setAttr ".liqPhotonGlobalMap" -type "string" "a";
	setAttr ".liqPhotonCausticMap" -type "string" "b";
	setAttr ".liqPhotonEstimator" 501;
	setAttr ".liqPhotonShadingModel" 1;
createNode mesh -n "pCubeShape28" -p "pCube28";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube29";
	addAttr -ci true -sn "liqTransformationBlur" -ln "liqTransformationBlur" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -sn "liqDeformationBlur" -ln "liqDeformationBlur" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "liqMotionSamples" -ln "liqMotionSamples" -dv 2 -min 0 -max 
		255 -at "byte";
	addAttr -ci true -sn "liqMotionFactor" -ln "liqMotionFactor" -dv 1 -min 0 -smx 16 
		-at "float";
	setAttr ".t" -type "double3" 12.111585051808859 0 -20.336103748725716 ;
createNode mesh -n "pCubeShape29" -p "pCube29";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -max 12 -smx 8 -at "float";
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
createNode transform -n "pCube30";
	addAttr -ci true -sn "liqTransformationBlur" -ln "liqTransformationBlur" -min 0 
		-max 1 -at "bool";
	addAttr -ci true -sn "liqDeformationBlur" -ln "liqDeformationBlur" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "liqMotionSamples" -ln "liqMotionSamples" -dv 2 -min 0 -max 
		255 -at "byte";
	addAttr -ci true -sn "liqMotionFactor" -ln "liqMotionFactor" -dv 1 -min 0 -smx 16 
		-at "float";
	setAttr ".t" -type "double3" 12.442163476278473 0 -17.478997909961357 ;
	setAttr ".liqTransformationBlur" yes;
	setAttr ".liqDeformationBlur" yes;
	setAttr ".liqMotionSamples" 3;
	setAttr ".liqMotionFactor" 2;
createNode mesh -n "pCubeShape30" -p "pCube30";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube31";
	addAttr -ci true -sn "liqRIBBox" -ln "liqRIBBox" -dt "string";
	addAttr -ci true -sn "liqRIBGenerator" -ln "liqRIBGenerator" -dt "string";
	addAttr -ci true -sn "liqRIBReadArchive" -ln "liqRIBReadArchive" -dt "string";
	addAttr -ci true -sn "liqRIBDelayedReadArchive" -ln "liqRIBDelayedReadArchive" -dt "string";
	addAttr -ci true -sn "liqRIBDelayedReadArchiveBBoxScale" -ln "liqRIBDelayedReadArchiveBBoxScale" 
		-dv 1 -smn 0 -smx 2 -at "double";
	setAttr ".t" -type "double3" 7.191622188880558 -3.5171865420124959e-013 -18.007542263444485 ;
	setAttr ".liqRIBBox" -type "string" "\\# print(\"\\#++++++++++ In RIBBox\"); \\n\r\n\\# ReadArchive \"E:/dev/autodesk/maya/myplugin/project/liquid_/2.3.3/test/_ribbox.rib\"";
createNode mesh -n "pCubeShape31" -p "pCube31";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -max 12 -smx 8 -at "float";
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
createNode transform -n "pCube32";
	addAttr -ci true -sn "liqRIBBox" -ln "liqRIBBox" -dt "string";
	addAttr -ci true -sn "liqRIBGenerator" -ln "liqRIBGenerator" -dt "string";
	addAttr -ci true -sn "liqRIBReadArchive" -ln "liqRIBReadArchive" -dt "string";
	addAttr -ci true -sn "liqRIBDelayedReadArchive" -ln "liqRIBDelayedReadArchive" -dt "string";
	addAttr -ci true -sn "liqRIBDelayedReadArchiveBBoxScale" -ln "liqRIBDelayedReadArchiveBBoxScale" 
		-dv 1 -smn 0 -smx 2 -at "double";
	setAttr ".t" -type "double3" 7.7140144230148664 0 -13.290760010823027 ;
	setAttr ".liqRIBBox" -type "string" "";
	setAttr ".liqRIBGenerator" -type "string" "eval(\"source test_generator.mel\"); test_subdsphere(\"pCube50\");";
	setAttr ".liqRIBReadArchive" -type "string" "";
	setAttr ".liqRIBDelayedReadArchive" -type "string" "";
createNode mesh -n "pCubeShape32" -p "pCube32";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 4.1594481 0 0 4.1594481 
		0 0 4.1594481 0 0 4.1594481 0 0 4.1594481 0 0 4.1594481 0 0 4.1594481 0 0 4.1594481 
		0;
createNode transform -n "pCube33";
	addAttr -ci true -sn "liqShdRIBBox" -ln "liqShdRIBBox" -dt "string";
	addAttr -ci true -sn "liqShdRIBGenerator" -ln "liqShdRIBGenerator" -dt "string";
	addAttr -ci true -sn "liqShdRIBReadArchive" -ln "liqShdRIBReadArchive" -dt "string";
	addAttr -ci true -sn "liqShdRIBDelayedReadArchive" -ln "liqShdRIBDelayedReadArchive" 
		-dt "string";
	addAttr -ci true -sn "liqShdRIBDelayedReadArchiveBBoxScale" -ln "liqShdRIBDelayedReadArchiveBBoxScale" 
		-dv 1 -smn 0 -smx 2 -at "double";
	setAttr ".t" -type "double3" 7.9096009082792662 0 -9.4444822831617259 ;
	setAttr ".liqShdRIBBox" -type "string" "\\# print(\"#++++++++++ In Shadow RIBBox\");";
	setAttr ".liqShdRIBGenerator" -type "string" "c_s.rib";
	setAttr ".liqShdRIBReadArchive" -type "string" "a_s.rib";
	setAttr ".liqShdRIBDelayedReadArchive" -type "string" "b_s.rib";
createNode mesh -n "pCubeShape33" -p "pCube33";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube34";
	setAttr ".t" -type "double3" 4.9376338700733058 0 -14.601618361681087 ;
createNode mesh -n "pCubeShape34" -p "pCube34";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube35";
	addAttr -ci true -sn "liqInheritPPColor" -ln "liqInheritPPColor" -min 0 -max 1 
		-at "bool";
	setAttr ".t" -type "double3" 4.5077844472765634 0 -12.501283951452983 ;
	setAttr ".liqInheritPPColor" yes;
createNode mesh -n "pCubeShape35" -p "pCube35";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube36";
	setAttr ".t" -type "double3" 2.2256488302428679 0 -12.124180192645056 ;
createNode mesh -n "pCubeShape36" -p "pCube36";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube37";
	addAttr -ci true -sn "liqInvisible" -ln "liqInvisible" -dv 1 -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 4.0170117755099142 0 -9.217789358011931 ;
createNode mesh -n "pCubeShape37" -p "pCube37";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube38";
	setAttr ".t" -type "double3" 5.144021351674759 0 -14.790156357658386 ;
createNode mesh -n "pCubeShape38" -p "pCube38";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube39";
	addAttr -ci true -k true -sn "liqIgnoreShapes" -ln "liqIgnoreShapes" -dv 1 -min 
		0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 5.9074938003130129 0 -12.18831406114516 ;
createNode mesh -n "pCubeShape39" -p "pCube39";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube40";
	setAttr ".t" -type "double3" 6.4090682872970817 0 -18.159659281272347 ;
createNode mesh -n "pCubeShape40" -p "pCube40";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube41";
	addAttr -ci true -k true -sn "liqTrimCurveSense" -ln "liqTrimCurveSense" -min 0 
		-max 1 -en "inside:outside" -at "enum";
	setAttr ".t" -type "double3" 6.2473013107392532 0 -15.380091145787063 ;
	setAttr -k on ".liqTrimCurveSense" 1;
createNode mesh -n "pCubeShape41" -p "pCube41";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "curve1";
createNode nurbsCurve -n "curveShape1" -p "curve1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 7 0 no 3
		12 0 0 0 1 2 3 4 5 6 7 7 7
		10
		11.776743201076137 0 -13.048814524204545
		13.849354519687992 0 -7.9261809617503873
		5.9311029386578795 0 -4.0600801645992304
		2.1751909589572591 0 -2.3408706454748032
		2.4005324820283462 0 -0.3933007691085022
		6.3776226859994551 0 1.7374765408375872
		13.433278519974479 0 1.2682018972821734
		19.69991821505397 0 3.1526257412883627
		20.752035365780685 0 6.1124392743257374
		15.368394715119585 0 7.8116796998394351
		;
createNode transform -n "pCube42";
	setAttr ".t" -type "double3" 8.869282753074053 0 -18.965958612326006 ;
createNode mesh -n "pCubeShape42" -p "pCube42";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube43";
	addAttr -ci true -sn "liqStitchEnable" -ln "liqStitchEnable" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "liqStitchTraceEnable" -ln "liqStitchTraceEnable" -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "liqStitchNewGroup" -ln "liqStitchNewGroup" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 8.8934125857900952 0 -16.457342347061314 ;
	setAttr ".liqStitchEnable" no;
	setAttr ".liqStitchTraceEnable" yes;
	setAttr ".liqStitchNewGroup" yes;
createNode mesh -n "pCubeShape43" -p "pCube43";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube44";
	setAttr ".t" -type "double3" 12.22177785996525 0 -19.383735135804329 ;
createNode mesh -n "pCubeShape44" -p "pCube44";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube45";
	addAttr -ci true -sn "liqStochasticSigma" -ln "liqStochasticSigma" -at "long";
	addAttr -ci true -sn "liqStochasticPointFallOff" -ln "liqStochasticPointFallOff" 
		-at "long";
	setAttr ".t" -type "double3" 12.704981055372251 0 -17.81671181490475 ;
	setAttr ".liqStochasticSigma" 1;
	setAttr ".liqStochasticPointFallOff" 1;
createNode mesh -n "pCubeShape45" -p "pCube45";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube46";
	setAttr ".t" -type "double3" 5.0905468690748563 0 -15.252322806373428 ;
createNode mesh -n "pCubeShape46" -p "pCube46";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube47";
	addAttr -ci true -sn "liqDiceBinary" -ln "liqDiceBinary" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "liqDiceHair" -ln "liqDiceHair" -min 0 -max 1 -at "bool";
	addAttr -ci true -k true -sn "liqDiceRasterOrient" -ln "liqDiceRasterOrient" -dv 
		1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "liqDiceStrategy" -ln "liqDiceStrategy" -min 0 -max 1 -en "planarprojection:sphericalprojection" 
		-at "enum";
	addAttr -ci true -sn "liqDiceReferenceCamera" -ln "liqDiceReferenceCamera" -min 
		0 -max 1 -en "worldcamera:framecamera" -at "enum";
	setAttr ".t" -type "double3" 5.1506028584260335 0 -12.760981178325657 ;
	setAttr ".liqDiceBinary" yes;
	setAttr ".liqDiceHair" yes;
	setAttr ".liqDiceStrategy" 1;
	setAttr ".liqDiceReferenceCamera" 1;
createNode mesh -n "pCubeShape47" -p "pCube47";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube48";
	setAttr ".t" -type "double3" 2.1671045533762339 0 -14.38240959543835 ;
createNode mesh -n "pCubeShape48" -p "pCube48";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube49";
	addAttr -ci true -sn "liqDerivativesCentered" -ln "liqDerivativesCentered" -dv 
		1 -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "liqDerivativesExtrapolate" -ln "liqDerivativesExtrapolate" 
		-dv 1 -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 4.2657704864068933 0 -12.687577552293186 ;
	setAttr ".liqDerivativesCentered" no;
	setAttr ".liqDerivativesExtrapolate" no;
createNode mesh -n "pCubeShape49" -p "pCube49";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -max 12 -smx 8 -at "float";
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
createNode transform -n "particle1";
createNode particle -n "particleShape1" -p "particle1";
	addAttr -ci true -sn "lifespanPP" -ln "lifespanPP" -bt "life" -dt "doubleArray";
	addAttr -ci true -h true -sn "lifespanPP0" -ln "lifespanPP0" -bt "life" -dt "doubleArray";
	addAttr -ci true -sn "lifespan" -ln "lifespan" -bt "life" -at "double";
	addAttr -ci true -sn "rgbPP" -ln "rgbPP" -dt "vectorArray";
	addAttr -ci true -h true -sn "rgbPP0" -ln "rgbPP0" -dt "vectorArray";
	addAttr -is true -ci true -sn "colorAccum" -ln "colorAccum" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -sn "useLighting" -ln "useLighting" -min 0 -max 1 -at "bool";
	addAttr -is true -ci true -sn "pointSize" -ln "pointSize" -dv 2 -min 1 -max 60 -at "long";
	addAttr -is true -ci true -sn "normalDir" -ln "normalDir" -dv 2 -min 1 -max 3 -at "long";
	setAttr -k off ".v";
	setAttr ".gf" -type "Int32Array" 0 ;
	setAttr ".pos0" -type "vectorArray" 210 -5.9319461027816907 0 5.3172315335846054 -5.9319461027816907
		 0 5.3172315335846054 -5.9319461027816907 0 5.3172315335846054 -5.9319461027816907
		 0 5.3172315335846054 -5.9319461027816907 0 5.3172315335846054 -5.9319461027816907
		 0 5.3172315335846054 -5.9319461027816907 0 5.3172315335846054 -5.9319461027816907
		 0 5.3172315335846054 -5.9319461027816907 0 5.3172315335846054 -5.9319461027816907
		 0 5.3172315335846054 6.1197521185259021 0 -5.7030081704387126 6.1197521185259021
		 0 -5.7030081704387126 6.1197521185259021 0 -5.7030081704387126 6.1197521185259021
		 0 -5.7030081704387126 6.1197521185259021 0 -5.7030081704387126 6.1197521185259021
		 0 -5.7030081704387126 6.1197521185259021 0 -5.7030081704387126 6.1197521185259021
		 0 -5.7030081704387126 6.1197521185259021 0 -5.7030081704387126 6.1197521185259021
		 0 -5.7030081704387126 3.3317374266634658 0 -9.642736294025152 3.3317374266638566
		 0.0098539467465030839 -9.2264262780790212 4.2547139036502202 4.8721722394682843 -14.910239091646236 3.8400565691777899
		 7.670511597301406 -9.8318843287835982 -2.3744027666276679 0.7677456488383072 -17.79547511652974 11.176573865942814
		 1.0091627339248888 -12.175842550168195 -2.9123297234443513 1.2646243436476823 -3.4672382841863829 8.4267413440309369
		 -3.1593900281851717 -2.6257106826611114 -1.9207865571771165 4.2783455812693205 -15.070168078304665 0.62859112854138033
		 0.74262370296551694 -16.404993921076557 0.89392999118952332 0 -6.1013789211378402 4.2292229623924911
		 -3.9282796943354015 -7.8706562326028671 7.7558034284552519 1.2698744962677821 -6.1422809124125202 -2.8556615452876315
		 0.26785941111970857 -1.4537259916002681 3.5570729406481334 7.8348402323868527 -10.781820731284991 2.5242144483328772
		 -4.2481729967084902 -10.899917719801916 9.433597231665189 1.746444545065593 -5.903675207072542 5.0810943622662137
		 1.3844815764010221 -2.2929121104333232 1.2650237091355194 -2.2105903670596305 -11.355724374963721 1.4839549018602156
		 1.1980141964813029 -11.579391475859218 4.399422495149544 0 -6.9253405391632192 0.36781528536289443
		 5.8548304291724662 -5.0137312136791188 -3.3402315541038021 -2.7431075521098691 -7.3727609855447049 2.5904904626132961
		 -2.7850086812022212 -2.4004482860737006 6.213993478790357 -3.0792796429371094 -7.1586224679563735 9.9950958330258075
		 5.4686617727471898 -2.5340609404396339 2.2414274629411111 -0.49895632652454225 -4.8297291999456924 10.941011419561427
		 3.5570055595333017 -1.0583157188076662 5.6958949016359526 -0.59656045883201614 -6.7946195677583141 10.94853205726961
		 -0.76339881580718583 -7.8551119536093559 3.407408233245846 0 -6.546482754984984 10.674936472724291
		 2.5331472423136603 -3.9940218765601525 3.6020022684024937 9.2961930313997954 -5.9156787645063229 7.8805489970482583
		 -6.4938182973251912 -8.0577175830178032 -0.16061570886740384 3.9411636984355169 0.67344033044499163 -3.1060297542356636
		 3.6841132405676902 -6.2846682313118745 -0.85297791132997247 -4.7973325483688356 -11.563427562159807 3.6995255439795542
		 2.6428870460717491 -6.3633776998951657 9.3335249693275273 1.2252416565887714 -0.55470249526333326 7.4587115689609789
		 8.6786706271297831 -6.9140970969867137 2.4720101042612654 0 -6.1048250617293025 8.115536750413689
		 -5.7626190436013403 -1.4225969595217141 -1.7005550638356723 0.98523991854751358 -7.473286239315529 -4.8367778827821226
		 3.0228707653342823 -7.5170086296481902 9.72009358870379 -2.612821929102509 -1.5544748664519918 -2.7392148674213033
		 0.84701577996316502 -14.058844749405795 2.411948599485946 -2.0201169345081027 -1.3784337782751681 -1.6717937771523381
		 -0.73567596713150607 -0.83784940272083652 2.3782487214924899 7.6397348566193202 -5.0928955519582946 4.6556527050995413
		 9.2051100287516618 -5.7185642194852253 1.2445147232316991 0 -5.5741322854070088 6.5423310811860382
		 -5.7295400699005938 -6.7190695754897103 6.1868225961338688 -3.4608559964218699 -5.9248780619039945 4.1441298763594538
		 -2.3935780963445907 1.5904919755332489 -3.0721122115444963 -5.9159932191759523 -10.719292290169852 8.3462507948605982
		 -0.015720057138537413 -5.2561614519941582 5.5828895265947445 2.7329575566925968 -4.3312244803840496 9.4503540959965484
		 2.6012221239226108 -4.0908347589420071 6.51142877773108 -3.2987904675439594 -7.0105764651262117 -6.0750225087664553
		 -1.7376017509242914 -11.141105023392205 0.108591669935727 0 -4.9260679749366085 -3.2530684360327555
		 3.6073251207495005 2.1530104932657315 4.188096881031278 -6.6751201684618522 -2.7316113720866406 2.2810105810833292
		 2.0605500879468153 -8.6709147514629237 -6.8642299111047578 6.319852437898561 -3.6956431480382443 -2.0563044732895008
		 1.7079902593903995 -6.6268983892207709 -4.3285968007829467 -0.7915259723799295 -6.2959861078415011 7.2372752862658629
		 -0.45646935594657378 -6.1737985459570064 4.7111290942149608 7.597544415134756 -2.1632353425980364 -3.1972075096681607
		 -2.6094543278173177 -3.2125824482434249 -1.0922242768252843 0 -4.1653292771184933 1.0753528695178716
		 7.7277239981729906 -3.1382876307445127 1.5579732308872707 -8.0449413560652516 -3.0803243628567554 2.3672896615757466
		 -6.3042517998782799 -1.6601897394749496 3.7111250667152262 7.1589987270256472 -8.0423349461495217 1.2840793308775744
		 -5.8480446087139626 -5.2177568902577729 -0.04571286064894764 -6.9299292964000614
		 -3.8343673542914711 -4.4496370181867206 -3.1401881638264229 -1.9814220146780013 -5.8856199704777623
		 -1.6087988907853656 -1.2361579231567941 -0.57596341645975713 -0.22452204132804354
		 -13.500650273996554 -1.7971151830136094 0 -3.7649882269118646 3.9631257393203896
		 -5.4232436826306696 2.244587082298604 -5.9210353112832763 5.7019668076532781 -0.86436007424972106 3.1360813352088996
		 -0.6595051107802874 -4.8603758085281648 0.79154042848070105 -8.0319187627258515 -2.48312216069785 -6.2274225252356956
		 -6.9095413091314128 -4.0559578423258138 -0.28544149405601615 -0.92265749270069364
		 2.9831306880522805 -2.5028985266422126 5.8142232401407767 -5.903091238701851 0.3018584033398426
		 4.2231943841256836 -12.308090204587113 5.9434269100802624 2.8560455911301119 -0.84774882341819024 -2.5996630949383821
		 0 -3.3091831213550984 0.54011919828986166 -4.0480861371471377 2.5955789722960096 -2.1615539264883061
		 -7.6254333888108761 -7.659126048202979 -7.2310212882817844 -0.36459704877668031 -6.6349395360818955 -5.0061436622141038
		 1.9849766726604301 -11.928288786097745 -0.73292170200848616 0.61406917869486932 5.8730502948510042 -6.8738857415658678
		 4.5774971357034389 3.7957378767463288 -2.6896868588897256 8.2798141833453087 -6.9749641329754022 5.044031621750154
		 -2.1819732089024768 -1.365061260526347 -6.8893389029612102 -4.3749484699090146 -2.7272130453633716 -3.3619566148818478
		 0 -3.015885125211879 0.73820050221235078 2.1339362166164833 -10.007009116526886 -2.5420848799849125
		 9.6903200537810719 -1.9478855492646385 6.0579481400043491 -1.7468921200444498 -3.3011172418026913 -6.9404406161570762
		 0.67658870975986218 -10.937810226484457 -6.2910342984352638 -6.2283161503302509 2.2607185741691627 -5.3928738463869195
		 -5.7800267169491448 2.5497570664441316 -7.3792173993582963 0.10569460044553836 1.7640699094055368 -10.65863102133514
		 2.3527573493380416 0.55843718377997398 -5.1007540927986526 6.7941604217825002 -4.9458224613871504 -3.9668008184332351
		 0 -2.8058251126185523 -7.1484381255255371 -7.0750196099254126 2.3542723010881845 2.7065394163952803
		 -6.6512315059592808 -0.31934658040732966 -4.9638079858469055 -0.89603400842033665
		 5.8773323979661258 -8.7034402458416551 -1.5772074568503669 -4.4637498326552132 -4.4272663870903486
		 -0.77588417634590456 4.476842618333305 -8.8084811529341991 -1.2702279707487563 2.3099506117146946 0.24755627710651851
		 5.9620755886332333 -6.0840196382319105 1.5535589804596626 6.3538566947517339 -2.2536574366867539 -2.1965146894605994
		 -7.6428793140456719 0.082660148450306004 -4.4275193111725635 0 -2.4723194307679184 -1.9228457724377073
		 -2.6517770366631765 6.2966634564456143 -7.0365308478157012 -4.8012411728214843 2.5657996553778797 1.6851031474203744
		 4.3172388100492398 -4.6073154461164805 1.3207033780991502 -3.5056063387573388 0.12013276965226494 -4.2460056164682207
		 -1.5896742645902862 -3.4440202464556511 3.8829350849156903 -3.9755791852370947 -2.2938304927551632 -5.3903379513119525
		 0.61129321555970506 -7.9242519199490218 4.8406654108520648 0.85835593681014899 -5.7267496709557335 -11.132705312408707
		 -6.7827903923538813 -4.8261668427341036 -4.986484942489696 0 -2.2818877997194322 -5.2034655573109632
		 4.5698381089269091 0.5551055075395892 -7.0214060644004803 -7.6542704846729137 -8.0384281762485337 -10.888747120566947
		 -3.161029399352735 1.2095464562767075 -0.40037199897847131 -3.1455786916766115 1.7064394865151753 -13.432318053399982
		 -0.62006004999940245 -5.7870365268414661 0.056906139259730537 2.1664819427635251
		 2.4158917016477686 -10.567754378547868 5.0955722900171452 -7.1918617545439192 -7.1571793942958948
		 -5.4582898269335445 4.9859948865932422 -9.7023232959351589 0.23083220710713448 0.87355262428297475 -5.6259829890108541
		 0 -2.0385511299231633 2.3628600126622352 5.1848184884122261 -4.4380112667245584 1.6504094948630872
		 -3.2624025843696813 1.4154497494529967 -10.198479325064145 4.4182777836060083 -4.2797685311574583 2.0453883852188177
		 2.8254257860584175 -1.9613546279325571 -0.49897656884065711 -6.4336489461566515 1.0097229910307921 -3.4053149849288182
		 -4.4846991751158782 5.1574758702413206 -10.772735591020204 4.2355049546202395 -2.7653343240657828 0.59311998862232329
		 0.94916900596125231 -8.3459283526791737 3.2556131915208404 -1.7008635164172858 -4.4311655808378489 -6.4281744837524393
		 0 -1.6305010251748289 -6.8010452124023182 -6.3684759268619473 -5.1820215306653088 -1.9567008285049106
		 4.463219305689492 -5.090492967931211 -3.9757078525836711 4.5691669216959951 -2.9296812327362991 -9.5779981131578076
		 -0.95257773521929323 -8.6584467755184686 -10.212760140210623 3.2494719651137416 -0.3023308708716701 -2.3578727912312338
		 0.12467262636242538 3.1780960522916653 0.4052857752109027 -0.3986058274840687 -0.86343096479789128 -11.141006115926512
		 -2.2675273859637102 -7.8716275027282938 -12.344520813195142 6.5933899098675752 -6.2587005691049518 -6.9058746418826651
		 0 -1.4709121163410981 -13.320938116408964 1.6368089772392835 -3.0424863871777399 -8.3314921598198062
		 7.1770365723773821 -2.7616187556767082 -15.580725557516192 -1.9988663946568508 -5.6636068902907946 -9.954055438311908
		 -3.6078961399686449 -3.2954763735818284 -10.273388203081463 -4.8221984642150062 2.4154319772382058 -2.096320665950639
		 -6.7513673402917362 2.3570599481325791 -16.401899647531135 0.85554400256533825 -0.020306720944782031 -10.669318689208051
		 0.31521048785307926 -6.3170012079875528 -7.6160634667181988 -1.155125424478527 -1.1610151908698267 -7.3636792450274111
		 0 -1.258736202493538 -6.8824349613982658 -2.3143944559132024 0.63015390188916531 -1.1559938493006481
		 0.21445227533654077 -8.651640437128016 -8.4908429422133533 3.2740165127686538 -3.3917453467794383 -10.018304051530867
		 1.669362634361562 -9.3155236352083577 -13.531063541087823 4.3779687247538135 5.039690421383944 -4.4508369505251064
		 -1.249430254272994 1.2276870573067165 -6.2202066676471244 -0.36827763252922807 -10.263455724322121 -11.694709216413491
		 -0.14726739997399818 -1.7095086332241685 -7.2434677604580653 3.1359831720759956 -10.483843680043414 -7.9765067345219993
		 0 -1.0094254703512751 -14.338359644680809 -3.7412145813520681 -2.681202066316708 -0.090350967068816956
		 0.82738909466769428 3.0101028528719165 -5.8149835070795337 4.325508030668388 -6.524717167236382 -0.60816935097303748
		 -4.2262492264541507 3.3275587083092684 -11.552646213385957 3.3451476580290773 -6.3901836851100953 -9.0397426609489191
		 -5.9572632531119751 -6.5027296661976592 -11.322899574283911 3.1333724835154442 -9.023016689799654 -5.2595639848721749
		 -0.41010781308024491 1.4199457345959199 -15.046410126269018 5.3734916436157576 -3.5831597169532903 ;
	setAttr ".vel0" -type "vectorArray" 210 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".acc0" -type "vectorArray" 210 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr ".usc" yes;
	setAttr ".scp" -type "string" "test_main_startup";
	setAttr ".mas0" -type "doubleArray" 210 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
		 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 ;
	setAttr ".id0" -type "doubleArray" 210 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43
		 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70
		 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97
		 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118
		 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139
		 140 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 158 159 160
		 161 162 163 164 165 166 167 168 169 170 171 172 173 174 175 176 177 178 179 180 181
		 182 183 184 185 186 187 188 189 190 191 192 193 194 195 196 197 198 199 200 201 202
		 203 204 205 206 207 208 209 ;
	setAttr ".nid" 210;
	setAttr ".nid0" 210;
	setAttr ".bt0" -type "doubleArray" 210 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664
		 0.041666666666666664 0.041666666666666664 0.041666666666666664 0.041666666666666664 ;
	setAttr ".ag0" -type "doubleArray" 210 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr -s 2 ".xo";
	setAttr ".irbx" -type "string" "";
	setAttr ".irax" -type "string" "";
	setAttr ".icx" -type "string" ".O[0] = <<0.5, 0.5, 0.5>>+sphrand(5);\r\n\r\nvector $pos = .O[0];\r\n\r\n.O[1] = <<$pos.x, $pos.y, $pos.z>>;";
	setAttr ".cts" 1;
	setAttr ".chw" 480;
	setAttr ".lifespanPP0" -type "doubleArray" 210 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038
		 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 3.4028234600000001e+038 ;
	setAttr -k on ".lifespan" 1;
	setAttr ".rgbPP0" -type "vectorArray" 210 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ;
	setAttr -k on ".colorAccum";
	setAttr -k on ".useLighting";
	setAttr -k on ".pointSize" 1;
	setAttr -k on ".normalDir";
createNode turbulenceField -n "turbulenceField1";
	setAttr ".mag" 12.396;
	setAttr ".att" 0.74384000000000006;
	setAttr ".fc[0]"  0 1 1;
createNode transform -n "pCube50";
	addAttr -ci true -sn "liqRIBBox" -ln "liqRIBBox" -dt "string";
	addAttr -ci true -sn "liqRIBGenerator" -ln "liqRIBGenerator" -dt "string";
	addAttr -ci true -sn "liqRIBReadArchive" -ln "liqRIBReadArchive" -dt "string";
	addAttr -ci true -sn "liqRIBDelayedReadArchive" -ln "liqRIBDelayedReadArchive" -dt "string";
	addAttr -ci true -sn "liqRIBDelayedReadArchiveBBoxScale" -ln "liqRIBDelayedReadArchiveBBoxScale" 
		-dv 1 -smn 0 -smx 2 -at "double";
	setAttr ".t" -type "double3" 6.974926368013211 2.5415872480661972 -9.742775385235559 ;
	setAttr ".liqRIBGenerator" -type "string" "";
	setAttr ".liqRIBReadArchive" -type "string" "E:/dev/autodesk/maya/myplugin/project/liquid_/2.3.3/test/_readArchive.rib";
createNode mesh -n "pCubeShape50" -p "pCube50";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -max 12 -smx 8 -at "float";
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
	setAttr -s 8 ".pt[0:7]" -type "float3"  0 8.4364843 0 0 8.4364843 
		0 0 8.4364843 0 0 8.4364843 0 0 8.4364843 0 0 8.4364843 0 0 8.4364843 0 0 8.4364843 
		0;
createNode transform -n "pCube51";
	addAttr -ci true -sn "liqRIBBox" -ln "liqRIBBox" -dt "string";
	addAttr -ci true -sn "liqRIBGenerator" -ln "liqRIBGenerator" -dt "string";
	addAttr -ci true -sn "liqRIBReadArchive" -ln "liqRIBReadArchive" -dt "string";
	addAttr -ci true -sn "liqRIBDelayedReadArchive" -ln "liqRIBDelayedReadArchive" -dt "string";
	addAttr -ci true -sn "liqRIBDelayedReadArchiveBBoxScale" -ln "liqRIBDelayedReadArchiveBBoxScale" 
		-dv 1 -smn 0 -smx 2 -at "double";
	setAttr ".t" -type "double3" 7.9614843312847015 0 -2.7547934859596737 ;
	setAttr ".liqRIBDelayedReadArchive" -type "string" "E:/dev/autodesk/maya/myplugin/project/liquid_/2.3.3/test/_delayReadArchive.rib";
createNode mesh -n "pCubeShape51" -p "pCube51";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube52";
	addAttr -ci true -sn "liqRIBBox" -ln "liqRIBBox" -dt "string";
	addAttr -ci true -sn "liqRIBGenerator" -ln "liqRIBGenerator" -dt "string";
	addAttr -ci true -sn "liqRIBReadArchive" -ln "liqRIBReadArchive" -dt "string";
	addAttr -ci true -sn "liqRIBDelayedReadArchive" -ln "liqRIBDelayedReadArchive" -dt "string";
	addAttr -ci true -sn "liqRIBDelayedReadArchiveBBoxScale" -ln "liqRIBDelayedReadArchiveBBoxScale" 
		-dv 1 -smn 0 -smx 2 -at "double";
	setAttr ".t" -type "double3" 8.8827584352808771 0 2.3198304213888505 ;
	setAttr ".liqRIBBox" -type "string" "";
createNode mesh -n "pCubeShape52" -p "pCube52";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pSphere6";
	setAttr ".t" -type "double3" 3.6258986040258847 0 -10.379356922984883 ;
createNode mesh -n "pSphereShape6" -p "pSphere6";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -max 12 -smx 8 -at "float";
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
createNode lightLinker -n "lightLinker1";
	setAttr -s 19 ".lnk";
	setAttr -s 19 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
	setAttr ".crl" 21;
	setAttr -s 22 ".rlmi[1:21]"  1 2 3 4 5 6 7 8 
		9 10 11 12 13 14 15 16 17 18 19 20 21;
	setAttr -s 22 ".rlmi";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
	setAttr ".rndr" no;
	setAttr -s 9 ".adjs";
	setAttr ".adjs[0].val" 0;
	setAttr ".adjs[1].val" 0;
	setAttr ".adjs[2].val" 1;
	setAttr ".adjs[3].val" 0;
	setAttr ".adjs[4].val" 0;
	setAttr ".adjs[5].val" 0;
	setAttr ".adjs[6].val" -type "string" "perspShape";
	setAttr ".adjs[8].val" -type "string" "";
	setAttr -s 3 ".oajs";
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n"
		+ "                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n"
		+ "            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n"
		+ "                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n"
		+ "            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n"
		+ "                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n"
		+ "                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n"
		+ "                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -autoExpand 0\n                -showDagOnly 1\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 0\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -autoExpand 0\n            -showDagOnly 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -editAttrName 0\n"
		+ "            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -autoExpand 1\n                -showDagOnly 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n"
		+ "                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -autoExpand 1\n                -showDagOnly 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n"
		+ "            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -autoExpand 0\n                -showDagOnly 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -autoExpand 0\n                -showDagOnly 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n"
		+ "                -snapValue \"none\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -zoom 1\n                -animateTransition 0\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n"
		+ "                -graphType \"DAG\" \n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -zoom 1\n                -animateTransition 0\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n"
		+ "                -graphType \"DAG\" \n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"multiListerPanel\" (localizedPanelLabel(\"Multilister\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"multiListerPanel\" -l (localizedPanelLabel(\"Multilister\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Multilister\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"devicePanel\" (localizedPanelLabel(\"Devices\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\tdevicePanel -unParent -l (localizedPanelLabel(\"Devices\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tdevicePanel -edit -l (localizedPanelLabel(\"Devices\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"webBrowserPanel\" (localizedPanelLabel(\"Web Browser\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"webBrowserPanel\" -l (localizedPanelLabel(\"Web Browser\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Web Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 20 100 -ps 2 80 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -showShapes 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -showShapes 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 480 -ast 1 -aet 480 ";
	setAttr ".st" 6;
createNode polyPlane -n "polyPlane1";
	setAttr ".w" 22.247749162944761;
	setAttr ".h" 21.971662388142033;
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode polySphere -n "polySphere1";
	setAttr ".r" 1.6831317814974902;
	setAttr ".sa" 19;
	setAttr ".sh" 19;
createNode lambert -n "matte";
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode script -n "liquidCleanUpNode";
	setAttr ".b" -type "string" "if ( `whatIs liquid` == \"Command\" ) liquidCreateScriptNode;";
	setAttr ".a" -type "string" "if ( `whatIs liquid` == \"Command\" ) liquidCleanUp;";
	setAttr ".st" 2;
createNode liquidSurface -n "liquidSurface1";
	addAttr -ci true -sn "liqAssignedObjects" -ln "liqAssignedObjects" -at "message";
	addAttr -ci true -h true -sn "texturename" -ln "texturename" -dt "string";
	addAttr -ci true -h true -sn "Kd" -ln "Kd" -at "double";
	addAttr -ci true -h true -sn "Kg" -ln "Kg" -at "double";
	addAttr -ci true -h true -sn "alpha_u" -ln "alpha_u" -at "double";
	addAttr -ci true -h true -sn "RRthreshold" -ln "RRthreshold" -at "double";
	addAttr -ci true -m -im false -sn "liquidChildShaders" -ln "liquidChildShaders" 
		-at "message";
	setAttr ".rms" -type "string" "glossy_area";
	setAttr ".rml" -type "string" "E:/dev/Autodesk/maya/myplugin/project/liquid_/2.3.3/test/co_shader/glossy_area.slo";
	setAttr ".rpr" -type "stringArray" 5 "texturename" "Kd" "Kg" "alpha_u" "RRthreshold"  ;
	setAttr ".rdt" -type "stringArray" 5 "uniform" "uniform" "uniform" "uniform" "uniform"  ;
	setAttr ".rty" -type "stringArray" 5 "string" "float" "float" "float" "float"  ;
	setAttr ".rdf" -type "stringArray" 5 "" "0.5" "0.5" "0.05" "0.01"  ;
	setAttr ".ras" -type "Int32Array" 5 -1 -1 -1 -1 -1 ;
	setAttr ".rlc" -type "stringArray" 5 "liquidAE_LifString( \"texturename\", -1, \"string\", \"texturename\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifFloat( \"Kd\", -1, \"float\", \"Kd\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifFloat( \"Kg\", -1, \"float\", \"Kg\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifFloat( \"alpha_u\", -1, \"float\", \"alpha_u\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifFloat( \"RRthreshold\", -1, \"float\", \"RRthreshold\", {\"0\", \"0\"}, \"\", 14 );"  ;
	setAttr ".rmt" -type "stringArray" 1 "surface"  ;
	setAttr ".rio" -type "Int32Array" 5 0 0 0 0 0 ;
	setAttr ".pcp" -type "string" "";
	setAttr ".pcb" -type "string" "";
	setAttr ".texturename" -type "string" "E:/MyDocuments/maya/projects/default/rmantex/test_cat.tex";
	setAttr ".Kd" 1;
	setAttr ".Kg" 0.066120000000000012;
	setAttr ".alpha_u" 0.1;
	setAttr ".RRthreshold" 0.0024792;
createNode shadingEngine -n "liquidSurface1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode liquidGlobals -n "liquidGlobals";
	setAttr ".rc" -type "string" "perspShape";
	setAttr ".ddin[0]" -type "string" "";
	setAttr ".ddim[0]" -type "string" "rgba";
	setAttr ".ddit[0]" -type "string" "it";
	setAttr ".ddbd[0]"  8;
	setAttr ".spth" -type "string" ":E//dev/Autodesk/maya/myplugin/project/liquid_/2.3.3/test/co_shader";
	setAttr ".shdd" -type "string" "generatedShader";
	setAttr ".rdc" -type "string" "prman";
	setAttr ".prv" -type "string" "prman";
	setAttr ".lrs" -type "string" "E:/MyDocuments/maya/projects/default/rmantmp/.xml";
	setAttr ".lrf" -type "string" "E:/MyDocuments/maya/projects/default/rib/_perspShape.0001.rib";
	setAttr ".shi" -type "string" "sloinfo";
	setAttr ".shcp" -type "string" "shader";
	setAttr ".she" -type "string" "slo";
	setAttr ".mtx" -type "string" "txmake";
	setAttr ".vtx" -type "string" "sho";
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
createNode polyPlane -n "polyPlane2";
	setAttr ".w" 15.771994101298208;
	setAttr ".h" 26.795076755234533;
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode polySphere -n "polySphere2";
	setAttr ".r" 1.8002987481955799;
createNode liquidSurface -n "liquidSurface2";
	addAttr -ci true -h true -k true -sn "frequency" -ln "frequency" -at "double";
	addAttr -ci true -sn "liqAssignedObjects" -ln "liqAssignedObjects" -at "message";
	addAttr -ci true -uac -h true -k true -sn "c0" -ln "c0" -at "float3" -nc 3;
	addAttr -ci true -h true -k true -sn "c0a" -ln "c0a" -at "float" -p "c0";
	addAttr -ci true -h true -k true -sn "c0b" -ln "c0b" -at "float" -p "c0";
	addAttr -ci true -h true -k true -sn "c0c" -ln "c0c" -at "float" -p "c0";
	addAttr -ci true -uac -h true -k true -sn "c1" -ln "c1" -at "float3" -nc 3;
	addAttr -ci true -h true -k true -sn "c1a" -ln "c1a" -at "float" -p "c1";
	addAttr -ci true -h true -k true -sn "c1b" -ln "c1b" -at "float" -p "c1";
	addAttr -ci true -h true -k true -sn "c1c" -ln "c1c" -at "float" -p "c1";
	addAttr -ci true -uac -h true -k true -sn "c2" -ln "c2" -at "float3" -nc 3;
	addAttr -ci true -h true -k true -sn "c2a" -ln "c2a" -at "float" -p "c2";
	addAttr -ci true -h true -k true -sn "c2b" -ln "c2b" -at "float" -p "c2";
	addAttr -ci true -h true -k true -sn "c2c" -ln "c2c" -at "float" -p "c2";
	addAttr -ci true -uac -h true -k true -sn "c3" -ln "c3" -at "float3" -nc 3;
	addAttr -ci true -h true -k true -sn "c3a" -ln "c3a" -at "float" -p "c3";
	addAttr -ci true -h true -k true -sn "c3b" -ln "c3b" -at "float" -p "c3";
	addAttr -ci true -h true -k true -sn "c3c" -ln "c3c" -at "float" -p "c3";
	addAttr -ci true -uac -h true -k true -sn "c4" -ln "c4" -at "float3" -nc 3;
	addAttr -ci true -h true -k true -sn "c4a" -ln "c4a" -at "float" -p "c4";
	addAttr -ci true -h true -k true -sn "c4b" -ln "c4b" -at "float" -p "c4";
	addAttr -ci true -h true -k true -sn "c4c" -ln "c4c" -at "float" -p "c4";
	addAttr -ci true -uac -h true -k true -sn "c5" -ln "c5" -at "float3" -nc 3;
	addAttr -ci true -h true -k true -sn "c5a" -ln "c5a" -at "float" -p "c5";
	addAttr -ci true -h true -k true -sn "c5b" -ln "c5b" -at "float" -p "c5";
	addAttr -ci true -h true -k true -sn "c5c" -ln "c5c" -at "float" -p "c5";
	addAttr -ci true -uac -h true -k true -sn "c6" -ln "c6" -at "float3" -nc 3;
	addAttr -ci true -h true -k true -sn "c6a" -ln "c6a" -at "float" -p "c6";
	addAttr -ci true -h true -k true -sn "c6b" -ln "c6b" -at "float" -p "c6";
	addAttr -ci true -h true -k true -sn "c6c" -ln "c6c" -at "float" -p "c6";
	addAttr -ci true -h true -k true -sn "p0" -ln "p0" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "p0a" -ln "p0a" -at "double" -p "p0";
	addAttr -ci true -h true -k true -sn "p0b" -ln "p0b" -at "double" -p "p0";
	addAttr -ci true -h true -k true -sn "p0c" -ln "p0c" -at "double" -p "p0";
	addAttr -ci true -h true -k true -sn "p1" -ln "p1" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "p1a" -ln "p1a" -at "double" -p "p1";
	addAttr -ci true -h true -k true -sn "p1b" -ln "p1b" -at "double" -p "p1";
	addAttr -ci true -h true -k true -sn "p1c" -ln "p1c" -at "double" -p "p1";
	addAttr -ci true -h true -k true -sn "p2" -ln "p2" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "p2a" -ln "p2a" -at "double" -p "p2";
	addAttr -ci true -h true -k true -sn "p2b" -ln "p2b" -at "double" -p "p2";
	addAttr -ci true -h true -k true -sn "p2c" -ln "p2c" -at "double" -p "p2";
	addAttr -ci true -h true -k true -sn "p3" -ln "p3" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "p3a" -ln "p3a" -at "double" -p "p3";
	addAttr -ci true -h true -k true -sn "p3b" -ln "p3b" -at "double" -p "p3";
	addAttr -ci true -h true -k true -sn "p3c" -ln "p3c" -at "double" -p "p3";
	addAttr -ci true -h true -k true -sn "p4" -ln "p4" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "p4a" -ln "p4a" -at "double" -p "p4";
	addAttr -ci true -h true -k true -sn "p4b" -ln "p4b" -at "double" -p "p4";
	addAttr -ci true -h true -k true -sn "p4c" -ln "p4c" -at "double" -p "p4";
	addAttr -ci true -h true -k true -sn "p5" -ln "p5" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "p5a" -ln "p5a" -at "double" -p "p5";
	addAttr -ci true -h true -k true -sn "p5b" -ln "p5b" -at "double" -p "p5";
	addAttr -ci true -h true -k true -sn "p5c" -ln "p5c" -at "double" -p "p5";
	addAttr -ci true -h true -k true -sn "p6" -ln "p6" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "p6a" -ln "p6a" -at "double" -p "p6";
	addAttr -ci true -h true -k true -sn "p6b" -ln "p6b" -at "double" -p "p6";
	addAttr -ci true -h true -k true -sn "p6c" -ln "p6c" -at "double" -p "p6";
	addAttr -ci true -h true -k true -sn "p7" -ln "p7" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "p7a" -ln "p7a" -at "double" -p "p7";
	addAttr -ci true -h true -k true -sn "p7b" -ln "p7b" -at "double" -p "p7";
	addAttr -ci true -h true -k true -sn "p7c" -ln "p7c" -at "double" -p "p7";
	addAttr -ci true -h true -k true -sn "p8" -ln "p8" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "p8a" -ln "p8a" -at "double" -p "p8";
	addAttr -ci true -h true -k true -sn "p8b" -ln "p8b" -at "double" -p "p8";
	addAttr -ci true -h true -k true -sn "p8c" -ln "p8c" -at "double" -p "p8";
	addAttr -ci true -h true -k true -sn "p9" -ln "p9" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "p9a" -ln "p9a" -at "double" -p "p9";
	addAttr -ci true -h true -k true -sn "p9b" -ln "p9b" -at "double" -p "p9";
	addAttr -ci true -h true -k true -sn "p9c" -ln "p9c" -at "double" -p "p9";
	addAttr -ci true -h true -k true -sn "v0" -ln "v0" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "v0a" -ln "v0a" -at "double" -p "v0";
	addAttr -ci true -h true -k true -sn "v0b" -ln "v0b" -at "double" -p "v0";
	addAttr -ci true -h true -k true -sn "v0c" -ln "v0c" -at "double" -p "v0";
	addAttr -ci true -h true -k true -sn "v1" -ln "v1" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "v1a" -ln "v1a" -at "double" -p "v1";
	addAttr -ci true -h true -k true -sn "v1b" -ln "v1b" -at "double" -p "v1";
	addAttr -ci true -h true -k true -sn "v1c" -ln "v1c" -at "double" -p "v1";
	addAttr -ci true -h true -k true -sn "v2" -ln "v2" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "v2a" -ln "v2a" -at "double" -p "v2";
	addAttr -ci true -h true -k true -sn "v2b" -ln "v2b" -at "double" -p "v2";
	addAttr -ci true -h true -k true -sn "v2c" -ln "v2c" -at "double" -p "v2";
	addAttr -ci true -h true -k true -sn "v3" -ln "v3" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "v3a" -ln "v3a" -at "double" -p "v3";
	addAttr -ci true -h true -k true -sn "v3b" -ln "v3b" -at "double" -p "v3";
	addAttr -ci true -h true -k true -sn "v3c" -ln "v3c" -at "double" -p "v3";
	addAttr -ci true -h true -k true -sn "v4" -ln "v4" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "v4a" -ln "v4a" -at "double" -p "v4";
	addAttr -ci true -h true -k true -sn "v4b" -ln "v4b" -at "double" -p "v4";
	addAttr -ci true -h true -k true -sn "v4c" -ln "v4c" -at "double" -p "v4";
	addAttr -ci true -h true -k true -sn "v5" -ln "v5" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "v5a" -ln "v5a" -at "double" -p "v5";
	addAttr -ci true -h true -k true -sn "v5b" -ln "v5b" -at "double" -p "v5";
	addAttr -ci true -h true -k true -sn "v5c" -ln "v5c" -at "double" -p "v5";
	addAttr -ci true -h true -k true -sn "v6" -ln "v6" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "v6a" -ln "v6a" -at "double" -p "v6";
	addAttr -ci true -h true -k true -sn "v6b" -ln "v6b" -at "double" -p "v6";
	addAttr -ci true -h true -k true -sn "v6c" -ln "v6c" -at "double" -p "v6";
	addAttr -ci true -h true -k true -sn "v7" -ln "v7" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "v7a" -ln "v7a" -at "double" -p "v7";
	addAttr -ci true -h true -k true -sn "v7b" -ln "v7b" -at "double" -p "v7";
	addAttr -ci true -h true -k true -sn "v7c" -ln "v7c" -at "double" -p "v7";
	addAttr -ci true -h true -k true -sn "v8" -ln "v8" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "v8a" -ln "v8a" -at "double" -p "v8";
	addAttr -ci true -h true -k true -sn "v8b" -ln "v8b" -at "double" -p "v8";
	addAttr -ci true -h true -k true -sn "v8c" -ln "v8c" -at "double" -p "v8";
	addAttr -ci true -h true -k true -sn "v9" -ln "v9" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "v9a" -ln "v9a" -at "double" -p "v9";
	addAttr -ci true -h true -k true -sn "v9b" -ln "v9b" -at "double" -p "v9";
	addAttr -ci true -h true -k true -sn "v9c" -ln "v9c" -at "double" -p "v9";
	addAttr -ci true -h true -k true -sn "n0" -ln "n0" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "n0a" -ln "n0a" -at "double" -p "n0";
	addAttr -ci true -h true -k true -sn "n0b" -ln "n0b" -at "double" -p "n0";
	addAttr -ci true -h true -k true -sn "n0c" -ln "n0c" -at "double" -p "n0";
	addAttr -ci true -h true -k true -sn "n1" -ln "n1" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "n1a" -ln "n1a" -at "double" -p "n1";
	addAttr -ci true -h true -k true -sn "n1b" -ln "n1b" -at "double" -p "n1";
	addAttr -ci true -h true -k true -sn "n1c" -ln "n1c" -at "double" -p "n1";
	addAttr -ci true -h true -k true -sn "n2" -ln "n2" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "n2a" -ln "n2a" -at "double" -p "n2";
	addAttr -ci true -h true -k true -sn "n2b" -ln "n2b" -at "double" -p "n2";
	addAttr -ci true -h true -k true -sn "n2c" -ln "n2c" -at "double" -p "n2";
	addAttr -ci true -h true -k true -sn "n3" -ln "n3" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "n3a" -ln "n3a" -at "double" -p "n3";
	addAttr -ci true -h true -k true -sn "n3b" -ln "n3b" -at "double" -p "n3";
	addAttr -ci true -h true -k true -sn "n3c" -ln "n3c" -at "double" -p "n3";
	addAttr -ci true -h true -k true -sn "n4" -ln "n4" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "n4a" -ln "n4a" -at "double" -p "n4";
	addAttr -ci true -h true -k true -sn "n4b" -ln "n4b" -at "double" -p "n4";
	addAttr -ci true -h true -k true -sn "n4c" -ln "n4c" -at "double" -p "n4";
	addAttr -ci true -h true -k true -sn "n5" -ln "n5" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "n5a" -ln "n5a" -at "double" -p "n5";
	addAttr -ci true -h true -k true -sn "n5b" -ln "n5b" -at "double" -p "n5";
	addAttr -ci true -h true -k true -sn "n5c" -ln "n5c" -at "double" -p "n5";
	addAttr -ci true -h true -k true -sn "n6" -ln "n6" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "n6a" -ln "n6a" -at "double" -p "n6";
	addAttr -ci true -h true -k true -sn "n6b" -ln "n6b" -at "double" -p "n6";
	addAttr -ci true -h true -k true -sn "n6c" -ln "n6c" -at "double" -p "n6";
	addAttr -ci true -h true -k true -sn "n7" -ln "n7" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "n7a" -ln "n7a" -at "double" -p "n7";
	addAttr -ci true -h true -k true -sn "n7b" -ln "n7b" -at "double" -p "n7";
	addAttr -ci true -h true -k true -sn "n7c" -ln "n7c" -at "double" -p "n7";
	addAttr -ci true -h true -k true -sn "n8" -ln "n8" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "n8a" -ln "n8a" -at "double" -p "n8";
	addAttr -ci true -h true -k true -sn "n8b" -ln "n8b" -at "double" -p "n8";
	addAttr -ci true -h true -k true -sn "n8c" -ln "n8c" -at "double" -p "n8";
	addAttr -ci true -h true -k true -sn "n9" -ln "n9" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "n9a" -ln "n9a" -at "double" -p "n9";
	addAttr -ci true -h true -k true -sn "n9b" -ln "n9b" -at "double" -p "n9";
	addAttr -ci true -h true -k true -sn "n9c" -ln "n9c" -at "double" -p "n9";
	addAttr -ci true -h true -sn "s0" -ln "s0" -dt "string";
	addAttr -ci true -h true -k true -sn "vfrequency" -ln "vfrequency" -at "double";
	addAttr -ci true -uac -h true -k true -sn "vc0" -ln "vc0" -at "float3" -nc 3;
	addAttr -ci true -h true -k true -sn "vc0a" -ln "vc0a" -at "float" -p "vc0";
	addAttr -ci true -h true -k true -sn "vc0b" -ln "vc0b" -at "float" -p "vc0";
	addAttr -ci true -h true -k true -sn "vc0c" -ln "vc0c" -at "float" -p "vc0";
	addAttr -ci true -uac -h true -k true -sn "vc1" -ln "vc1" -at "float3" -nc 3;
	addAttr -ci true -h true -k true -sn "vc1a" -ln "vc1a" -at "float" -p "vc1";
	addAttr -ci true -h true -k true -sn "vc1b" -ln "vc1b" -at "float" -p "vc1";
	addAttr -ci true -h true -k true -sn "vc1c" -ln "vc1c" -at "float" -p "vc1";
	addAttr -ci true -uac -h true -k true -sn "vc2" -ln "vc2" -at "float3" -nc 3;
	addAttr -ci true -h true -k true -sn "vc2a" -ln "vc2a" -at "float" -p "vc2";
	addAttr -ci true -h true -k true -sn "vc2b" -ln "vc2b" -at "float" -p "vc2";
	addAttr -ci true -h true -k true -sn "vc2c" -ln "vc2c" -at "float" -p "vc2";
	addAttr -ci true -uac -h true -k true -sn "vc3" -ln "vc3" -at "float3" -nc 3;
	addAttr -ci true -h true -k true -sn "vc3a" -ln "vc3a" -at "float" -p "vc3";
	addAttr -ci true -h true -k true -sn "vc3b" -ln "vc3b" -at "float" -p "vc3";
	addAttr -ci true -h true -k true -sn "vc3c" -ln "vc3c" -at "float" -p "vc3";
	addAttr -ci true -uac -h true -k true -sn "vc4" -ln "vc4" -at "float3" -nc 3;
	addAttr -ci true -h true -k true -sn "vc4a" -ln "vc4a" -at "float" -p "vc4";
	addAttr -ci true -h true -k true -sn "vc4b" -ln "vc4b" -at "float" -p "vc4";
	addAttr -ci true -h true -k true -sn "vc4c" -ln "vc4c" -at "float" -p "vc4";
	addAttr -ci true -uac -h true -k true -sn "vc5" -ln "vc5" -at "float3" -nc 3;
	addAttr -ci true -h true -k true -sn "vc5a" -ln "vc5a" -at "float" -p "vc5";
	addAttr -ci true -h true -k true -sn "vc5b" -ln "vc5b" -at "float" -p "vc5";
	addAttr -ci true -h true -k true -sn "vc5c" -ln "vc5c" -at "float" -p "vc5";
	addAttr -ci true -uac -h true -k true -sn "vc6" -ln "vc6" -at "float3" -nc 3;
	addAttr -ci true -h true -k true -sn "vc6a" -ln "vc6a" -at "float" -p "vc6";
	addAttr -ci true -h true -k true -sn "vc6b" -ln "vc6b" -at "float" -p "vc6";
	addAttr -ci true -h true -k true -sn "vc6c" -ln "vc6c" -at "float" -p "vc6";
	addAttr -ci true -h true -k true -sn "vp0" -ln "vp0" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "vp0a" -ln "vp0a" -at "double" -p "vp0";
	addAttr -ci true -h true -k true -sn "vp0b" -ln "vp0b" -at "double" -p "vp0";
	addAttr -ci true -h true -k true -sn "vp0c" -ln "vp0c" -at "double" -p "vp0";
	addAttr -ci true -h true -k true -sn "vp1" -ln "vp1" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "vp1a" -ln "vp1a" -at "double" -p "vp1";
	addAttr -ci true -h true -k true -sn "vp1b" -ln "vp1b" -at "double" -p "vp1";
	addAttr -ci true -h true -k true -sn "vp1c" -ln "vp1c" -at "double" -p "vp1";
	addAttr -ci true -h true -k true -sn "vp2" -ln "vp2" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "vp2a" -ln "vp2a" -at "double" -p "vp2";
	addAttr -ci true -h true -k true -sn "vp2b" -ln "vp2b" -at "double" -p "vp2";
	addAttr -ci true -h true -k true -sn "vp2c" -ln "vp2c" -at "double" -p "vp2";
	addAttr -ci true -h true -k true -sn "vp3" -ln "vp3" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "vp3a" -ln "vp3a" -at "double" -p "vp3";
	addAttr -ci true -h true -k true -sn "vp3b" -ln "vp3b" -at "double" -p "vp3";
	addAttr -ci true -h true -k true -sn "vp3c" -ln "vp3c" -at "double" -p "vp3";
	addAttr -ci true -h true -k true -sn "vp4" -ln "vp4" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "vp4a" -ln "vp4a" -at "double" -p "vp4";
	addAttr -ci true -h true -k true -sn "vp4b" -ln "vp4b" -at "double" -p "vp4";
	addAttr -ci true -h true -k true -sn "vp4c" -ln "vp4c" -at "double" -p "vp4";
	addAttr -ci true -h true -k true -sn "vp5" -ln "vp5" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "vp5a" -ln "vp5a" -at "double" -p "vp5";
	addAttr -ci true -h true -k true -sn "vp5b" -ln "vp5b" -at "double" -p "vp5";
	addAttr -ci true -h true -k true -sn "vp5c" -ln "vp5c" -at "double" -p "vp5";
	addAttr -ci true -h true -k true -sn "vp6" -ln "vp6" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "vp6a" -ln "vp6a" -at "double" -p "vp6";
	addAttr -ci true -h true -k true -sn "vp6b" -ln "vp6b" -at "double" -p "vp6";
	addAttr -ci true -h true -k true -sn "vp6c" -ln "vp6c" -at "double" -p "vp6";
	addAttr -ci true -h true -k true -sn "vp7" -ln "vp7" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "vp7a" -ln "vp7a" -at "double" -p "vp7";
	addAttr -ci true -h true -k true -sn "vp7b" -ln "vp7b" -at "double" -p "vp7";
	addAttr -ci true -h true -k true -sn "vp7c" -ln "vp7c" -at "double" -p "vp7";
	addAttr -ci true -h true -k true -sn "vp8" -ln "vp8" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "vp8a" -ln "vp8a" -at "double" -p "vp8";
	addAttr -ci true -h true -k true -sn "vp8b" -ln "vp8b" -at "double" -p "vp8";
	addAttr -ci true -h true -k true -sn "vp8c" -ln "vp8c" -at "double" -p "vp8";
	addAttr -ci true -h true -k true -sn "vp9" -ln "vp9" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "vp9a" -ln "vp9a" -at "double" -p "vp9";
	addAttr -ci true -h true -k true -sn "vp9b" -ln "vp9b" -at "double" -p "vp9";
	addAttr -ci true -h true -k true -sn "vp9c" -ln "vp9c" -at "double" -p "vp9";
	addAttr -ci true -h true -k true -sn "vv0" -ln "vv0" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "vv0a" -ln "vv0a" -at "double" -p "vv0";
	addAttr -ci true -h true -k true -sn "vv0b" -ln "vv0b" -at "double" -p "vv0";
	addAttr -ci true -h true -k true -sn "vv0c" -ln "vv0c" -at "double" -p "vv0";
	addAttr -ci true -h true -k true -sn "vv1" -ln "vv1" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "vv1a" -ln "vv1a" -at "double" -p "vv1";
	addAttr -ci true -h true -k true -sn "vv1b" -ln "vv1b" -at "double" -p "vv1";
	addAttr -ci true -h true -k true -sn "vv1c" -ln "vv1c" -at "double" -p "vv1";
	addAttr -ci true -h true -k true -sn "vv2" -ln "vv2" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "vv2a" -ln "vv2a" -at "double" -p "vv2";
	addAttr -ci true -h true -k true -sn "vv2b" -ln "vv2b" -at "double" -p "vv2";
	addAttr -ci true -h true -k true -sn "vv2c" -ln "vv2c" -at "double" -p "vv2";
	addAttr -ci true -h true -k true -sn "vv3" -ln "vv3" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "vv3a" -ln "vv3a" -at "double" -p "vv3";
	addAttr -ci true -h true -k true -sn "vv3b" -ln "vv3b" -at "double" -p "vv3";
	addAttr -ci true -h true -k true -sn "vv3c" -ln "vv3c" -at "double" -p "vv3";
	addAttr -ci true -h true -k true -sn "vv4" -ln "vv4" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "vv4a" -ln "vv4a" -at "double" -p "vv4";
	addAttr -ci true -h true -k true -sn "vv4b" -ln "vv4b" -at "double" -p "vv4";
	addAttr -ci true -h true -k true -sn "vv4c" -ln "vv4c" -at "double" -p "vv4";
	addAttr -ci true -h true -k true -sn "vv5" -ln "vv5" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "vv5a" -ln "vv5a" -at "double" -p "vv5";
	addAttr -ci true -h true -k true -sn "vv5b" -ln "vv5b" -at "double" -p "vv5";
	addAttr -ci true -h true -k true -sn "vv5c" -ln "vv5c" -at "double" -p "vv5";
	addAttr -ci true -h true -k true -sn "vv6" -ln "vv6" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "vv6a" -ln "vv6a" -at "double" -p "vv6";
	addAttr -ci true -h true -k true -sn "vv6b" -ln "vv6b" -at "double" -p "vv6";
	addAttr -ci true -h true -k true -sn "vv6c" -ln "vv6c" -at "double" -p "vv6";
	addAttr -ci true -h true -k true -sn "vv7" -ln "vv7" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "vv7a" -ln "vv7a" -at "double" -p "vv7";
	addAttr -ci true -h true -k true -sn "vv7b" -ln "vv7b" -at "double" -p "vv7";
	addAttr -ci true -h true -k true -sn "vv7c" -ln "vv7c" -at "double" -p "vv7";
	addAttr -ci true -h true -k true -sn "vv8" -ln "vv8" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "vv8a" -ln "vv8a" -at "double" -p "vv8";
	addAttr -ci true -h true -k true -sn "vv8b" -ln "vv8b" -at "double" -p "vv8";
	addAttr -ci true -h true -k true -sn "vv8c" -ln "vv8c" -at "double" -p "vv8";
	addAttr -ci true -h true -k true -sn "vv9" -ln "vv9" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "vv9a" -ln "vv9a" -at "double" -p "vv9";
	addAttr -ci true -h true -k true -sn "vv9b" -ln "vv9b" -at "double" -p "vv9";
	addAttr -ci true -h true -k true -sn "vv9c" -ln "vv9c" -at "double" -p "vv9";
	addAttr -ci true -h true -k true -sn "vn0" -ln "vn0" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "vn0a" -ln "vn0a" -at "double" -p "vn0";
	addAttr -ci true -h true -k true -sn "vn0b" -ln "vn0b" -at "double" -p "vn0";
	addAttr -ci true -h true -k true -sn "vn0c" -ln "vn0c" -at "double" -p "vn0";
	addAttr -ci true -h true -k true -sn "vn1" -ln "vn1" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "vn1a" -ln "vn1a" -at "double" -p "vn1";
	addAttr -ci true -h true -k true -sn "vn1b" -ln "vn1b" -at "double" -p "vn1";
	addAttr -ci true -h true -k true -sn "vn1c" -ln "vn1c" -at "double" -p "vn1";
	addAttr -ci true -h true -k true -sn "vn2" -ln "vn2" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "vn2a" -ln "vn2a" -at "double" -p "vn2";
	addAttr -ci true -h true -k true -sn "vn2b" -ln "vn2b" -at "double" -p "vn2";
	addAttr -ci true -h true -k true -sn "vn2c" -ln "vn2c" -at "double" -p "vn2";
	addAttr -ci true -h true -k true -sn "vn3" -ln "vn3" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "vn3a" -ln "vn3a" -at "double" -p "vn3";
	addAttr -ci true -h true -k true -sn "vn3b" -ln "vn3b" -at "double" -p "vn3";
	addAttr -ci true -h true -k true -sn "vn3c" -ln "vn3c" -at "double" -p "vn3";
	addAttr -ci true -h true -k true -sn "vn4" -ln "vn4" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "vn4a" -ln "vn4a" -at "double" -p "vn4";
	addAttr -ci true -h true -k true -sn "vn4b" -ln "vn4b" -at "double" -p "vn4";
	addAttr -ci true -h true -k true -sn "vn4c" -ln "vn4c" -at "double" -p "vn4";
	addAttr -ci true -h true -k true -sn "vn5" -ln "vn5" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "vn5a" -ln "vn5a" -at "double" -p "vn5";
	addAttr -ci true -h true -k true -sn "vn5b" -ln "vn5b" -at "double" -p "vn5";
	addAttr -ci true -h true -k true -sn "vn5c" -ln "vn5c" -at "double" -p "vn5";
	addAttr -ci true -h true -k true -sn "vn6" -ln "vn6" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "vn6a" -ln "vn6a" -at "double" -p "vn6";
	addAttr -ci true -h true -k true -sn "vn6b" -ln "vn6b" -at "double" -p "vn6";
	addAttr -ci true -h true -k true -sn "vn6c" -ln "vn6c" -at "double" -p "vn6";
	addAttr -ci true -h true -k true -sn "vn7" -ln "vn7" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "vn7a" -ln "vn7a" -at "double" -p "vn7";
	addAttr -ci true -h true -k true -sn "vn7b" -ln "vn7b" -at "double" -p "vn7";
	addAttr -ci true -h true -k true -sn "vn7c" -ln "vn7c" -at "double" -p "vn7";
	addAttr -ci true -h true -k true -sn "vn8" -ln "vn8" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "vn8a" -ln "vn8a" -at "double" -p "vn8";
	addAttr -ci true -h true -k true -sn "vn8b" -ln "vn8b" -at "double" -p "vn8";
	addAttr -ci true -h true -k true -sn "vn8c" -ln "vn8c" -at "double" -p "vn8";
	addAttr -ci true -h true -k true -sn "vn9" -ln "vn9" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "vn9a" -ln "vn9a" -at "double" -p "vn9";
	addAttr -ci true -h true -k true -sn "vn9b" -ln "vn9b" -at "double" -p "vn9";
	addAttr -ci true -h true -k true -sn "vn9c" -ln "vn9c" -at "double" -p "vn9";
	addAttr -ci true -h true -k true -sn "ufrequency" -ln "ufrequency" -at "double";
	addAttr -ci true -uac -h true -k true -sn "uc0" -ln "uc0" -at "float3" -nc 3;
	addAttr -ci true -h true -k true -sn "uc0a" -ln "uc0a" -at "float" -p "uc0";
	addAttr -ci true -h true -k true -sn "uc0b" -ln "uc0b" -at "float" -p "uc0";
	addAttr -ci true -h true -k true -sn "uc0c" -ln "uc0c" -at "float" -p "uc0";
	addAttr -ci true -uac -h true -k true -sn "uc1" -ln "uc1" -at "float3" -nc 3;
	addAttr -ci true -h true -k true -sn "uc1a" -ln "uc1a" -at "float" -p "uc1";
	addAttr -ci true -h true -k true -sn "uc1b" -ln "uc1b" -at "float" -p "uc1";
	addAttr -ci true -h true -k true -sn "uc1c" -ln "uc1c" -at "float" -p "uc1";
	addAttr -ci true -uac -h true -k true -sn "uc2" -ln "uc2" -at "float3" -nc 3;
	addAttr -ci true -h true -k true -sn "uc2a" -ln "uc2a" -at "float" -p "uc2";
	addAttr -ci true -h true -k true -sn "uc2b" -ln "uc2b" -at "float" -p "uc2";
	addAttr -ci true -h true -k true -sn "uc2c" -ln "uc2c" -at "float" -p "uc2";
	addAttr -ci true -uac -h true -k true -sn "uc3" -ln "uc3" -at "float3" -nc 3;
	addAttr -ci true -h true -k true -sn "uc3a" -ln "uc3a" -at "float" -p "uc3";
	addAttr -ci true -h true -k true -sn "uc3b" -ln "uc3b" -at "float" -p "uc3";
	addAttr -ci true -h true -k true -sn "uc3c" -ln "uc3c" -at "float" -p "uc3";
	addAttr -ci true -uac -h true -k true -sn "uc4" -ln "uc4" -at "float3" -nc 3;
	addAttr -ci true -h true -k true -sn "uc4a" -ln "uc4a" -at "float" -p "uc4";
	addAttr -ci true -h true -k true -sn "uc4b" -ln "uc4b" -at "float" -p "uc4";
	addAttr -ci true -h true -k true -sn "uc4c" -ln "uc4c" -at "float" -p "uc4";
	addAttr -ci true -uac -h true -k true -sn "uc5" -ln "uc5" -at "float3" -nc 3;
	addAttr -ci true -h true -k true -sn "uc5a" -ln "uc5a" -at "float" -p "uc5";
	addAttr -ci true -h true -k true -sn "uc5b" -ln "uc5b" -at "float" -p "uc5";
	addAttr -ci true -h true -k true -sn "uc5c" -ln "uc5c" -at "float" -p "uc5";
	addAttr -ci true -uac -h true -k true -sn "uc6" -ln "uc6" -at "float3" -nc 3;
	addAttr -ci true -h true -k true -sn "uc6a" -ln "uc6a" -at "float" -p "uc6";
	addAttr -ci true -h true -k true -sn "uc6b" -ln "uc6b" -at "float" -p "uc6";
	addAttr -ci true -h true -k true -sn "uc6c" -ln "uc6c" -at "float" -p "uc6";
	addAttr -ci true -h true -k true -sn "up0" -ln "up0" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "up0a" -ln "up0a" -at "double" -p "up0";
	addAttr -ci true -h true -k true -sn "up0b" -ln "up0b" -at "double" -p "up0";
	addAttr -ci true -h true -k true -sn "up0c" -ln "up0c" -at "double" -p "up0";
	addAttr -ci true -h true -k true -sn "up1" -ln "up1" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "up1a" -ln "up1a" -at "double" -p "up1";
	addAttr -ci true -h true -k true -sn "up1b" -ln "up1b" -at "double" -p "up1";
	addAttr -ci true -h true -k true -sn "up1c" -ln "up1c" -at "double" -p "up1";
	addAttr -ci true -h true -k true -sn "up2" -ln "up2" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "up2a" -ln "up2a" -at "double" -p "up2";
	addAttr -ci true -h true -k true -sn "up2b" -ln "up2b" -at "double" -p "up2";
	addAttr -ci true -h true -k true -sn "up2c" -ln "up2c" -at "double" -p "up2";
	addAttr -ci true -h true -k true -sn "up3" -ln "up3" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "up3a" -ln "up3a" -at "double" -p "up3";
	addAttr -ci true -h true -k true -sn "up3b" -ln "up3b" -at "double" -p "up3";
	addAttr -ci true -h true -k true -sn "up3c" -ln "up3c" -at "double" -p "up3";
	addAttr -ci true -h true -k true -sn "up4" -ln "up4" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "up4a" -ln "up4a" -at "double" -p "up4";
	addAttr -ci true -h true -k true -sn "up4b" -ln "up4b" -at "double" -p "up4";
	addAttr -ci true -h true -k true -sn "up4c" -ln "up4c" -at "double" -p "up4";
	addAttr -ci true -h true -k true -sn "up5" -ln "up5" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "up5a" -ln "up5a" -at "double" -p "up5";
	addAttr -ci true -h true -k true -sn "up5b" -ln "up5b" -at "double" -p "up5";
	addAttr -ci true -h true -k true -sn "up5c" -ln "up5c" -at "double" -p "up5";
	addAttr -ci true -h true -k true -sn "up6" -ln "up6" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "up6a" -ln "up6a" -at "double" -p "up6";
	addAttr -ci true -h true -k true -sn "up6b" -ln "up6b" -at "double" -p "up6";
	addAttr -ci true -h true -k true -sn "up6c" -ln "up6c" -at "double" -p "up6";
	addAttr -ci true -h true -k true -sn "up7" -ln "up7" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "up7a" -ln "up7a" -at "double" -p "up7";
	addAttr -ci true -h true -k true -sn "up7b" -ln "up7b" -at "double" -p "up7";
	addAttr -ci true -h true -k true -sn "up7c" -ln "up7c" -at "double" -p "up7";
	addAttr -ci true -h true -k true -sn "up8" -ln "up8" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "up8a" -ln "up8a" -at "double" -p "up8";
	addAttr -ci true -h true -k true -sn "up8b" -ln "up8b" -at "double" -p "up8";
	addAttr -ci true -h true -k true -sn "up8c" -ln "up8c" -at "double" -p "up8";
	addAttr -ci true -h true -k true -sn "up9" -ln "up9" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "up9a" -ln "up9a" -at "double" -p "up9";
	addAttr -ci true -h true -k true -sn "up9b" -ln "up9b" -at "double" -p "up9";
	addAttr -ci true -h true -k true -sn "up9c" -ln "up9c" -at "double" -p "up9";
	addAttr -ci true -h true -k true -sn "uv0" -ln "uv0" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "uv0a" -ln "uv0a" -at "double" -p "uv0";
	addAttr -ci true -h true -k true -sn "uv0b" -ln "uv0b" -at "double" -p "uv0";
	addAttr -ci true -h true -k true -sn "uv0c" -ln "uv0c" -at "double" -p "uv0";
	addAttr -ci true -h true -k true -sn "uv1" -ln "uv1" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "uv1a" -ln "uv1a" -at "double" -p "uv1";
	addAttr -ci true -h true -k true -sn "uv1b" -ln "uv1b" -at "double" -p "uv1";
	addAttr -ci true -h true -k true -sn "uv1c" -ln "uv1c" -at "double" -p "uv1";
	addAttr -ci true -h true -k true -sn "uv2" -ln "uv2" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "uv2a" -ln "uv2a" -at "double" -p "uv2";
	addAttr -ci true -h true -k true -sn "uv2b" -ln "uv2b" -at "double" -p "uv2";
	addAttr -ci true -h true -k true -sn "uv2c" -ln "uv2c" -at "double" -p "uv2";
	addAttr -ci true -h true -k true -sn "uv3" -ln "uv3" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "uv3a" -ln "uv3a" -at "double" -p "uv3";
	addAttr -ci true -h true -k true -sn "uv3b" -ln "uv3b" -at "double" -p "uv3";
	addAttr -ci true -h true -k true -sn "uv3c" -ln "uv3c" -at "double" -p "uv3";
	addAttr -ci true -h true -k true -sn "uv4" -ln "uv4" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "uv4a" -ln "uv4a" -at "double" -p "uv4";
	addAttr -ci true -h true -k true -sn "uv4b" -ln "uv4b" -at "double" -p "uv4";
	addAttr -ci true -h true -k true -sn "uv4c" -ln "uv4c" -at "double" -p "uv4";
	addAttr -ci true -h true -k true -sn "uv5" -ln "uv5" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "uv5a" -ln "uv5a" -at "double" -p "uv5";
	addAttr -ci true -h true -k true -sn "uv5b" -ln "uv5b" -at "double" -p "uv5";
	addAttr -ci true -h true -k true -sn "uv5c" -ln "uv5c" -at "double" -p "uv5";
	addAttr -ci true -h true -k true -sn "uv6" -ln "uv6" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "uv6a" -ln "uv6a" -at "double" -p "uv6";
	addAttr -ci true -h true -k true -sn "uv6b" -ln "uv6b" -at "double" -p "uv6";
	addAttr -ci true -h true -k true -sn "uv6c" -ln "uv6c" -at "double" -p "uv6";
	addAttr -ci true -h true -k true -sn "uv7" -ln "uv7" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "uv7a" -ln "uv7a" -at "double" -p "uv7";
	addAttr -ci true -h true -k true -sn "uv7b" -ln "uv7b" -at "double" -p "uv7";
	addAttr -ci true -h true -k true -sn "uv7c" -ln "uv7c" -at "double" -p "uv7";
	addAttr -ci true -h true -k true -sn "uv8" -ln "uv8" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "uv8a" -ln "uv8a" -at "double" -p "uv8";
	addAttr -ci true -h true -k true -sn "uv8b" -ln "uv8b" -at "double" -p "uv8";
	addAttr -ci true -h true -k true -sn "uv8c" -ln "uv8c" -at "double" -p "uv8";
	addAttr -ci true -h true -k true -sn "uv9" -ln "uv9" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "uv9a" -ln "uv9a" -at "double" -p "uv9";
	addAttr -ci true -h true -k true -sn "uv9b" -ln "uv9b" -at "double" -p "uv9";
	addAttr -ci true -h true -k true -sn "uv9c" -ln "uv9c" -at "double" -p "uv9";
	addAttr -ci true -h true -k true -sn "un0" -ln "un0" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "un0a" -ln "un0a" -at "double" -p "un0";
	addAttr -ci true -h true -k true -sn "un0b" -ln "un0b" -at "double" -p "un0";
	addAttr -ci true -h true -k true -sn "un0c" -ln "un0c" -at "double" -p "un0";
	addAttr -ci true -h true -k true -sn "un1" -ln "un1" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "un1a" -ln "un1a" -at "double" -p "un1";
	addAttr -ci true -h true -k true -sn "un1b" -ln "un1b" -at "double" -p "un1";
	addAttr -ci true -h true -k true -sn "un1c" -ln "un1c" -at "double" -p "un1";
	addAttr -ci true -h true -k true -sn "un2" -ln "un2" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "un2a" -ln "un2a" -at "double" -p "un2";
	addAttr -ci true -h true -k true -sn "un2b" -ln "un2b" -at "double" -p "un2";
	addAttr -ci true -h true -k true -sn "un2c" -ln "un2c" -at "double" -p "un2";
	addAttr -ci true -h true -k true -sn "un3" -ln "un3" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "un3a" -ln "un3a" -at "double" -p "un3";
	addAttr -ci true -h true -k true -sn "un3b" -ln "un3b" -at "double" -p "un3";
	addAttr -ci true -h true -k true -sn "un3c" -ln "un3c" -at "double" -p "un3";
	addAttr -ci true -h true -k true -sn "un4" -ln "un4" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "un4a" -ln "un4a" -at "double" -p "un4";
	addAttr -ci true -h true -k true -sn "un4b" -ln "un4b" -at "double" -p "un4";
	addAttr -ci true -h true -k true -sn "un4c" -ln "un4c" -at "double" -p "un4";
	addAttr -ci true -h true -k true -sn "un5" -ln "un5" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "un5a" -ln "un5a" -at "double" -p "un5";
	addAttr -ci true -h true -k true -sn "un5b" -ln "un5b" -at "double" -p "un5";
	addAttr -ci true -h true -k true -sn "un5c" -ln "un5c" -at "double" -p "un5";
	addAttr -ci true -h true -k true -sn "un6" -ln "un6" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "un6a" -ln "un6a" -at "double" -p "un6";
	addAttr -ci true -h true -k true -sn "un6b" -ln "un6b" -at "double" -p "un6";
	addAttr -ci true -h true -k true -sn "un6c" -ln "un6c" -at "double" -p "un6";
	addAttr -ci true -h true -k true -sn "un7" -ln "un7" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "un7a" -ln "un7a" -at "double" -p "un7";
	addAttr -ci true -h true -k true -sn "un7b" -ln "un7b" -at "double" -p "un7";
	addAttr -ci true -h true -k true -sn "un7c" -ln "un7c" -at "double" -p "un7";
	addAttr -ci true -h true -k true -sn "un8" -ln "un8" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "un8a" -ln "un8a" -at "double" -p "un8";
	addAttr -ci true -h true -k true -sn "un8b" -ln "un8b" -at "double" -p "un8";
	addAttr -ci true -h true -k true -sn "un8c" -ln "un8c" -at "double" -p "un8";
	addAttr -ci true -h true -k true -sn "un9" -ln "un9" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "un9a" -ln "un9a" -at "double" -p "un9";
	addAttr -ci true -h true -k true -sn "un9b" -ln "un9b" -at "double" -p "un9";
	addAttr -ci true -h true -k true -sn "un9c" -ln "un9c" -at "double" -p "un9";
	addAttr -ci true -h true -sn "us0" -ln "us0" -dt "string";
	setAttr ".rms" -type "string" "test_type2";
	setAttr ".rml" -type "string" "E:/dev/Autodesk/maya/myplugin/project/liquid_/2.3.3/lib/shaders/test_type2.slo";
	setAttr ".rpr" -type "stringArray" 134 "frequency" "c0" "c1" "c2" "c3" "c4" "c5" "c6" "p0" "p1" "p2" "p3" "p4" "p5" "p6" "p7" "p8" "p9" "v0" "v1" "v2" "v3" "v4" "v5" "v6" "v7" "v8" "v9" "n0" "n1" "n2" "n3" "n4" "n5" "n6" "n7" "n8" "n9" "m0" "m1" "m2" "m3" "m4" "m5" "s0" "vfrequency" "vc0" "vc1" "vc2" "vc3" "vc4" "vc5" "vc6" "vp0" "vp1" "vp2" "vp3" "vp4" "vp5" "vp6" "vp7" "vp8" "vp9" "vv0" "vv1" "vv2" "vv3" "vv4" "vv5" "vv6" "vv7" "vv8" "vv9" "vn0" "vn1" "vn2" "vn3" "vn4" "vn5" "vn6" "vn7" "vn8" "vn9" "vm0" "vm1" "vm2" "vm3" "vm4" "vm5" "ufrequency" "uc0" "uc1" "uc2" "uc3" "uc4" "uc5" "uc6" "up0" "up1" "up2" "up3" "up4" "up5" "up6" "up7" "up8" "up9" "uv0" "uv1" "uv2" "uv3" "uv4" "uv5" "uv6" "uv7" "uv8" "uv9" "un0" "un1" "un2" "un3" "un4" "un5" "un6" "un7" "un8" "un9" "um0" "um1" "um2" "um3" "um4" "um5" "us0"  ;
	setAttr ".rdt" -type "stringArray" 134 "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "varying" "varying" "varying" "varying" "varying" "varying" "varying" "varying" "varying" "varying" "varying" "varying" "varying" "varying" "varying" "varying" "varying" "varying" "varying" "varying" "varying" "varying" "varying" "varying" "varying" "varying" "varying" "varying" "varying" "varying" "varying" "varying" "varying" "varying" "varying" "varying" "varying" "varying" "varying" "varying" "varying" "varying" "varying" "varying" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform"  ;
	setAttr ".rty" -type "stringArray" 134 "float" "color" "color" "color" "color" "color" "color" "color" "point" "point" "point" "point" "point" "point" "point" "point" "point" "point" "vector" "vector" "vector" "vector" "vector" "vector" "vector" "vector" "vector" "vector" "normal" "normal" "normal" "normal" "normal" "normal" "normal" "normal" "normal" "normal" "matrix" "matrix" "matrix" "matrix" "matrix" "matrix" "string" "float" "color" "color" "color" "color" "color" "color" "color" "point" "point" "point" "point" "point" "point" "point" "point" "point" "point" "vector" "vector" "vector" "vector" "vector" "vector" "vector" "vector" "vector" "vector" "normal" "normal" "normal" "normal" "normal" "normal" "normal" "normal" "normal" "normal" "matrix" "matrix" "matrix" "matrix" "matrix" "matrix" "float" "color" "color" "color" "color" "color" "color" "color" "point" "point" "point" "point" "point" "point" "point" "point" "point" "point" "vector" "vector" "vector" "vector" "vector" "vector" "vector" "vector" "vector" "vector" "normal" "normal" "normal" "normal" "normal" "normal" "normal" "normal" "normal" "normal" "matrix" "matrix" "matrix" "matrix" "matrix" "matrix" "string"  ;
	setAttr ".rdf" -type "stringArray" 134 "4.0" "0.0000000.5000000.500000" "0.0000000.5000000.500000" "000" "000" "000" "000" "000" "0.0000000.0000000.000000" "1.0000001.0000001.000000" "2.0000002.0000002.000000" "3.0000003.0000003.000000" "4.0000004.0000004.000000" "5.0000005.0000005.000000" "6.0000006.0000006.000000" "7.0000007.0000007.000000" "8.0000008.0000008.000000" "9.0000009.0000009.000000" "0.0000000.0000000.000000" "1.0000001.0000001.000000" "2.0000002.0000002.000000" "3.0000003.0000003.000000" "4.0000004.0000004.000000" "5.0000005.0000005.000000" "6.0000006.0000006.000000" "7.0000007.0000007.000000" "8.0000008.0000008.000000" "9.0000009.0000009.000000" "0.0000000.0000000.000000" "1.0000001.0000001.000000" "2.0000002.0000002.000000" "3.0000003.0000003.000000" "4.0000004.0000004.000000" "5.0000005.0000005.000000" "6.0000006.0000006.000000" "7.0000007.0000007.000000" "8.0000008.0000008.000000" "9.0000009.0000009.000000" "0.000000:0.000000:0.000000:0.000000; 0.000000:0.000000:0.000000:0.000000; 0.000000:0.000000:0.000000:0.000000; 0.000000:0.000000:0.000000:0.000000" "0.000000:1.000000:2.000000:3.000000; 4.000000:5.000000:6.000000:7.000000; 8.000000:9.000000:10.000000:11.000000; 12.000000:13.000000:14.000000:15.000000" "0.000000:0.000000:0.000000:0.000000; 0.000000:0.000000:0.000000:0.000000; 0.000000:0.000000:0.000000:0.000000; 0.000000:0.000000:0.000000:0.000000" "0.000000:1.000000:2.000000:3.000000; 4.000000:5.000000:6.000000:7.000000; 8.000000:9.000000:10.000000:11.000000; 12.000000:13.000000:14.000000:15.000000" "0.000000:0.000000:0.000000:0.000000; 0.000000:0.000000:0.000000:0.000000; 0.000000:0.000000:0.000000:0.000000; 0.000000:0.000000:0.000000:0.000000" "0.000000:1.000000:2.000000:3.000000; 4.000000:5.000000:6.000000:7.000000; 8.000000:9.000000:10.000000:11.000000; 12.000000:13.000000:14.000000:15.000000" "testString" "4.0" "0.0000000.5000000.500000" "0.0000000.5000000.500000" "000" "000" "000" "000" "000" "0.0000000.0000000.000000" "1.0000001.0000001.000000" "2.0000002.0000002.000000" "3.0000003.0000003.000000" "4.0000004.0000004.000000" "5.0000005.0000005.000000" "6.0000006.0000006.000000" "7.0000007.0000007.000000" "8.0000008.0000008.000000" "9.0000009.0000009.000000" "0.0000000.0000000.000000" "1.0000001.0000001.000000" "2.0000002.0000002.000000" "3.0000003.0000003.000000" "4.0000004.0000004.000000" "5.0000005.0000005.000000" "6.0000006.0000006.000000" "7.0000007.0000007.000000" "8.0000008.0000008.000000" "9.0000009.0000009.000000" "0.0000000.0000000.000000" "1.0000001.0000001.000000" "2.0000002.0000002.000000" "3.0000003.0000003.000000" "4.0000004.0000004.000000" "5.0000005.0000005.000000" "6.0000006.0000006.000000" "7.0000007.0000007.000000" "8.0000008.0000008.000000" "9.0000009.0000009.000000" "0.000000:0.000000:0.000000:0.000000; 0.000000:0.000000:0.000000:0.000000; 0.000000:0.000000:0.000000:0.000000; 0.000000:0.000000:0.000000:0.000000" "0.000000:1.000000:2.000000:3.000000; 4.000000:5.000000:6.000000:7.000000; 8.000000:9.000000:10.000000:11.000000; 12.000000:13.000000:14.000000:15.000000" "0.000000:0.000000:0.000000:0.000000; 0.000000:0.000000:0.000000:0.000000; 0.000000:0.000000:0.000000:0.000000; 0.000000:0.000000:0.000000:0.000000" "0.000000:1.000000:2.000000:3.000000; 4.000000:5.000000:6.000000:7.000000; 8.000000:9.000000:10.000000:11.000000; 12.000000:13.000000:14.000000:15.000000" "0.000000:0.000000:0.000000:0.000000; 0.000000:0.000000:0.000000:0.000000; 0.000000:0.000000:0.000000:0.000000; 0.000000:0.000000:0.000000:0.000000" "0.000000:1.000000:2.000000:3.000000; 4.000000:5.000000:6.000000:7.000000; 8.000000:9.000000:10.000000:11.000000; 12.000000:13.000000:14.000000:15.000000" "4.0" "0.0000000.5000000.500000" "0.0000000.5000000.500000" "000" "000" "000" "000" "000" "0.0000000.0000000.000000" "1.0000001.0000001.000000" "2.0000002.0000002.000000" "3.0000003.0000003.000000" "4.0000004.0000004.000000" "5.0000005.0000005.000000" "6.0000006.0000006.000000" "7.0000007.0000007.000000" "8.0000008.0000008.000000" "9.0000009.0000009.000000" "0.0000000.0000000.000000" "1.0000001.0000001.000000" "2.0000002.0000002.000000" "3.0000003.0000003.000000" "4.0000004.0000004.000000" "5.0000005.0000005.000000" "6.0000006.0000006.000000" "7.0000007.0000007.000000" "8.0000008.0000008.000000" "9.0000009.0000009.000000" "0.0000000.0000000.000000" "1.0000001.0000001.000000" "2.0000002.0000002.000000" "3.0000003.0000003.000000" "4.0000004.0000004.000000" "5.0000005.0000005.000000" "6.0000006.0000006.000000" "7.0000007.0000007.000000" "8.0000008.0000008.000000" "9.0000009.0000009.000000" "0.000000:0.000000:0.000000:0.000000; 0.000000:0.000000:0.000000:0.000000; 0.000000:0.000000:0.000000:0.000000; 0.000000:0.000000:0.000000:0.000000" "0.000000:1.000000:2.000000:3.000000; 4.000000:5.000000:6.000000:7.000000; 8.000000:9.000000:10.000000:11.000000; 12.000000:13.000000:14.000000:15.000000" "0.000000:0.000000:0.000000:0.000000; 0.000000:0.000000:0.000000:0.000000; 0.000000:0.000000:0.000000:0.000000; 0.000000:0.000000:0.000000:0.000000" "0.000000:1.000000:2.000000:3.000000; 4.000000:5.000000:6.000000:7.000000; 8.000000:9.000000:10.000000:11.000000; 12.000000:13.000000:14.000000:15.000000" "0.000000:0.000000:0.000000:0.000000; 0.000000:0.000000:0.000000:0.000000; 0.000000:0.000000:0.000000:0.000000; 0.000000:0.000000:0.000000:0.000000" "0.000000:1.000000:2.000000:3.000000; 4.000000:5.000000:6.000000:7.000000; 8.000000:9.000000:10.000000:11.000000; 12.000000:13.000000:14.000000:15.000000" "uniformTestString"  ;
	setAttr ".ras" -type "Int32Array" 134 -1 -1 -1 -1 -1 -1
		 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1
		 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1
		 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1
		 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1
		 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1
		 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1
		 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1
		 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1
		 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1
		 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1
		 -1 -1 -1 -1 -1 -1 -1 -1 ;
	setAttr ".rlc" -type "stringArray" 134 "liquidAE_LifFloat( \"frequency\", -1, \"float\", \"frequency\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifColor( \"c0\", -1, \"color\", \"c0\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifColor( \"c1\", -1, \"color\", \"c1\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifColor( \"c2\", -1, \"color\", \"c2\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifColor( \"c3\", -1, \"color\", \"c3\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifColor( \"c4\", -1, \"color\", \"c4\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifColor( \"c5\", -1, \"color\", \"c5\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifColor( \"c6\", -1, \"color\", \"c6\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"p0\", -1, \"point\", \"p0\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"p1\", -1, \"point\", \"p1\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"p2\", -1, \"point\", \"p2\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"p3\", -1, \"point\", \"p3\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"p4\", -1, \"point\", \"p4\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"p5\", -1, \"point\", \"p5\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"p6\", -1, \"point\", \"p6\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"p7\", -1, \"point\", \"p7\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"p8\", -1, \"point\", \"p8\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"p9\", -1, \"point\", \"p9\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"v0\", -1, \"vector\", \"v0\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"v1\", -1, \"vector\", \"v1\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"v2\", -1, \"vector\", \"v2\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"v3\", -1, \"vector\", \"v3\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"v4\", -1, \"vector\", \"v4\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"v5\", -1, \"vector\", \"v5\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"v6\", -1, \"vector\", \"v6\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"v7\", -1, \"vector\", \"v7\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"v8\", -1, \"vector\", \"v8\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"v9\", -1, \"vector\", \"v9\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"n0\", -1, \"normal\", \"n0\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"n1\", -1, \"normal\", \"n1\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"n2\", -1, \"normal\", \"n2\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"n3\", -1, \"normal\", \"n3\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"n4\", -1, \"normal\", \"n4\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"n5\", -1, \"normal\", \"n5\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"n6\", -1, \"normal\", \"n6\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"n7\", -1, \"normal\", \"n7\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"n8\", -1, \"normal\", \"n8\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"n9\", -1, \"normal\", \"n9\", {\"0\", \"0\"}, \"\", 1 );" "" "" "" "" "" "" "liquidAE_LifString( \"s0\", -1, \"string\", \"s0\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifFloat( \"vfrequency\", -1, \"float\", \"vfrequency\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifColor( \"vc0\", -1, \"color\", \"vc0\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifColor( \"vc1\", -1, \"color\", \"vc1\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifColor( \"vc2\", -1, \"color\", \"vc2\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifColor( \"vc3\", -1, \"color\", \"vc3\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifColor( \"vc4\", -1, \"color\", \"vc4\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifColor( \"vc5\", -1, \"color\", \"vc5\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifColor( \"vc6\", -1, \"color\", \"vc6\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"vp0\", -1, \"point\", \"vp0\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"vp1\", -1, \"point\", \"vp1\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"vp2\", -1, \"point\", \"vp2\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"vp3\", -1, \"point\", \"vp3\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"vp4\", -1, \"point\", \"vp4\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"vp5\", -1, \"point\", \"vp5\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"vp6\", -1, \"point\", \"vp6\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"vp7\", -1, \"point\", \"vp7\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"vp8\", -1, \"point\", \"vp8\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"vp9\", -1, \"point\", \"vp9\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"vv0\", -1, \"vector\", \"vv0\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"vv1\", -1, \"vector\", \"vv1\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"vv2\", -1, \"vector\", \"vv2\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"vv3\", -1, \"vector\", \"vv3\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"vv4\", -1, \"vector\", \"vv4\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"vv5\", -1, \"vector\", \"vv5\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"vv6\", -1, \"vector\", \"vv6\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"vv7\", -1, \"vector\", \"vv7\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"vv8\", -1, \"vector\", \"vv8\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"vv9\", -1, \"vector\", \"vv9\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"vn0\", -1, \"normal\", \"vn0\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"vn1\", -1, \"normal\", \"vn1\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"vn2\", -1, \"normal\", \"vn2\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"vn3\", -1, \"normal\", \"vn3\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"vn4\", -1, \"normal\", \"vn4\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"vn5\", -1, \"normal\", \"vn5\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"vn6\", -1, \"normal\", \"vn6\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"vn7\", -1, \"normal\", \"vn7\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"vn8\", -1, \"normal\", \"vn8\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"vn9\", -1, \"normal\", \"vn9\", {\"0\", \"0\"}, \"\", 1 );" "" "" "" "" "" "" "liquidAE_LifFloat( \"ufrequency\", -1, \"float\", \"ufrequency\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifColor( \"uc0\", -1, \"color\", \"uc0\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifColor( \"uc1\", -1, \"color\", \"uc1\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifColor( \"uc2\", -1, \"color\", \"uc2\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifColor( \"uc3\", -1, \"color\", \"uc3\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifColor( \"uc4\", -1, \"color\", \"uc4\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifColor( \"uc5\", -1, \"color\", \"uc5\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifColor( \"uc6\", -1, \"color\", \"uc6\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"up0\", -1, \"point\", \"up0\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"up1\", -1, \"point\", \"up1\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"up2\", -1, \"point\", \"up2\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"up3\", -1, \"point\", \"up3\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"up4\", -1, \"point\", \"up4\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"up5\", -1, \"point\", \"up5\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"up6\", -1, \"point\", \"up6\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"up7\", -1, \"point\", \"up7\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"up8\", -1, \"point\", \"up8\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"up9\", -1, \"point\", \"up9\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"uv0\", -1, \"vector\", \"uv0\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"uv1\", -1, \"vector\", \"uv1\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"uv2\", -1, \"vector\", \"uv2\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"uv3\", -1, \"vector\", \"uv3\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"uv4\", -1, \"vector\", \"uv4\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"uv5\", -1, \"vector\", \"uv5\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"uv6\", -1, \"vector\", \"uv6\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"uv7\", -1, \"vector\", \"uv7\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"uv8\", -1, \"vector\", \"uv8\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"uv9\", -1, \"vector\", \"uv9\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"un0\", -1, \"normal\", \"un0\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"un1\", -1, \"normal\", \"un1\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"un2\", -1, \"normal\", \"un2\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"un3\", -1, \"normal\", \"un3\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"un4\", -1, \"normal\", \"un4\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"un5\", -1, \"normal\", \"un5\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"un6\", -1, \"normal\", \"un6\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"un7\", -1, \"normal\", \"un7\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"un8\", -1, \"normal\", \"un8\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"un9\", -1, \"normal\", \"un9\", {\"0\", \"0\"}, \"\", 1 );" "" "" "" "" "" "" "liquidAE_LifString( \"us0\", -1, \"string\", \"us0\", {\"0\", \"0\"}, \"\", 1 );"  ;
	setAttr ".rmt" -type "stringArray" 1 "surface"  ;
	setAttr ".rio" -type "Int32Array" 134 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 ;
	setAttr -k on ".frequency" 7.3388;
	setAttr -k on ".c0" -type "float3" 0 0.5 0.5 ;
	setAttr -k on ".c1" -type "float3" 0 0.5 0.5 ;
	setAttr -k on ".p1" -type "double3" 1 1 1 ;
	setAttr -k on ".p2" -type "double3" 2 2 2 ;
	setAttr -k on ".p3" -type "double3" 3 3 3 ;
	setAttr -k on ".p4" -type "double3" 4 4 4 ;
	setAttr -k on ".p5" -type "double3" 5 5 5 ;
	setAttr -k on ".p6" -type "double3" 6 6 6 ;
	setAttr -k on ".p7" -type "double3" 7 7 7 ;
	setAttr -k on ".p8" -type "double3" 8 8 8 ;
	setAttr -k on ".p9" -type "double3" 9 9 9 ;
	setAttr -k on ".v1" -type "double3" 1 1 1 ;
	setAttr -k on ".v2" -type "double3" 2 2 2 ;
	setAttr -k on ".v3" -type "double3" 3 3 3 ;
	setAttr -k on ".v4" -type "double3" 4 4 4 ;
	setAttr -k on ".v5" -type "double3" 5 5 5 ;
	setAttr -k on ".v6" -type "double3" 6 6 6 ;
	setAttr -k on ".v7" -type "double3" 7 7 7 ;
	setAttr -k on ".v8" -type "double3" 8 8 8 ;
	setAttr -k on ".v9" -type "double3" 9 9 9 ;
	setAttr -k on ".n1" -type "double3" 1 1 1 ;
	setAttr -k on ".n2" -type "double3" 2 2 2 ;
	setAttr -k on ".n3" -type "double3" 3 3 3 ;
	setAttr -k on ".n4" -type "double3" 4 4 4 ;
	setAttr -k on ".n5" -type "double3" 5 5 5 ;
	setAttr -k on ".n6" -type "double3" 6 6 6 ;
	setAttr -k on ".n7" -type "double3" 7 7 7 ;
	setAttr -k on ".n8" -type "double3" 8 8 8 ;
	setAttr -k on ".n9" -type "double3" 9 9 9 ;
	setAttr ".s0" -type "string" "testStringTTB";
	setAttr -k on ".vfrequency" 16;
	setAttr -k on ".vc0" -type "float3" 0 0.5 0.5 ;
	setAttr -k on ".vc1" -type "float3" 0 0.5 0.5 ;
	setAttr -k on ".vp1" -type "double3" 1 1 1 ;
	setAttr -k on ".vp2" -type "double3" 2 2 2 ;
	setAttr -k on ".vp3" -type "double3" 3 3 3 ;
	setAttr -k on ".vp4" -type "double3" 4 4 4 ;
	setAttr -k on ".vp5" -type "double3" 5 5 5 ;
	setAttr -k on ".vp6" -type "double3" 6 6 6 ;
	setAttr -k on ".vp7" -type "double3" 7 7 7 ;
	setAttr -k on ".vp8" -type "double3" 8 8 8 ;
	setAttr -k on ".vp9" -type "double3" 9 9 9 ;
	setAttr -k on ".vv1" -type "double3" 1 1 1 ;
	setAttr -k on ".vv2" -type "double3" 2 2 2 ;
	setAttr -k on ".vv3" -type "double3" 3 3 3 ;
	setAttr -k on ".vv4" -type "double3" 4 4 4 ;
	setAttr -k on ".vv5" -type "double3" 5 5 5 ;
	setAttr -k on ".vv6" -type "double3" 6 6 6 ;
	setAttr -k on ".vv7" -type "double3" 7 7 7 ;
	setAttr -k on ".vv8" -type "double3" 8 8 8 ;
	setAttr -k on ".vv9" -type "double3" 9 9 9 ;
	setAttr -k on ".vn1" -type "double3" 1 1 1 ;
	setAttr -k on ".vn2" -type "double3" 2 2 2 ;
	setAttr -k on ".vn3" -type "double3" 3 3 3 ;
	setAttr -k on ".vn4" -type "double3" 4 4 4 ;
	setAttr -k on ".vn5" -type "double3" 5 5 5 ;
	setAttr -k on ".vn6" -type "double3" 6 6 6 ;
	setAttr -k on ".vn7" -type "double3" 7 7 7 ;
	setAttr -k on ".vn8" -type "double3" 8 8 8 ;
	setAttr -k on ".vn9" -type "double3" 9 9 9 ;
	setAttr -k on ".ufrequency" 4;
	setAttr -k on ".uc0" -type "float3" 0 0.5 0.5 ;
	setAttr -k on ".uc1" -type "float3" 0 0.5 0.5 ;
	setAttr -k on ".up1" -type "double3" 1 1 1 ;
	setAttr -k on ".up2" -type "double3" 2 2 2 ;
	setAttr -k on ".up3" -type "double3" 3 3 3 ;
	setAttr -k on ".up4" -type "double3" 4 4 4 ;
	setAttr -k on ".up5" -type "double3" 5 5 5 ;
	setAttr -k on ".up6" -type "double3" 6 6 6 ;
	setAttr -k on ".up7" -type "double3" 7 7 7 ;
	setAttr -k on ".up8" -type "double3" 8 8 8 ;
	setAttr -k on ".up9" -type "double3" 9 9 9 ;
	setAttr -k on ".uv1" -type "double3" 1 1 1 ;
	setAttr -k on ".uv2" -type "double3" 2 2 2 ;
	setAttr -k on ".uv3" -type "double3" 3 3 3 ;
	setAttr -k on ".uv4" -type "double3" 4 4 4 ;
	setAttr -k on ".uv5" -type "double3" 5 5 5 ;
	setAttr -k on ".uv6" -type "double3" 6 6 6 ;
	setAttr -k on ".uv7" -type "double3" 7 7 7 ;
	setAttr -k on ".uv8" -type "double3" 8 8 8 ;
	setAttr -k on ".uv9" -type "double3" 9 9 9 ;
	setAttr -k on ".un1" -type "double3" 1 1 1 ;
	setAttr -k on ".un2" -type "double3" 2 2 2 ;
	setAttr -k on ".un3" -type "double3" 3 3 3 ;
	setAttr -k on ".un4" -type "double3" 4 4 4 ;
	setAttr -k on ".un5" -type "double3" 5 5 5 ;
	setAttr -k on ".un6" -type "double3" 6 6 6 ;
	setAttr -k on ".un7" -type "double3" 7 7 7 ;
	setAttr -k on ".un8" -type "double3" 8 8 8 ;
	setAttr -k on ".un9" -type "double3" 9 9 9 ;
	setAttr ".us0" -type "string" "uniformTestStringTT";
createNode shadingEngine -n "liquidSurface2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
createNode liquidRibBox -n "liquidRibBox1";
createNode liquidCoShader -n "liquidCoShader1";
	addAttr -ci true -h true -sn "texturename" -ln "texturename" -dt "string";
	addAttr -ci true -h true -k true -sn "Kd" -ln "Kd" -at "double";
	addAttr -ci true -h true -k true -sn "Kg" -ln "Kg" -at "double";
	addAttr -ci true -h true -k true -sn "alpha_u" -ln "alpha_u" -at "double";
	addAttr -ci true -h true -k true -sn "RRthreshold" -ln "RRthreshold" -at "double";
	setAttr ".rms" -type "string" "glossy_area";
	setAttr ".rml" -type "string" "E:/dev/Autodesk/maya/myplugin/project/liquid_/2.3.3/test/co_shader/glossy_area.slo";
	setAttr ".rpr" -type "stringArray" 5 "texturename" "Kd" "Kg" "alpha_u" "RRthreshold"  ;
	setAttr ".rdt" -type "stringArray" 5 "uniform" "uniform" "uniform" "uniform" "uniform"  ;
	setAttr ".rty" -type "stringArray" 5 "string" "float" "float" "float" "float"  ;
	setAttr ".rdf" -type "stringArray" 5 "" "0.5" "0.5" "0.05" "0.01"  ;
	setAttr ".ras" -type "Int32Array" 5 0 0 0 0 0 ;
	setAttr ".rlc" -type "stringArray" 5 "liquidAE_LifString( \"texturename\", 0, \"string\", \"texturename\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifFloat( \"Kd\", 0, \"float\", \"Kd\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifFloat( \"Kg\", 0, \"float\", \"Kg\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifFloat( \"alpha_u\", 0, \"float\", \"alpha_u\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifFloat( \"RRthreshold\", 0, \"float\", \"RRthreshold\", {\"0\", \"0\"}, \"\", 1 );"  ;
	setAttr ".texturename" -type "string" "";
	setAttr -k on ".Kd" 0.5;
	setAttr -k on ".Kg" 0.5;
	setAttr -k on ".alpha_u" 0.05;
	setAttr -k on ".RRthreshold" 0.01;
createNode liquidLight -n "liquidLight1";
	addAttr -ci true -sn "liqAssignedObjects" -ln "liqAssignedObjects" -at "message";
	addAttr -ci true -h true -k true -sn "intensity" -ln "intensity" -at "double";
	addAttr -ci true -uac -h true -k true -sn "lightcolor" -ln "lightcolor" -at "float3" 
		-nc 3;
	addAttr -ci true -h true -k true -sn "lightcolora" -ln "lightcolora" -at "float" 
		-p "lightcolor";
	addAttr -ci true -h true -k true -sn "lightcolorb" -ln "lightcolorb" -at "float" 
		-p "lightcolor";
	addAttr -ci true -h true -k true -sn "lightcolorc" -ln "lightcolorc" -at "float" 
		-p "lightcolor";
	addAttr -ci true -h true -k true -sn "samples" -ln "samples" -at "double";
	addAttr -ci true -h true -k true -sn "center" -ln "center" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "centera" -ln "centera" -at "double" -p "center";
	addAttr -ci true -h true -k true -sn "centerb" -ln "centerb" -at "double" -p "center";
	addAttr -ci true -h true -k true -sn "centerc" -ln "centerc" -at "double" -p "center";
	addAttr -ci true -h true -k true -sn "udir" -ln "udir" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "udira" -ln "udira" -at "double" -p "udir";
	addAttr -ci true -h true -k true -sn "udirb" -ln "udirb" -at "double" -p "udir";
	addAttr -ci true -h true -k true -sn "udirc" -ln "udirc" -at "double" -p "udir";
	addAttr -ci true -h true -k true -sn "vdir" -ln "vdir" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "vdira" -ln "vdira" -at "double" -p "vdir";
	addAttr -ci true -h true -k true -sn "vdirb" -ln "vdirb" -at "double" -p "vdir";
	addAttr -ci true -h true -k true -sn "vdirc" -ln "vdirc" -at "double" -p "vdir";
	setAttr ".rms" -type "string" "rectarealight";
	setAttr ".rml" -type "string" "E:/dev/Autodesk/maya/myplugin/project/liquid_/2.3.3/test/co_shader/rectarealight.slo";
	setAttr ".rpr" -type "stringArray" 6 "intensity" "lightcolor" "samples" "center" "udir" "vdir"  ;
	setAttr ".rdt" -type "stringArray" 6 "uniform" "uniform" "uniform" "uniform" "uniform" "uniform"  ;
	setAttr ".rty" -type "stringArray" 6 "float" "color" "float" "point" "vector" "vector"  ;
	setAttr ".rdf" -type "stringArray" 6 "1.0" "1.0000001.0000001.000000" "16.0" "0.0000000.0000000.000000" "1.0000000.0000000.000000" "0.0000001.0000000.000000"  ;
	setAttr ".ras" -type "Int32Array" 6 -1 -1 -1 -1 -1 -1 ;
	setAttr ".rlc" -type "stringArray" 6 "liquidAE_LifFloat( \"intensity\", -1, \"float\", \"intensity\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifColor( \"lightcolor\", -1, \"color\", \"lightcolor\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifFloat( \"samples\", -1, \"float\", \"samples\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"center\", -1, \"point\", \"center\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"udir\", -1, \"vector\", \"udir\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"vdir\", -1, \"vector\", \"vdir\", {\"0\", \"0\"}, \"\", 1 );"  ;
	setAttr ".rmt" -type "stringArray" 1 "light"  ;
	setAttr ".rio" -type "Int32Array" 6 0 0 0 0 0 0 ;
	setAttr -k on ".intensity" 1;
	setAttr -k on ".lightcolor" -type "float3" 1 1 1 ;
	setAttr -k on ".samples" 16;
	setAttr -k on ".udir" -type "double3" 1 0 0 ;
	setAttr -k on ".vdir" -type "double3" 0 1 0 ;
createNode shadingEngine -n "liquidLight1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
createNode polySphere -n "polySphere3";
createNode shadingEngine -n "liquidSurface3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
createNode liquidSurface -n "liquidSurface4";
	addAttr -ci true -sn "liqAssignedObjects" -ln "liqAssignedObjects" -at "message";
	addAttr -ci true -h true -k true -sn "frequency" -ln "frequency" -at "double";
	addAttr -ci true -h true -sn "s0" -ln "s0" -dt "string";
	addAttr -ci true -h true -k true -sn "v0" -ln "v0" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "v0a" -ln "v0a" -at "double" -p "v0";
	addAttr -ci true -h true -k true -sn "v0b" -ln "v0b" -at "double" -p "v0";
	addAttr -ci true -h true -k true -sn "v0c" -ln "v0c" -at "double" -p "v0";
	setAttr ".rms" -type "string" "test_type";
	setAttr ".rml" -type "string" "E:/dev/Autodesk/maya/myplugin/project/liquid_/2.3.3/lib/shaders/test_type.slo";
	setAttr ".rpr" -type "stringArray" 5 "frequency" "s0" "v0" "m0" "m1"  ;
	setAttr ".rdt" -type "stringArray" 5 "uniform" "uniform" "uniform" "uniform" "uniform"  ;
	setAttr ".rty" -type "stringArray" 5 "float" "string" "vector" "matrix" "matrix"  ;
	setAttr ".rdf" -type "stringArray" 5 "7.0" "test stringATT" "1.0000005.0000003.000000" "0.000000:0.000000:0.000000:0.000000; 0.000000:0.000000:0.000000:0.000000; 0.000000:0.000000:0.000000:0.000000; 0.000000:0.000000:0.000000:0.000000" "0.000000:1.000000:2.000000:3.000000; 4.000000:5.000000:6.000000:7.000000; 8.000000:9.000000:10.000000:11.000000; 12.000000:13.000000:14.000000:15.000000"  ;
	setAttr ".ras" -type "Int32Array" 5 -1 -1 -1 -1 -1 ;
	setAttr ".rlc" -type "stringArray" 5 "liquidAE_LifFloat( \"frequency\", -1, \"float\", \"frequency\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifString( \"s0\", -1, \"string\", \"s0\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"v0\", -1, \"vector\", \"v0\", {\"0\", \"0\"}, \"\", 1 );" "" ""  ;
	setAttr ".rmt" -type "stringArray" 1 "surface"  ;
	setAttr ".rio" -type "Int32Array" 5 0 0 0 0 0 ;
	setAttr -k on ".frequency" 1.3884;
	setAttr ".s0" -type "string" "test stringAB";
	setAttr -k on ".v0" -type "double3" 1 3 3 ;
createNode shadingEngine -n "liquidSurface4SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
createNode polyCube -n "polyCube1";
	setAttr ".cuv" 4;
createNode shadingEngine -n "liquidSurface5SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
createNode shadingEngine -n "liquidSurface5SG1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
createNode shadingEngine -n "liquidSurface6SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo9";
createNode liquidSurface -n "liquidSurface7";
	addAttr -ci true -sn "liqAssignedObjects" -ln "liqAssignedObjects" -at "message";
	addAttr -ci true -h true -k true -sn "frequency" -ln "frequency" -at "double";
	addAttr -ci true -h true -sn "s0" -ln "s0" -dt "string";
	addAttr -ci true -h true -k true -sn "v0" -ln "v0" -at "double3" -nc 3;
	addAttr -ci true -h true -k true -sn "v0a" -ln "v0a" -at "double" -p "v0";
	addAttr -ci true -h true -k true -sn "v0b" -ln "v0b" -at "double" -p "v0";
	addAttr -ci true -h true -k true -sn "v0c" -ln "v0c" -at "double" -p "v0";
	setAttr ".rms" -type "string" "test_type";
	setAttr ".rml" -type "string" "E:/dev/Autodesk/maya/myplugin/project/liquid_/2.3.3/lib/shaders/test_type.slo";
	setAttr ".rpr" -type "stringArray" 5 "frequency" "s0" "v0" "m0" "m1"  ;
	setAttr ".rdt" -type "stringArray" 5 "uniform" "uniform" "uniform" "uniform" "uniform"  ;
	setAttr ".rty" -type "stringArray" 5 "float" "string" "vector" "matrix" "matrix"  ;
	setAttr ".rdf" -type "stringArray" 5 "7.0" "test stringATT" "1.0000005.0000003.000000" "0.000000:0.000000:0.000000:0.000000; 0.000000:0.000000:0.000000:0.000000; 0.000000:0.000000:0.000000:0.000000; 0.000000:0.000000:0.000000:0.000000" "0.000000:1.000000:2.000000:3.000000; 4.000000:5.000000:6.000000:7.000000; 8.000000:9.000000:10.000000:11.000000; 12.000000:13.000000:14.000000:15.000000"  ;
	setAttr ".ras" -type "Int32Array" 5 -1 -1 -1 -1 -1 ;
	setAttr ".rlc" -type "stringArray" 5 "liquidAE_LifFloat( \"frequency\", -1, \"float\", \"frequency\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifString( \"s0\", -1, \"string\", \"s0\", {\"0\", \"0\"}, \"\", 1 );" "liquidAE_LifVector( \"v0\", -1, \"vector\", \"v0\", {\"0\", \"0\"}, \"\", 1 );" "" ""  ;
	setAttr ".rmt" -type "stringArray" 1 "surface"  ;
	setAttr ".rio" -type "Int32Array" 5 0 0 0 0 0 ;
	setAttr ".pcp" -type "string" "";
	setAttr ".pcb" -type "string" "";
	setAttr -k on ".frequency" 7;
	setAttr ".s0" -type "string" "test stringATT";
	setAttr -k on ".v0" -type "double3" 1 5 3 ;
createNode shadingEngine -n "liquidSurface7SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo10";
createNode polyCylinder -n "polyCylinder1";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode liquidSurface -n "liquidSurface8";
	addAttr -ci true -sn "liqAssignedObjects" -ln "liqAssignedObjects" -at "message";
	addAttr -ci true -h true -sn "s0" -ln "s0" -dt "string";
	setAttr ".rms" -type "string" "test_type_string";
	setAttr ".rml" -type "string" "E:/dev/autodesk/maya/myplugin/project/liquid_/2.3.3/lib/shaders/test_type_string.slo";
	setAttr ".rpr" -type "stringArray" 1 "s0"  ;
	setAttr ".rdt" -type "stringArray" 1 "uniform"  ;
	setAttr ".rty" -type "stringArray" 1 "string"  ;
	setAttr ".rdf" -type "stringArray" 1 "test string"  ;
	setAttr ".ras" -type "Int32Array" 1 -1 ;
	setAttr ".rlc" -type "stringArray" 1 "liquidAE_LifString( \"s0\", -1, \"string\", \"s0\", {\"0\", \"0\"}, \"\", 1 );"  ;
	setAttr ".rmt" -type "stringArray" 1 "surface"  ;
	setAttr ".rio" -type "Int32Array" 1 0 ;
	setAttr ".s0" -type "string" "test stringT";
createNode shadingEngine -n "liquidSurface8SG";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo11";
createNode liquidSurface -n "liquidSurface9";
	addAttr -ci true -sn "liqAssignedObjects" -ln "liqAssignedObjects" -at "message";
	setAttr ".rms" -type "string" "test_type_matrix";
	setAttr ".rml" -type "string" "E:/dev/autodesk/maya/myplugin/project/liquid_/2.3.3/lib/shaders/test_type_matrix.slo";
	setAttr ".rpr" -type "stringArray" 2 "m0" "m1"  ;
	setAttr ".rdt" -type "stringArray" 2 "uniform" "uniform"  ;
	setAttr ".rty" -type "stringArray" 2 "matrix" "matrix"  ;
	setAttr ".rdf" -type "stringArray" 2 "0.000000:0.000000:0.000000:0.000000; 0.000000:0.000000:0.000000:0.000000; 0.000000:0.000000:0.000000:0.000000; 0.000000:0.000000:0.000000:0.000000" "0.000000:1.000000:2.000000:3.000000; 4.000000:5.000000:6.000000:7.000000; 8.000000:9.000000:10.000000:11.000000; 12.000000:13.000000:14.000000:15.000000"  ;
	setAttr ".ras" -type "Int32Array" 2 -1 -1 ;
	setAttr ".rlc" -type "stringArray" 2 "" ""  ;
	setAttr ".rmt" -type "stringArray" 1 "surface"  ;
	setAttr ".rio" -type "Int32Array" 2 0 0 ;
createNode shadingEngine -n "liquidSurface9SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo12";
createNode polyCone -n "polyCone1";
	setAttr ".cuv" 3;
createNode polyTorus -n "polyTorus1";
createNode shadingEngine -n "liquidSurface10SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo13";
createNode polyPlane -n "polyPlane3";
	setAttr ".w" 4.3985602139113951;
	setAttr ".h" 2.5783885800572977;
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode file -n "file1";
createNode place2dTexture -n "place2dTexture1";
createNode liquidSurface -n "liquidSurface11";
	addAttr -ci true -sn "liqAssignedObjects" -ln "liqAssignedObjects" -at "message";
	addAttr -ci true -h true -m -sn "a_f" -ln "a_f" -at "double";
	addAttr -ci true -h true -m -sn "a_s" -ln "a_s" -dt "string";
	addAttr -ci true -h true -m -sn "a_n" -ln "a_n" -at "double3" -nc 3;
	addAttr -ci true -h true -sn "a_na" -ln "a_na" -at "double" -p "a_n";
	addAttr -ci true -h true -sn "a_nb" -ln "a_nb" -at "double" -p "a_n";
	addAttr -ci true -h true -sn "a_nc" -ln "a_nc" -at "double" -p "a_n";
	addAttr -ci true -h true -m -sn "a_p" -ln "a_p" -at "double3" -nc 3;
	addAttr -ci true -h true -sn "a_pa" -ln "a_pa" -at "double" -p "a_p";
	addAttr -ci true -h true -sn "a_pb" -ln "a_pb" -at "double" -p "a_p";
	addAttr -ci true -h true -sn "a_pc" -ln "a_pc" -at "double" -p "a_p";
	addAttr -ci true -uac -h true -k true -m -sn "a_c" -ln "a_c" -at "float3" -nc 3;
	addAttr -ci true -h true -k true -sn "a_ca" -ln "a_ca" -at "float" -p "a_c";
	addAttr -ci true -h true -k true -sn "a_cb" -ln "a_cb" -at "float" -p "a_c";
	addAttr -ci true -h true -k true -sn "a_cc" -ln "a_cc" -at "float" -p "a_c";
	addAttr -ci true -h true -m -sn "a_vf" -ln "a_vf" -at "double";
	addAttr -ci true -h true -m -sn "a_vv" -ln "a_vv" -at "double3" -nc 3;
	addAttr -ci true -h true -sn "a_vva" -ln "a_vva" -at "double" -p "a_vv";
	addAttr -ci true -h true -sn "a_vvb" -ln "a_vvb" -at "double" -p "a_vv";
	addAttr -ci true -h true -sn "a_vvc" -ln "a_vvc" -at "double" -p "a_vv";
	addAttr -ci true -h true -m -sn "a_vn" -ln "a_vn" -at "double3" -nc 3;
	addAttr -ci true -h true -sn "a_vna" -ln "a_vna" -at "double" -p "a_vn";
	addAttr -ci true -h true -sn "a_vnb" -ln "a_vnb" -at "double" -p "a_vn";
	addAttr -ci true -h true -sn "a_vnc" -ln "a_vnc" -at "double" -p "a_vn";
	addAttr -ci true -h true -m -sn "a_vp" -ln "a_vp" -at "double3" -nc 3;
	addAttr -ci true -h true -sn "a_vpa" -ln "a_vpa" -at "double" -p "a_vp";
	addAttr -ci true -h true -sn "a_vpb" -ln "a_vpb" -at "double" -p "a_vp";
	addAttr -ci true -h true -sn "a_vpc" -ln "a_vpc" -at "double" -p "a_vp";
	addAttr -ci true -uac -h true -k true -m -sn "a_vc__" -ln "a_vc__" -at "float3" 
		-nc 3;
	addAttr -ci true -h true -k true -sn "a_vc__a" -ln "a_vc__a" -at "float" -p "a_vc__";
	addAttr -ci true -h true -k true -sn "a_vc__b" -ln "a_vc__b" -at "float" -p "a_vc__";
	addAttr -ci true -h true -k true -sn "a_vc__c" -ln "a_vc__c" -at "float" -p "a_vc__";
	addAttr -ci true -h true -m -sn "a_v" -ln "a_v" -at "double3" -nc 3;
	addAttr -ci true -h true -sn "a_va" -ln "a_va" -at "double" -p "a_v";
	addAttr -ci true -h true -sn "a_vb" -ln "a_vb" -at "double" -p "a_v";
	addAttr -ci true -h true -sn "a_vc" -ln "a_vc" -at "double" -p "a_v";
	setAttr ".rms" -type "string" "test_type_array";
	setAttr ".rml" -type "string" "E:/dev/autodesk/maya/myplugin/project/liquid_/2.3.3/lib/shaders/test_type_array.slo";
	setAttr ".rpr" -type "stringArray" 11 "a_f" "a_s" "a_v" "a_n" "a_p" "a_c" "a_vf" "a_vv" "a_vn" "a_vp" "a_vc__"  ;
	setAttr ".rdt" -type "stringArray" 11 "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "varying" "varying" "varying" "varying" "varying"  ;
	setAttr ".rty" -type "stringArray" 11 "float" "string" "vector" "normal" "point" "color" "float" "vector" "normal" "point" "color"  ;
	setAttr ".rdf" -type "stringArray" 11 "3.142.170.0-1.0" "AB0CDE" "0.0000000.0000000.0000007.0000008.0000009.000000" "0.0000000.0000000.0000001.0000002.0000003.000000" "0.0000000.0000000.0000004.0000005.0000006.000000" "0.0000000.0000000.0000001.0000000.0000001.000000" "3.142.170.0-1.0" "1.0000000.0000000.0000002.0000002.0000003.000000" "1.0000000.0000000.0000003.0000002.0000003.000000" "1.0000000.0000000.0000004.0000002.0000003.000000" "0.0000000.0000000.0000001.0000000.0000001.000000"  ;
	setAttr ".ras" -type "Int32Array" 11 4 2 2 2 2 2
		 4 2 2 2 2 ;
	setAttr ".rlc" -type "stringArray" 11 "liquidAE_LifFloat( \"a_f\", 4, \"float\", \"a_f\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifString( \"a_s\", 2, \"string\", \"a_s\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifVector( \"a_v\", 2, \"vector\", \"a_v\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifVector( \"a_n\", 2, \"normal\", \"a_n\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifVector( \"a_p\", 2, \"point\", \"a_p\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifColor( \"a_c\", 2, \"color\", \"a_c\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifFloat( \"a_vf\", 4, \"float\", \"a_vf\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifVector( \"a_vv\", 2, \"vector\", \"a_vv\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifVector( \"a_vn\", 2, \"normal\", \"a_vn\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifVector( \"a_vp\", 2, \"point\", \"a_vp\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifColor( \"a_vc__\", 2, \"color\", \"a_vc__\", {\"0\", \"0\"}, \"\", 14 );"  ;
	setAttr ".rmt" -type "stringArray" 1 "surface"  ;
	setAttr ".rio" -type "Int32Array" 11 0 0 0 0 0 0
		 0 0 0 0 0 ;
	setAttr -s 4 ".a_f[0:3]"  3.14 2.17 0 -1;
	setAttr -s 2 ".a_s";
	setAttr ".a_s[0]" -type "string" "AB0";
	setAttr ".a_s[1]" -type "string" "CDE";
	setAttr -k on ".a_n[1]" -type "double3" 1 2 3;
	setAttr -k on ".a_n";
	setAttr -k on ".a_n[0]";
	setAttr -k on ".a_n[0].a_na";
	setAttr -k on ".a_n[0].a_nb";
	setAttr -k on ".a_n[0].a_nc";
	setAttr -k on ".a_n[1]";
	setAttr -k on ".a_n[1].a_na";
	setAttr -k on ".a_n[1].a_nb";
	setAttr -k on ".a_n[1].a_nc";
	setAttr -k on ".a_p[1]" -type "double3" 4 5 6;
	setAttr -k on ".a_p";
	setAttr -k on ".a_p[0]";
	setAttr -k on ".a_p[0].a_pa";
	setAttr -k on ".a_p[0].a_pb";
	setAttr -k on ".a_p[0].a_pc";
	setAttr -k on ".a_p[1]";
	setAttr -k on ".a_p[1].a_pa";
	setAttr -k on ".a_p[1].a_pb";
	setAttr -k on ".a_p[1].a_pc";
	setAttr -s 2 -k on ".a_c[0:1]" -type "float3"  0.11667599 0.17751354 
		0.463 1 0 1;
	setAttr -s 4 ".a_vf[0:3]"  3.14 2.17 0 -1;
	setAttr -s 2 -k on ".a_vv[0:1]" -type "double3" 1 0 0 2 2 3;
	setAttr -k on ".a_vv";
	setAttr -k on ".a_vv[0]";
	setAttr -k on ".a_vv[0].a_vva";
	setAttr -k on ".a_vv[0].a_vvb";
	setAttr -k on ".a_vv[0].a_vvc";
	setAttr -k on ".a_vv[1]";
	setAttr -k on ".a_vv[1].a_vva";
	setAttr -k on ".a_vv[1].a_vvb";
	setAttr -k on ".a_vv[1].a_vvc";
	setAttr -s 2 -k on ".a_vn[0:1]" -type "double3" 1 0 0 3 2 3;
	setAttr -k on ".a_vn";
	setAttr -k on ".a_vn[0]";
	setAttr -k on ".a_vn[0].a_vna";
	setAttr -k on ".a_vn[0].a_vnb";
	setAttr -k on ".a_vn[0].a_vnc";
	setAttr -k on ".a_vn[1]";
	setAttr -k on ".a_vn[1].a_vna";
	setAttr -k on ".a_vn[1].a_vnb";
	setAttr -k on ".a_vn[1].a_vnc";
	setAttr -s 2 -k on ".a_vp[0:1]" -type "double3" 1 0 0 4 2 3;
	setAttr -k on ".a_vp";
	setAttr -k on ".a_vp[0]";
	setAttr -k on ".a_vp[0].a_vpa";
	setAttr -k on ".a_vp[0].a_vpb";
	setAttr -k on ".a_vp[0].a_vpc";
	setAttr -k on ".a_vp[1]";
	setAttr -k on ".a_vp[1].a_vpa";
	setAttr -k on ".a_vp[1].a_vpb";
	setAttr -k on ".a_vp[1].a_vpc";
	setAttr -k on ".a_vc__[1]" -type "float3"  1 0 1;
	setAttr -k on ".a_v[1]" -type "double3" 7 8 9;
	setAttr -k on ".a_v";
	setAttr -k on ".a_v[0]";
	setAttr -k on ".a_v[0].a_va";
	setAttr -k on ".a_v[0].a_vb";
	setAttr -k on ".a_v[0].a_vc";
	setAttr -k on ".a_v[1]";
	setAttr -k on ".a_v[1].a_va";
	setAttr -k on ".a_v[1].a_vb";
	setAttr -k on ".a_v[1].a_vc";
createNode shadingEngine -n "liquidSurface11SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo14";
createNode renderLayer -n "DepthOfField";
	setAttr -s 2 ".adjs";
	setAttr ".adjs[1].val" 1;
	setAttr ".adjs[2].val" -type "string" "DepthOfField1";
	setAttr ".do" 1;
createNode vectorRenderGlobals -s -n "vectorRenderGlobals";
createNode mentalrayItemsList -s -n "mentalrayItemsList";
	setAttr -s 17 ".opt";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr ".maxr" 2;
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
createNode mentalrayOptions -s -n "miContourPreset";
createNode mentalrayOptions -s -n "Draft";
	setAttr ".maxr" 2;
createNode mentalrayOptions -s -n "DraftMotionBlur";
	setAttr ".maxr" 2;
	setAttr ".mb" 1;
	setAttr ".tconr" 1;
	setAttr ".tcong" 1;
	setAttr ".tconb" 1;
	setAttr ".tcona" 1;
createNode mentalrayOptions -s -n "DraftRapidMotion";
	setAttr ".scan" 3;
	setAttr ".rapc" 1;
	setAttr ".raps" 0.25;
	setAttr ".maxr" 2;
	setAttr ".mb" 1;
	setAttr ".tconr" 1;
	setAttr ".tcong" 1;
	setAttr ".tconb" 1;
	setAttr ".tcona" 1;
createNode mentalrayOptions -s -n "Preview";
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
createNode mentalrayOptions -s -n "PreviewMotionblur";
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".mb" 1;
	setAttr ".tconr" 0.5;
	setAttr ".tcong" 0.5;
	setAttr ".tconb" 0.5;
	setAttr ".tcona" 0.5;
createNode mentalrayOptions -s -n "PreviewRapidMotion";
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".scan" 3;
	setAttr ".rapc" 3;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".mb" 1;
	setAttr ".tconr" 0.5;
	setAttr ".tcong" 0.5;
	setAttr ".tconb" 0.5;
	setAttr ".tcona" 0.5;
createNode mentalrayOptions -s -n "PreviewCaustics";
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".ca" yes;
	setAttr ".cc" 1;
	setAttr ".cr" 1;
createNode mentalrayOptions -s -n "PreviewGlobalIllum";
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".gi" yes;
	setAttr ".gc" 1;
	setAttr ".gr" 1;
createNode mentalrayOptions -s -n "PreviewFinalGather";
	setAttr ".minsp" -1;
	setAttr ".maxsp" 1;
	setAttr ".fil" 1;
	setAttr ".rflr" 2;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 4;
	setAttr ".fg" yes;
createNode mentalrayOptions -s -n "Production";
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 2;
	setAttr ".rflr" 10;
	setAttr ".rfrr" 10;
	setAttr ".maxr" 20;
createNode mentalrayOptions -s -n "ProductionMotionblur";
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 2;
	setAttr ".rflr" 10;
	setAttr ".rfrr" 10;
	setAttr ".maxr" 20;
	setAttr ".mb" 2;
createNode mentalrayOptions -s -n "ProductionRapidMotion";
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 2;
	setAttr ".scan" 3;
	setAttr ".rapc" 8;
	setAttr ".raps" 2;
	setAttr ".rflr" 10;
	setAttr ".rfrr" 10;
	setAttr ".maxr" 20;
	setAttr ".mb" 2;
createNode mentalrayOptions -s -n "ProductionFineTrace";
	setAttr ".conr" 0.019999999552965164;
	setAttr ".cong" 0.019999999552965164;
	setAttr ".conb" 0.019999999552965164;
	setAttr ".minsp" 1;
	setAttr ".maxsp" 2;
	setAttr ".fil" 1;
	setAttr ".filw" 0.75;
	setAttr ".filh" 0.75;
	setAttr ".jit" yes;
	setAttr ".scan" 0;
createNode mentalrayOptions -s -n "ProductionRapidFur";
	setAttr ".conr" 0.039999999105930328;
	setAttr ".cong" 0.029999999329447746;
	setAttr ".conb" 0.070000000298023224;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 1;
	setAttr ".filw" 1.1449999809265137;
	setAttr ".filh" 1.1449999809265137;
	setAttr ".jit" yes;
	setAttr ".scan" 3;
	setAttr ".rapc" 3;
	setAttr ".raps" 0.25;
	setAttr ".ray" no;
	setAttr ".shmth" 3;
	setAttr ".shmap" 3;
	setAttr ".rsm" 1;
	setAttr ".mbsm" no;
	setAttr ".bism" 0.019999999552965164;
createNode mentalrayOptions -s -n "ProductionRapidHair";
	setAttr ".conr" 0.039999999105930328;
	setAttr ".cong" 0.029999999329447746;
	setAttr ".conb" 0.070000000298023224;
	setAttr ".minsp" 0;
	setAttr ".maxsp" 2;
	setAttr ".fil" 1;
	setAttr ".filw" 1.1449999809265137;
	setAttr ".filh" 1.1449999809265137;
	setAttr ".jit" yes;
	setAttr ".scan" 3;
	setAttr ".rapc" 6;
	setAttr ".ray" no;
	setAttr ".shmth" 3;
	setAttr ".shmap" 3;
	setAttr ".rsm" 1;
	setAttr ".mbsm" no;
	setAttr ".bism" 0.019999999552965164;
createNode polyCube -n "polyCube2";
	setAttr ".cuv" 4;
createNode renderLayer -n "MotionBlur";
	setAttr -s 3 ".adjs";
	setAttr ".adjs[1].val" 1;
	setAttr ".adjs[2].val" 1;
	setAttr -s 2 ".oajs";
	setAttr ".do" 2;
createNode animCurveTL -n "pCube2_translateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -1.9398132789321174 10 -1.9398132789321174;
createNode animCurveTL -n "pCube2_translateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 2.2186132342421683 10 2.2186132342421683;
createNode animCurveTL -n "pCube2_translateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.75365896265762 10 12.864080492166895;
createNode animCurveTU -n "pCube2_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 10 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "pCube2_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 10 0;
createNode animCurveTA -n "pCube2_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 10 0;
createNode animCurveTA -n "pCube2_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 10 0;
createNode animCurveTU -n "pCube2_scaleX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 10 1;
createNode animCurveTU -n "pCube2_scaleY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 10 1;
createNode animCurveTU -n "pCube2_scaleZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 10 1;
createNode polyCube -n "polyCube3";
	setAttr ".cuv" 4;
createNode animCurveTL -n "pCubeShape2_pnts_2__pntx";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 10 0;
createNode animCurveTL -n "pCubeShape2_pnts_2__pnty";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 3.1878561973571777 10 8.3039731979370117;
createNode animCurveTL -n "pCubeShape2_pnts_2__pntz";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 10 -10.251984596252441;
createNode animCurveTL -n "pCubeShape2_pnts_3__pntx";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 10 0;
createNode animCurveTL -n "pCubeShape2_pnts_3__pnty";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 3.1878561973571777 10 8.3039731979370117;
createNode animCurveTL -n "pCubeShape2_pnts_3__pntz";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 10 -10.251984596252441;
createNode animCurveTL -n "pCubeShape2_pnts_4__pntx";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 10 0;
createNode animCurveTL -n "pCubeShape2_pnts_4__pnty";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 3.1878561973571777 10 8.3039731979370117;
createNode animCurveTL -n "pCubeShape2_pnts_4__pntz";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 10 -10.251984596252441;
createNode animCurveTL -n "pCubeShape2_pnts_5__pntx";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 10 0;
createNode animCurveTL -n "pCubeShape2_pnts_5__pnty";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 3.1878561973571777 10 8.3039731979370117;
createNode animCurveTL -n "pCubeShape2_pnts_5__pntz";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 10 -10.251984596252441;
createNode animCurveTL -n "pCubeShape3_pnts_0__pntx";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 10 0;
createNode animCurveTL -n "pCubeShape3_pnts_0__pnty";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 10 3.3670618534088135;
createNode animCurveTL -n "pCubeShape3_pnts_0__pntz";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -4.649590015411377 10 4.8299641609191895;
createNode animCurveTL -n "pCubeShape3_pnts_1__pntx";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 10 0;
createNode animCurveTL -n "pCubeShape3_pnts_1__pnty";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 10 3.3670618534088135;
createNode animCurveTL -n "pCubeShape3_pnts_1__pntz";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -4.649590015411377 10 4.8299641609191895;
createNode animCurveTL -n "pCubeShape3_pnts_2__pntx";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 10 0;
createNode animCurveTL -n "pCubeShape3_pnts_2__pnty";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 10 3.3670618534088135;
createNode animCurveTL -n "pCubeShape3_pnts_2__pntz";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -4.649590015411377 10 4.8299641609191895;
createNode animCurveTL -n "pCubeShape3_pnts_3__pntx";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 10 0;
createNode animCurveTL -n "pCubeShape3_pnts_3__pnty";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 10 3.3670618534088135;
createNode animCurveTL -n "pCubeShape3_pnts_3__pntz";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -4.649590015411377 10 4.8299641609191895;
createNode animCurveTL -n "pCubeShape3_pnts_4__pntx";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 10 0;
createNode animCurveTL -n "pCubeShape3_pnts_4__pnty";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 10 3.3670618534088135;
createNode animCurveTL -n "pCubeShape3_pnts_4__pntz";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -4.649590015411377 10 4.8299641609191895;
createNode animCurveTL -n "pCubeShape3_pnts_5__pntx";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 10 0;
createNode animCurveTL -n "pCubeShape3_pnts_5__pnty";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 10 3.3670618534088135;
createNode animCurveTL -n "pCubeShape3_pnts_5__pntz";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -4.649590015411377 10 4.8299641609191895;
createNode animCurveTL -n "pCubeShape3_pnts_6__pntx";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 10 0;
createNode animCurveTL -n "pCubeShape3_pnts_6__pnty";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 10 3.3670618534088135;
createNode animCurveTL -n "pCubeShape3_pnts_6__pntz";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -4.649590015411377 10 4.8299641609191895;
createNode animCurveTL -n "pCubeShape3_pnts_7__pntx";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 10 0;
createNode animCurveTL -n "pCubeShape3_pnts_7__pnty";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 10 3.3670618534088135;
createNode animCurveTL -n "pCubeShape3_pnts_7__pntz";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -4.649590015411377 10 4.8299641609191895;
createNode polySphere -n "polySphere4";
createNode renderLayer -n "LightShader";
	setAttr ".adjs[0].val" 1;
	setAttr ".do" 3;
createNode liquidLight -n "liquidLight2";
	addAttr -ci true -sn "liqAssignedObjects" -ln "liqAssignedObjects" -at "message";
	addAttr -ci true -h true -sn "intensity" -ln "intensity" -at "double";
	addAttr -ci true -uac -h true -k true -sn "lightcolor" -ln "lightcolor" -at "float3" 
		-nc 3;
	addAttr -ci true -h true -k true -sn "lightcolora" -ln "lightcolora" -at "float" 
		-p "lightcolor";
	addAttr -ci true -h true -k true -sn "lightcolorb" -ln "lightcolorb" -at "float" 
		-p "lightcolor";
	addAttr -ci true -h true -k true -sn "lightcolorc" -ln "lightcolorc" -at "float" 
		-p "lightcolor";
	addAttr -ci true -h true -sn "coneangle" -ln "coneangle" -at "double";
	addAttr -ci true -h true -sn "penumbraangle" -ln "penumbraangle" -at "double";
	addAttr -ci true -h true -sn "dropoff" -ln "dropoff" -at "double";
	addAttr -ci true -h true -sn "decay" -ln "decay" -at "double";
	addAttr -ci true -h true -sn "barndoors" -ln "barndoors" -at "double";
	addAttr -ci true -h true -sn "leftbarndoor" -ln "leftbarndoor" -at "double";
	addAttr -ci true -h true -sn "rightbarndoor" -ln "rightbarndoor" -at "double";
	addAttr -ci true -h true -sn "topbarndoor" -ln "topbarndoor" -at "double";
	addAttr -ci true -h true -sn "bottombarndoor" -ln "bottombarndoor" -at "double";
	addAttr -ci true -h true -sn "shadowname" -ln "shadowname" -dt "string";
	addAttr -ci true -h true -sn "shadowbias" -ln "shadowbias" -at "double";
	addAttr -ci true -h true -sn "shadowblur" -ln "shadowblur" -at "double";
	addAttr -ci true -h true -sn "shadowsamples" -ln "shadowsamples" -at "double";
	addAttr -ci true -h true -sn "shadowfiltersize" -ln "shadowfiltersize" -at "double";
	addAttr -ci true -uac -h true -k true -sn "shadowcolor" -ln "shadowcolor" -at "float3" 
		-nc 3;
	addAttr -ci true -h true -k true -sn "shadowcolora" -ln "shadowcolora" -at "float" 
		-p "shadowcolor";
	addAttr -ci true -h true -k true -sn "shadowcolorb" -ln "shadowcolorb" -at "float" 
		-p "shadowcolor";
	addAttr -ci true -h true -k true -sn "shadowcolorc" -ln "shadowcolorc" -at "float" 
		-p "shadowcolor";
	addAttr -ci true -uac -h true -k true -sn "__shadow" -ln "__shadow" -at "float3" 
		-nc 3;
	addAttr -ci true -h true -k true -sn "__shadowa" -ln "__shadowa" -at "float" -p "__shadow";
	addAttr -ci true -h true -k true -sn "__shadowb" -ln "__shadowb" -at "float" -p "__shadow";
	addAttr -ci true -h true -k true -sn "__shadowc" -ln "__shadowc" -at "float" -p "__shadow";
	addAttr -ci true -uac -h true -k true -sn "__unshadowed_Cl" -ln "__unshadowed_Cl" 
		-at "float3" -nc 3;
	addAttr -ci true -h true -k true -sn "__unshadowed_Cla" -ln "__unshadowed_Cla" -at "float" 
		-p "__unshadowed_Cl";
	addAttr -ci true -h true -k true -sn "__unshadowed_Clb" -ln "__unshadowed_Clb" -at "float" 
		-p "__unshadowed_Cl";
	addAttr -ci true -h true -k true -sn "__unshadowed_Clc" -ln "__unshadowed_Clc" -at "float" 
		-p "__unshadowed_Cl";
	addAttr -ci true -h true -sn "__nondiffuse" -ln "__nondiffuse" -at "double";
	addAttr -ci true -h true -sn "__nonspecular" -ln "__nonspecular" -at "double";
	setAttr ".rms" -type "string" "liquidspot";
	setAttr ".rml" -type "string" "E:/dev/autodesk/maya/myplugin/project/liquid_/2.3.3/lib/shaders/liquidspot.slo";
	setAttr ".rpr" -type "stringArray" 21 "intensity" "lightcolor" "coneangle" "penumbraangle" "dropoff" "decay" "barndoors" "leftbarndoor" "rightbarndoor" "topbarndoor" "bottombarndoor" "shadowname" "shadowbias" "shadowblur" "shadowsamples" "shadowfiltersize" "shadowcolor" "__shadow" "__unshadowed_Cl" "__nondiffuse" "__nonspecular"  ;
	setAttr ".rdt" -type "stringArray" 21 "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "uniform" "varying" "varying" "uniform" "uniform"  ;
	setAttr ".rty" -type "stringArray" 21 "float" "color" "float" "float" "float" "float" "float" "float" "float" "float" "float" "string" "float" "float" "float" "float" "color" "color" "color" "float" "float"  ;
	setAttr ".rdf" -type "stringArray" 21 "1.0" "1.0000001.0000001.000000" "0.698132" "0.0" "0.0" "0.0" "0.0" "10.0" "10.0" "10.0" "10.0" "" "0.01" "0.01" "16.0" "1.0" "0.0000000.0000000.000000" "0.0000000.0000000.000000" "0.0000000.0000000.000000" "0.0" "0.0"  ;
	setAttr ".ras" -type "Int32Array" 21 -1 -1 -1 -1 -1 -1
		 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1
		 -1 -1 -1 ;
	setAttr ".rlc" -type "stringArray" 21 "liquidAE_LifFloat( \"intensity\", -1, \"float\", \"intensity\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifColor( \"lightcolor\", -1, \"color\", \"lightcolor\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifFloat( \"coneangle\", -1, \"float\", \"coneangle\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifFloat( \"penumbraangle\", -1, \"float\", \"penumbraangle\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifFloat( \"dropoff\", -1, \"float\", \"dropoff\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifFloat( \"decay\", -1, \"float\", \"decay\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifFloat( \"barndoors\", -1, \"float\", \"barndoors\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifFloat( \"leftbarndoor\", -1, \"float\", \"leftbarndoor\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifFloat( \"rightbarndoor\", -1, \"float\", \"rightbarndoor\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifFloat( \"topbarndoor\", -1, \"float\", \"topbarndoor\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifFloat( \"bottombarndoor\", -1, \"float\", \"bottombarndoor\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifString( \"shadowname\", -1, \"string\", \"shadowname\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifFloat( \"shadowbias\", -1, \"float\", \"shadowbias\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifFloat( \"shadowblur\", -1, \"float\", \"shadowblur\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifFloat( \"shadowsamples\", -1, \"float\", \"shadowsamples\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifFloat( \"shadowfiltersize\", -1, \"float\", \"shadowfiltersize\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifColor( \"shadowcolor\", -1, \"color\", \"shadowcolor\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifColor( \"__shadow\", -1, \"color\", \"__shadow\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifColor( \"__unshadowed_Cl\", -1, \"color\", \"__unshadowed_Cl\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifFloat( \"__nondiffuse\", -1, \"float\", \"__nondiffuse\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifFloat( \"__nonspecular\", -1, \"float\", \"__nonspecular\", {\"0\", \"0\"}, \"\", 14 );"  ;
	setAttr ".rmt" -type "stringArray" 1 "light"  ;
	setAttr ".rio" -type "Int32Array" 21 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 1
		 1 1 1 ;
	setAttr ".intensity" 1;
	setAttr -k on ".lightcolor" -type "float3" 1 1 1 ;
	setAttr ".coneangle" 0.698132;
	setAttr ".leftbarndoor" 10;
	setAttr ".rightbarndoor" 10;
	setAttr ".topbarndoor" 10;
	setAttr ".bottombarndoor" 10;
	setAttr ".shadowname" -type "string" "";
	setAttr ".shadowbias" 0.01;
	setAttr ".shadowblur" 0.01;
	setAttr ".shadowsamples" 16;
	setAttr ".shadowfiltersize" 1;
createNode shadingEngine -n "liquidLight2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo15";
createNode polySphere -n "polySphere5";
createNode liquidSurface -n "liquidSurface12";
	addAttr -ci true -h true -sn "texturename" -ln "texturename" -dt "string";
	addAttr -ci true -h true -sn "Kd" -ln "Kd" -at "double";
	addAttr -ci true -h true -sn "Kg" -ln "Kg" -at "double";
	addAttr -ci true -h true -sn "alpha_u" -ln "alpha_u" -at "double";
	addAttr -ci true -h true -sn "RRthreshold" -ln "RRthreshold" -at "double";
	addAttr -ci true -sn "liqAssignedObjects" -ln "liqAssignedObjects" -at "message";
	addAttr -ci true -m -im false -sn "liquidChildShaders" -ln "liquidChildShaders" 
		-at "message";
	setAttr ".rms" -type "string" "glossy_area";
	setAttr ".rml" -type "string" "E:/dev/Autodesk/maya/myplugin/project/liquid_/2.3.3/test/co_shader/glossy_area.slo";
	setAttr ".rpr" -type "stringArray" 5 "texturename" "Kd" "Kg" "alpha_u" "RRthreshold"  ;
	setAttr ".rdt" -type "stringArray" 5 "uniform" "uniform" "uniform" "uniform" "uniform"  ;
	setAttr ".rty" -type "stringArray" 5 "string" "float" "float" "float" "float"  ;
	setAttr ".rdf" -type "stringArray" 5 "" "0.5" "0.5" "0.05" "0.01"  ;
	setAttr ".ras" -type "Int32Array" 5 -1 -1 -1 -1 -1 ;
	setAttr ".rlc" -type "stringArray" 5 "liquidAE_LifString( \"texturename\", -1, \"string\", \"texturename\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifFloat( \"Kd\", -1, \"float\", \"Kd\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifFloat( \"Kg\", -1, \"float\", \"Kg\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifFloat( \"alpha_u\", -1, \"float\", \"alpha_u\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifFloat( \"RRthreshold\", -1, \"float\", \"RRthreshold\", {\"0\", \"0\"}, \"\", 14 );"  ;
	setAttr ".rmt" -type "stringArray" 1 "surface"  ;
	setAttr ".rio" -type "Int32Array" 5 0 0 0 0 0 ;
	setAttr ".texturename" -type "string" "E:/MyDocuments/maya/projects/default/rmantex/test_cat.tex";
	setAttr ".Kd" 2;
	setAttr ".Kg" 0.066120000000000012;
	setAttr ".alpha_u" 0.1;
	setAttr ".RRthreshold" 0.0024792;
createNode shadingEngine -n "liquidSurface12SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo16";
createNode liquidSurface -n "liquidSurface13";
	addAttr -ci true -h true -sn "texturename" -ln "texturename" -dt "string";
	addAttr -ci true -h true -sn "Kd" -ln "Kd" -at "double";
	addAttr -ci true -h true -sn "Kg" -ln "Kg" -at "double";
	addAttr -ci true -h true -sn "alpha_u" -ln "alpha_u" -at "double";
	addAttr -ci true -h true -sn "RRthreshold" -ln "RRthreshold" -at "double";
	addAttr -ci true -sn "liqAssignedObjects" -ln "liqAssignedObjects" -at "message";
	setAttr ".rms" -type "string" "glossy_area";
	setAttr ".rml" -type "string" "E:/dev/Autodesk/maya/myplugin/project/liquid_/2.3.3/test/co_shader/glossy_area.slo";
	setAttr ".rpr" -type "stringArray" 5 "texturename" "Kd" "Kg" "alpha_u" "RRthreshold"  ;
	setAttr ".rdt" -type "stringArray" 5 "uniform" "uniform" "uniform" "uniform" "uniform"  ;
	setAttr ".rty" -type "stringArray" 5 "string" "float" "float" "float" "float"  ;
	setAttr ".rdf" -type "stringArray" 5 "" "0.5" "0.5" "0.05" "0.01"  ;
	setAttr ".ras" -type "Int32Array" 5 -1 -1 -1 -1 -1 ;
	setAttr ".rlc" -type "stringArray" 5 "liquidAE_LifString( \"texturename\", -1, \"string\", \"texturename\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifFloat( \"Kd\", -1, \"float\", \"Kd\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifFloat( \"Kg\", -1, \"float\", \"Kg\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifFloat( \"alpha_u\", -1, \"float\", \"alpha_u\", {\"0\", \"0\"}, \"\", 14 );" "liquidAE_LifFloat( \"RRthreshold\", -1, \"float\", \"RRthreshold\", {\"0\", \"0\"}, \"\", 14 );"  ;
	setAttr ".rmt" -type "stringArray" 1 "surface"  ;
	setAttr ".rio" -type "Int32Array" 5 0 0 0 0 0 ;
	setAttr ".texturename" -type "string" "E:/MyDocuments/maya/projects/default/rmantex/test_cat.tex";
	setAttr ".Kd" 2;
	setAttr ".Kg" 0.066120000000000012;
	setAttr ".alpha_u" 0.1;
	setAttr ".RRthreshold" 0.0024792;
createNode liquidRibBox -n "liquidRibBox2";
createNode liquidCoShader -n "liquidCoShader2";
	setAttr ".pcp" -type "string" "";
createNode renderLayer -n "attr_visibility";
	setAttr ".adjs[0].val" 1;
	setAttr ".do" 4;
createNode polyCube -n "polyCube4";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube5";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube6";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube7";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube8";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube9";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube10";
	setAttr ".cuv" 4;
createNode renderLayer -n "attr_shading_group";
	setAttr ".do" 5;
createNode polyCube -n "polyCube11";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube12";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube13";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube14";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube15";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube16";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube17";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube18";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube19";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube20";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube21";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube22";
	setAttr ".cuv" 4;
createNode renderLayer -n "attr_raytracing";
	setAttr ".adjs[0].val" 1;
	setAttr ".do" 6;
createNode polyCube -n "polyCube23";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube24";
	setAttr ".cuv" 4;
createNode renderLayer -n "Attr_irradiance";
	setAttr ".do" 7;
createNode polyCube -n "polyCube25";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube26";
	setAttr ".cuv" 4;
createNode renderLayer -n "Attr_PhotonMap";
	setAttr ".do" 8;
createNode polyCube -n "polyCube27";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube28";
	setAttr ".cuv" 4;
createNode renderLayer -n "Attr_MotionBlur";
	setAttr -s 2 ".adjs";
	setAttr ".adjs[0].val" 1;
	setAttr ".adjs[1].val" 1;
	setAttr ".do" 9;
createNode polyCube -n "polyCube29";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube30";
	setAttr ".cuv" 4;
createNode renderLayer -n "Attr_RIBGroup";
	setAttr ".do" 10;
createNode polyCube -n "polyCube31";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube32";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube33";
	setAttr ".cuv" 4;
createNode renderLayer -n "Attr_ShadowRIBGroup";
	setAttr ".adjs[0].val" 0;
	setAttr ".do" 11;
createNode renderLayer -n "Attr_Instance";
	setAttr ".do" 12;
createNode polyCube -n "polyCube34";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube35";
	setAttr ".cuv" 4;
createNode renderLayer -n "Attr_Invisibility";
	setAttr ".do" 13;
createNode polyCube -n "polyCube36";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube37";
	setAttr ".cuv" 4;
createNode renderLayer -n "Attr_IngoreShape";
	setAttr ".do" 14;
createNode polyCube -n "polyCube38";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube39";
	setAttr ".cuv" 4;
createNode renderLayer -n "Attr_TrimCurve";
	setAttr ".do" 15;
createNode polyCube -n "polyCube40";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube41";
	setAttr ".cuv" 4;
createNode renderLayer -n "Attr_Stitch";
	setAttr ".do" 16;
createNode polyCube -n "polyCube42";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube43";
	setAttr ".cuv" 4;
createNode renderLayer -n "Attr_Stochastic";
	setAttr ".do" 17;
createNode polyCube -n "polyCube44";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube45";
	setAttr ".cuv" 4;
createNode renderLayer -n "Attr_Dice";
	setAttr ".do" 18;
createNode polyCube -n "polyCube46";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube47";
	setAttr ".cuv" 4;
createNode renderLayer -n "Attr_derivatives";
	setAttr ".do" 19;
	setAttr ".bm" 11;
createNode polyCube -n "polyCube48";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube49";
	setAttr ".cuv" 4;
createNode renderLayer -n "rif";
	setAttr ".adjs[0].val" -type "string" "-rif pointToDSO.dll";
	setAttr ".do" 20;
createNode polyCube -n "polyCube50";
	setAttr ".w" 4.5037032436088253;
	setAttr ".h" 5.0831744961323944;
	setAttr ".d" 4.6538574595671385;
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube51";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube52";
	setAttr ".cuv" 4;
createNode renderLayer -n "ShadingNetworkToRSL";
	setAttr ".adjs[0].val" -type "string" "generatedShader";
	setAttr ".do" 21;
createNode lambert -n "lambert3";
	setAttr ".c" -type "float3" 0.094600014 0.86000001 0.85489738 ;
createNode shadingEngine -n "lambert3SG";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo17";
createNode polySphere -n "polySphere6";
	setAttr ".r" 6.7005537764296719;
createNode checker -n "checker1";
createNode place2dTexture -n "place2dTexture2";
	setAttr ".re" -type "float2" 4 4 ;
select -ne :time1;
	setAttr ".o" 1;
select -ne :renderPartition;
	setAttr -s 19 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 13 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 6 ".u";
select -ne :lightList1;
	setAttr -s 5 ".l";
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 57 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :initialMaterialInfo;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "liquid";
select -ne :defaultResolution;
	setAttr ".w" 768;
	setAttr ".h" 576;
	setAttr ".pa" 1;
	setAttr ".dar" 1.3333333730697632;
select -ne :defaultLightSet;
	setAttr -s 5 ".dsm";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "DepthOfField.ri" ":persp.rlio[0]";
connectAttr "DepthOfField.ri" "pPlane1.rlio[0]";
connectAttr "MotionBlur.ri" "pPlane1.rlio[1]";
connectAttr "LightShader.ri" "pPlane1.rlio[2]";
connectAttr "polyPlane1.out" "pPlaneShape1.i";
connectAttr "DepthOfField.ri" "pSphere1.rlio[0]";
connectAttr "polySphere1.out" "pSphereShape1.i";
connectAttr "DepthOfField.ri" "pointLight1.rlio[0]";
connectAttr "MotionBlur.ri" "pointLight1.rlio[1]";
connectAttr "liquidLight1.liqAssignedObjects" "pointLightShape1.liquidLightShaderNode"
		;
connectAttr "DepthOfField.ri" "pPlane2.rlio[0]";
connectAttr "MotionBlur.ri" "pPlane2.rlio[1]";
connectAttr "LightShader.ri" "pPlane2.rlio[2]";
connectAttr "polyPlane2.out" "pPlaneShape2.i";
connectAttr "DepthOfField.ri" "pointLight2.rlio[0]";
connectAttr "MotionBlur.ri" "pointLight2.rlio[1]";
connectAttr "Attr_RIBGroup.ri" "pointLight2.rlio[2]";
connectAttr "DepthOfField.ri" "pointLight3.rlio[0]";
connectAttr "MotionBlur.ri" "pointLight3.rlio[1]";
connectAttr "DepthOfField.ri" "pSphere2.rlio[0]";
connectAttr "polySphere2.out" "pSphereShape2.i";
connectAttr "DepthOfField.ri" "pSphere3.rlio[0]";
connectAttr "polySphere3.out" "pSphereShape3.i";
connectAttr "DepthOfField.ri" "pCube1.rlio[0]";
connectAttr "polyCube1.out" "pCubeShape1.i";
connectAttr "DepthOfField.ri" "pCylinder1.rlio[0]";
connectAttr "polyCylinder1.out" "pCylinderShape1.i";
connectAttr "DepthOfField.ri" "pCone1.rlio[0]";
connectAttr "polyCone1.out" "pConeShape1.i";
connectAttr "DepthOfField.ri" "pTorus1.rlio[0]";
connectAttr "polyTorus1.out" "pTorusShape1.i";
connectAttr "polyPlane3.out" "pPlaneShape3.i";
connectAttr "MotionBlur.ri" "pCube2.rlio[1]";
connectAttr "pCube2_translateX.o" "pCube2.tx";
connectAttr "pCube2_translateY.o" "pCube2.ty";
connectAttr "pCube2_translateZ.o" "pCube2.tz";
connectAttr "pCube2_rotateX.o" "pCube2.rx";
connectAttr "pCube2_rotateY.o" "pCube2.ry";
connectAttr "pCube2_rotateZ.o" "pCube2.rz";
connectAttr "pCube2_scaleX.o" "pCube2.sx";
connectAttr "pCube2_scaleY.o" "pCube2.sy";
connectAttr "pCube2_scaleZ.o" "pCube2.sz";
connectAttr "polyCube2.out" "pCubeShape2.i";
connectAttr "pCubeShape2_pnts_2__pntx.o" "pCubeShape2.pt[2].px";
connectAttr "pCubeShape2_pnts_2__pnty.o" "pCubeShape2.pt[2].py";
connectAttr "pCubeShape2_pnts_2__pntz.o" "pCubeShape2.pt[2].pz";
connectAttr "pCubeShape2_pnts_3__pntx.o" "pCubeShape2.pt[3].px";
connectAttr "pCubeShape2_pnts_3__pnty.o" "pCubeShape2.pt[3].py";
connectAttr "pCubeShape2_pnts_3__pntz.o" "pCubeShape2.pt[3].pz";
connectAttr "pCubeShape2_pnts_4__pntx.o" "pCubeShape2.pt[4].px";
connectAttr "pCubeShape2_pnts_4__pnty.o" "pCubeShape2.pt[4].py";
connectAttr "pCubeShape2_pnts_4__pntz.o" "pCubeShape2.pt[4].pz";
connectAttr "pCubeShape2_pnts_5__pntx.o" "pCubeShape2.pt[5].px";
connectAttr "pCubeShape2_pnts_5__pnty.o" "pCubeShape2.pt[5].py";
connectAttr "pCubeShape2_pnts_5__pntz.o" "pCubeShape2.pt[5].pz";
connectAttr "MotionBlur.ri" "pCube3.rlio[0]";
connectAttr "polyCube3.out" "pCubeShape3.i";
connectAttr "pCubeShape3_pnts_0__pntx.o" "pCubeShape3.pt[0].px";
connectAttr "pCubeShape3_pnts_0__pnty.o" "pCubeShape3.pt[0].py";
connectAttr "pCubeShape3_pnts_0__pntz.o" "pCubeShape3.pt[0].pz";
connectAttr "pCubeShape3_pnts_1__pntx.o" "pCubeShape3.pt[1].px";
connectAttr "pCubeShape3_pnts_1__pnty.o" "pCubeShape3.pt[1].py";
connectAttr "pCubeShape3_pnts_1__pntz.o" "pCubeShape3.pt[1].pz";
connectAttr "pCubeShape3_pnts_2__pntx.o" "pCubeShape3.pt[2].px";
connectAttr "pCubeShape3_pnts_2__pnty.o" "pCubeShape3.pt[2].py";
connectAttr "pCubeShape3_pnts_2__pntz.o" "pCubeShape3.pt[2].pz";
connectAttr "pCubeShape3_pnts_3__pntx.o" "pCubeShape3.pt[3].px";
connectAttr "pCubeShape3_pnts_3__pnty.o" "pCubeShape3.pt[3].py";
connectAttr "pCubeShape3_pnts_3__pntz.o" "pCubeShape3.pt[3].pz";
connectAttr "pCubeShape3_pnts_4__pntx.o" "pCubeShape3.pt[4].px";
connectAttr "pCubeShape3_pnts_4__pnty.o" "pCubeShape3.pt[4].py";
connectAttr "pCubeShape3_pnts_4__pntz.o" "pCubeShape3.pt[4].pz";
connectAttr "pCubeShape3_pnts_5__pntx.o" "pCubeShape3.pt[5].px";
connectAttr "pCubeShape3_pnts_5__pnty.o" "pCubeShape3.pt[5].py";
connectAttr "pCubeShape3_pnts_5__pntz.o" "pCubeShape3.pt[5].pz";
connectAttr "pCubeShape3_pnts_6__pntx.o" "pCubeShape3.pt[6].px";
connectAttr "pCubeShape3_pnts_6__pnty.o" "pCubeShape3.pt[6].py";
connectAttr "pCubeShape3_pnts_6__pntz.o" "pCubeShape3.pt[6].pz";
connectAttr "pCubeShape3_pnts_7__pntx.o" "pCubeShape3.pt[7].px";
connectAttr "pCubeShape3_pnts_7__pnty.o" "pCubeShape3.pt[7].py";
connectAttr "pCubeShape3_pnts_7__pntz.o" "pCubeShape3.pt[7].pz";
connectAttr "LightShader.ri" "pSphere4.rlio[0]";
connectAttr "polySphere4.out" "pSphereShape4.i";
connectAttr "LightShader.ri" "spotLight1.rlio[0]";
connectAttr "liquidLight2.liqAssignedObjects" "spotLightShape1.liquidLightShaderNode"
		;
connectAttr "LightShader.ri" "pSphere5.rlio[0]";
connectAttr "polySphere5.out" "pSphereShape5.i";
connectAttr "LightShader.ri" "spotLight2.rlio[0]";
connectAttr "DepthOfField.ri" "camera1.rlio[0]";
connectAttr "attr_visibility.ri" "pCube4.rlio[0]";
connectAttr "polyCube4.out" "pCubeShape4.i";
connectAttr "attr_visibility.ri" "pCube5.rlio[0]";
connectAttr "polyCube5.out" "pCubeShape5.i";
connectAttr "attr_visibility.ri" "pCube6.rlio[0]";
connectAttr "polyCube6.out" "pCubeShape6.i";
connectAttr "attr_visibility.ri" "pCube7.rlio[0]";
connectAttr "polyCube7.out" "pCubeShape7.i";
connectAttr "attr_visibility.ri" "pCube8.rlio[0]";
connectAttr "polyCube8.out" "pCubeShape8.i";
connectAttr "attr_visibility.ri" "pCube9.rlio[0]";
connectAttr "polyCube9.out" "pCubeShape9.i";
connectAttr "attr_visibility.ri" "pCube10.rlio[0]";
connectAttr "polyCube10.out" "pCubeShape10.i";
connectAttr "attr_shading_group.ri" "pCube11.rlio[0]";
connectAttr "polyCube11.out" "pCubeShape11.i";
connectAttr "attr_shading_group.ri" "pCube12.rlio[0]";
connectAttr "polyCube12.out" "pCubeShape12.i";
connectAttr "attr_shading_group.ri" "pCube13.rlio[0]";
connectAttr "polyCube13.out" "pCubeShape13.i";
connectAttr "attr_shading_group.ri" "pCube14.rlio[0]";
connectAttr "polyCube14.out" "pCubeShape14.i";
connectAttr "attr_shading_group.ri" "pCube15.rlio[0]";
connectAttr "polyCube15.out" "pCubeShape15.i";
connectAttr "attr_shading_group.ri" "pCube16.rlio[0]";
connectAttr "polyCube16.out" "pCubeShape16.i";
connectAttr "attr_shading_group.ri" "pCube17.rlio[0]";
connectAttr "polyCube17.out" "pCubeShape17.i";
connectAttr "attr_shading_group.ri" "pCube18.rlio[0]";
connectAttr "polyCube18.out" "pCubeShape18.i";
connectAttr "attr_shading_group.ri" "pCube19.rlio[0]";
connectAttr "polyCube19.out" "pCubeShape19.i";
connectAttr "attr_shading_group.ri" "pCube20.rlio[0]";
connectAttr "polyCube20.out" "pCubeShape20.i";
connectAttr "attr_shading_group.ri" "pCube21.rlio[0]";
connectAttr "polyCube21.out" "pCubeShape21.i";
connectAttr "attr_shading_group.ri" "pCube22.rlio[0]";
connectAttr "lambert2SG.msg" "pCube22.liquidCustomShadingGroup";
connectAttr "polyCube22.out" "pCubeShape22.i";
connectAttr "attr_raytracing.ri" "pCube23.rlio[0]";
connectAttr "polyCube23.out" "pCubeShape23.i";
connectAttr "attr_raytracing.ri" "pCube24.rlio[0]";
connectAttr "polyCube24.out" "pCubeShape24.i";
connectAttr "Attr_irradiance.ri" "pCube25.rlio[0]";
connectAttr "polyCube25.out" "pCubeShape25.i";
connectAttr "Attr_irradiance.ri" "pCube26.rlio[0]";
connectAttr "polyCube26.out" "pCubeShape26.i";
connectAttr "Attr_PhotonMap.ri" "pCube27.rlio[0]";
connectAttr "polyCube27.out" "pCubeShape27.i";
connectAttr "Attr_PhotonMap.ri" "pCube28.rlio[0]";
connectAttr "polyCube28.out" "pCubeShape28.i";
connectAttr "Attr_MotionBlur.ri" "pCube29.rlio[0]";
connectAttr "polyCube29.out" "pCubeShape29.i";
connectAttr "Attr_MotionBlur.ri" "pCube30.rlio[0]";
connectAttr "polyCube30.out" "pCubeShape30.i";
connectAttr "Attr_RIBGroup.ri" "pCube31.rlio[0]";
connectAttr "polyCube31.out" "pCubeShape31.i";
connectAttr "Attr_RIBGroup.ri" "pCube32.rlio[0]";
connectAttr "polyCube32.out" "pCubeShape32.i";
connectAttr "Attr_ShadowRIBGroup.ri" "pCube33.rlio[1]";
connectAttr "polyCube33.out" "pCubeShape33.i";
connectAttr "Attr_Instance.ri" "pCube34.rlio[0]";
connectAttr "polyCube34.out" "pCubeShape34.i";
connectAttr "Attr_Instance.ri" "pCube35.rlio[0]";
connectAttr "polyCube35.out" "pCubeShape35.i";
connectAttr "Attr_Invisibility.ri" "pCube36.rlio[0]";
connectAttr "polyCube36.out" "pCubeShape36.i";
connectAttr "Attr_Invisibility.ri" "pCube37.rlio[0]";
connectAttr "polyCube37.out" "pCubeShape37.i";
connectAttr "Attr_IngoreShape.ri" "pCube38.rlio[0]";
connectAttr "polyCube38.out" "pCubeShape38.i";
connectAttr "Attr_IngoreShape.ri" "pCube39.rlio[0]";
connectAttr "polyCube39.out" "pCubeShape39.i";
connectAttr "Attr_TrimCurve.ri" "pCube40.rlio[0]";
connectAttr "polyCube40.out" "pCubeShape40.i";
connectAttr "Attr_TrimCurve.ri" "pCube41.rlio[0]";
connectAttr "polyCube41.out" "pCubeShape41.i";
connectAttr "Attr_TrimCurve.ri" "curve1.rlio[0]";
connectAttr "Attr_Stitch.ri" "pCube42.rlio[0]";
connectAttr "polyCube42.out" "pCubeShape42.i";
connectAttr "Attr_Stitch.ri" "pCube43.rlio[0]";
connectAttr "polyCube43.out" "pCubeShape43.i";
connectAttr "Attr_Stochastic.ri" "pCube44.rlio[0]";
connectAttr "polyCube44.out" "pCubeShape44.i";
connectAttr "Attr_Stochastic.ri" "pCube45.rlio[0]";
connectAttr "polyCube45.out" "pCubeShape45.i";
connectAttr "Attr_Dice.ri" "pCube46.rlio[0]";
connectAttr "polyCube46.out" "pCubeShape46.i";
connectAttr "Attr_Dice.ri" "pCube47.rlio[0]";
connectAttr "polyCube47.out" "pCubeShape47.i";
connectAttr "Attr_derivatives.ri" "pCube48.rlio[0]";
connectAttr "polyCube48.out" "pCubeShape48.i";
connectAttr "Attr_derivatives.ri" "pCube49.rlio[0]";
connectAttr "polyCube49.out" "pCubeShape49.i";
connectAttr "rif.ri" "particle1.rlio[0]";
connectAttr ":time1.o" "particleShape1.cti";
connectAttr "particleShape1.xo[0]" "particleShape1.pos";
connectAttr "turbulenceField1.of[0]" "particleShape1.ifc[0]";
connectAttr "particleShape1.xo[1]" "particleShape1.rgbPP";
connectAttr "rif.ri" "turbulenceField1.rlio[0]";
connectAttr "particleShape1.fd" "turbulenceField1.ind[0]";
connectAttr "particleShape1.ppfd[0]" "turbulenceField1.ppda[0]";
connectAttr "Attr_RIBGroup.ri" "pCube50.rlio[0]";
connectAttr "polyCube50.out" "pCubeShape50.i";
connectAttr "Attr_RIBGroup.ri" "pCube51.rlio[0]";
connectAttr "polyCube51.out" "pCubeShape51.i";
connectAttr "Attr_RIBGroup.ri" "pCube52.rlio[0]";
connectAttr "polyCube52.out" "pCubeShape52.i";
connectAttr "ShadingNetworkToRSL.ri" "pSphere6.rlio[0]";
connectAttr "polySphere6.out" "pSphereShape6.i";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[1].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr "lambert2SG.msg" "lightLinker1.lnk[2].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[3].llnk";
connectAttr "liquidSurface1SG.msg" "lightLinker1.lnk[3].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[4].llnk";
connectAttr "liquidSurface2SG.msg" "lightLinker1.lnk[4].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[5].llnk";
connectAttr "liquidLight1SG.msg" "lightLinker1.lnk[5].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[6].llnk";
connectAttr "liquidSurface3SG.msg" "lightLinker1.lnk[6].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[7].llnk";
connectAttr "liquidSurface4SG.msg" "lightLinker1.lnk[7].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[8].llnk";
connectAttr "liquidSurface5SG.msg" "lightLinker1.lnk[8].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[9].llnk";
connectAttr "liquidSurface5SG1.msg" "lightLinker1.lnk[9].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[10].llnk";
connectAttr "liquidSurface6SG.msg" "lightLinker1.lnk[10].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[11].llnk";
connectAttr "liquidSurface7SG.msg" "lightLinker1.lnk[11].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[12].llnk";
connectAttr "liquidSurface8SG.msg" "lightLinker1.lnk[12].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[13].llnk";
connectAttr "liquidSurface9SG.msg" "lightLinker1.lnk[13].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[14].llnk";
connectAttr "liquidSurface10SG.msg" "lightLinker1.lnk[14].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[15].llnk";
connectAttr "liquidSurface11SG.msg" "lightLinker1.lnk[15].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[16].llnk";
connectAttr "liquidLight2SG.msg" "lightLinker1.lnk[16].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[17].llnk";
connectAttr "liquidSurface12SG.msg" "lightLinker1.lnk[17].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[18].llnk";
connectAttr "lambert3SG.msg" "lightLinker1.lnk[18].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[0].sllk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.slnk[0].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[1].sllk";
connectAttr ":initialParticleSE.msg" "lightLinker1.slnk[1].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[2].sllk";
connectAttr "lambert2SG.msg" "lightLinker1.slnk[2].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[3].sllk";
connectAttr "liquidSurface1SG.msg" "lightLinker1.slnk[3].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[4].sllk";
connectAttr "liquidSurface2SG.msg" "lightLinker1.slnk[4].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[5].sllk";
connectAttr "liquidLight1SG.msg" "lightLinker1.slnk[5].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[6].sllk";
connectAttr "liquidSurface3SG.msg" "lightLinker1.slnk[6].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[7].sllk";
connectAttr "liquidSurface4SG.msg" "lightLinker1.slnk[7].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[8].sllk";
connectAttr "liquidSurface5SG.msg" "lightLinker1.slnk[8].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[9].sllk";
connectAttr "liquidSurface5SG1.msg" "lightLinker1.slnk[9].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[10].sllk";
connectAttr "liquidSurface6SG.msg" "lightLinker1.slnk[10].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[11].sllk";
connectAttr "liquidSurface7SG.msg" "lightLinker1.slnk[11].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[12].sllk";
connectAttr "liquidSurface8SG.msg" "lightLinker1.slnk[12].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[13].sllk";
connectAttr "liquidSurface9SG.msg" "lightLinker1.slnk[13].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[14].sllk";
connectAttr "liquidSurface10SG.msg" "lightLinker1.slnk[14].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[15].sllk";
connectAttr "liquidSurface11SG.msg" "lightLinker1.slnk[15].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[16].sllk";
connectAttr "liquidLight2SG.msg" "lightLinker1.slnk[16].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[17].sllk";
connectAttr "liquidSurface12SG.msg" "lightLinker1.slnk[17].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[18].sllk";
connectAttr "lambert3SG.msg" "lightLinker1.slnk[18].solk";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "liquidGlobals.osp" "defaultRenderLayer.adjs[0].plg";
connectAttr "liquidGlobals.dof" "defaultRenderLayer.adjs[1].plg";
connectAttr "pCube2.v" "defaultRenderLayer.adjs[2].plg";
connectAttr "liquidGlobals.tb" "defaultRenderLayer.adjs[3].plg";
connectAttr "liquidGlobals.db" "defaultRenderLayer.adjs[4].plg";
connectAttr "liquidGlobals.ray" "defaultRenderLayer.adjs[5].plg";
connectAttr "liquidGlobals.rc" "defaultRenderLayer.adjs[6].plg";
connectAttr "liquidGlobals.lrp" "defaultRenderLayer.adjs[7].plg";
connectAttr "liquidGlobals.shdd" "defaultRenderLayer.adjs[8].plg";
connectAttr "pCubeShape2.iog" "defaultRenderLayer.oajs[0].opg";
connectAttr "pCubeShape3.iog" "defaultRenderLayer.oajs[1].opg";
connectAttr "pSphereShape6.iog" "defaultRenderLayer.oajs[3].opg";
connectAttr "matte.oc" "lambert2SG.ss";
connectAttr "pPlaneShape1.iog" "lambert2SG.dsm" -na;
connectAttr "pPlaneShape2.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "matte.msg" "materialInfo1.m";
connectAttr "liquidSurface1.oc" "liquidSurface1SG.ss";
connectAttr "liquidSurface1SG.msg" "materialInfo2.sg";
connectAttr "liquidSurface1.msg" "materialInfo2.m";
connectAttr "liquidSurface1.msg" "materialInfo2.t" -na;
connectAttr "liquidSurface2.oc" "liquidSurface2SG.ss";
connectAttr "pSphereShape2.iog" "liquidSurface2SG.dsm" -na;
connectAttr "liquidSurface2SG.msg" "materialInfo3.sg";
connectAttr "liquidSurface2.msg" "materialInfo3.m";
connectAttr "liquidSurface2.msg" "materialInfo3.t" -na;
connectAttr "liquidLight1.oc" "liquidLight1SG.ss";
connectAttr "liquidLight1SG.msg" "materialInfo4.sg";
connectAttr "liquidLight1.msg" "materialInfo4.m";
connectAttr "liquidLight1.msg" "materialInfo4.t" -na;
connectAttr "liquidSurface3SG.msg" "materialInfo5.sg";
connectAttr "liquidSurface4.oc" "liquidSurface4SG.ss";
connectAttr "pSphereShape3.iog" "liquidSurface4SG.dsm" -na;
connectAttr "liquidSurface4SG.msg" "materialInfo6.sg";
connectAttr "liquidSurface4.msg" "materialInfo6.m";
connectAttr "liquidSurface4.msg" "materialInfo6.t" -na;
connectAttr "liquidSurface5SG.msg" "materialInfo7.sg";
connectAttr "liquidSurface5SG1.msg" "materialInfo8.sg";
connectAttr "liquidSurface6SG.msg" "materialInfo9.sg";
connectAttr "liquidSurface7.oc" "liquidSurface7SG.ss";
connectAttr "pCubeShape1.iog" "liquidSurface7SG.dsm" -na;
connectAttr "liquidSurface7SG.msg" "materialInfo10.sg";
connectAttr "liquidSurface7.msg" "materialInfo10.m";
connectAttr "liquidSurface7.msg" "materialInfo10.t" -na;
connectAttr "liquidSurface8.oc" "liquidSurface8SG.ss";
connectAttr "pCylinderShape1.iog" "liquidSurface8SG.dsm" -na;
connectAttr "MotionBlur.oajs[0].ovl" "liquidSurface8SG.dsm" -na;
connectAttr "MotionBlur.oajs[1].ovl" "liquidSurface8SG.dsm" -na;
connectAttr "liquidSurface8SG.msg" "materialInfo11.sg";
connectAttr "liquidSurface8.msg" "materialInfo11.m";
connectAttr "liquidSurface8.msg" "materialInfo11.t" -na;
connectAttr "liquidSurface9.oc" "liquidSurface9SG.ss";
connectAttr "pConeShape1.iog" "liquidSurface9SG.dsm" -na;
connectAttr "liquidSurface9SG.msg" "materialInfo12.sg";
connectAttr "liquidSurface9.msg" "materialInfo12.m";
connectAttr "liquidSurface9.msg" "materialInfo12.t" -na;
connectAttr "liquidSurface10SG.msg" "materialInfo13.sg";
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
connectAttr "liquidSurface11.oc" "liquidSurface11SG.ss";
connectAttr "pTorusShape1.iog" "liquidSurface11SG.dsm" -na;
connectAttr "liquidSurface11SG.msg" "materialInfo14.sg";
connectAttr "liquidSurface11.msg" "materialInfo14.m";
connectAttr "liquidSurface11.msg" "materialInfo14.t" -na;
connectAttr "renderLayerManager.rlmi[1]" "DepthOfField.rlid";
connectAttr "liquidGlobals.dof" "DepthOfField.adjs[1].plg";
connectAttr "liquidGlobals.rc" "DepthOfField.adjs[2].plg";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miContourPreset.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":Draft.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":DraftMotionBlur.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":DraftRapidMotion.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":Preview.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":PreviewMotionblur.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":PreviewRapidMotion.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":PreviewCaustics.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":PreviewGlobalIllum.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":PreviewFinalGather.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":Production.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":ProductionMotionblur.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":ProductionRapidMotion.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":ProductionFineTrace.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":ProductionRapidFur.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":ProductionRapidHair.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
connectAttr "renderLayerManager.rlmi[2]" "MotionBlur.rlid";
connectAttr "pCubeShape2.iog" "MotionBlur.oajs[0].opg";
connectAttr "pCubeShape3.iog" "MotionBlur.oajs[1].opg";
connectAttr "pCube2.v" "MotionBlur.adjs[0].plg";
connectAttr "pCube2_visibility.o" "MotionBlur.adjs[0].val";
connectAttr "liquidGlobals.tb" "MotionBlur.adjs[1].plg";
connectAttr "liquidGlobals.db" "MotionBlur.adjs[2].plg";
connectAttr "renderLayerManager.rlmi[3]" "LightShader.rlid";
connectAttr "liquidGlobals.ray" "LightShader.adjs[0].plg";
connectAttr "liquidLight2.oc" "liquidLight2SG.ss";
connectAttr "liquidLight2SG.msg" "materialInfo15.sg";
connectAttr "liquidLight2.msg" "materialInfo15.m";
connectAttr "liquidLight2.msg" "materialInfo15.t" -na;
connectAttr "liquidSurface12.oc" "liquidSurface12SG.ss";
connectAttr "pSphereShape1.iog" "liquidSurface12SG.dsm" -na;
connectAttr "liquidSurface12SG.msg" "materialInfo16.sg";
connectAttr "liquidSurface12.msg" "materialInfo16.m";
connectAttr "liquidSurface12.msg" "materialInfo16.t" -na;
connectAttr "renderLayerManager.rlmi[4]" "attr_visibility.rlid";
connectAttr "liquidGlobals.ray" "attr_visibility.adjs[0].plg";
connectAttr "renderLayerManager.rlmi[5]" "attr_shading_group.rlid";
connectAttr "renderLayerManager.rlmi[6]" "attr_raytracing.rlid";
connectAttr "liquidGlobals.ray" "attr_raytracing.adjs[0].plg";
connectAttr "renderLayerManager.rlmi[7]" "Attr_irradiance.rlid";
connectAttr "renderLayerManager.rlmi[8]" "Attr_PhotonMap.rlid";
connectAttr "renderLayerManager.rlmi[9]" "Attr_MotionBlur.rlid";
connectAttr "liquidGlobals.tb" "Attr_MotionBlur.adjs[0].plg";
connectAttr "liquidGlobals.db" "Attr_MotionBlur.adjs[1].plg";
connectAttr "renderLayerManager.rlmi[10]" "Attr_RIBGroup.rlid";
connectAttr "renderLayerManager.rlmi[11]" "Attr_ShadowRIBGroup.rlid";
connectAttr "liquidGlobals.osp" "Attr_ShadowRIBGroup.adjs[0].plg";
connectAttr "renderLayerManager.rlmi[12]" "Attr_Instance.rlid";
connectAttr "renderLayerManager.rlmi[13]" "Attr_Invisibility.rlid";
connectAttr "renderLayerManager.rlmi[14]" "Attr_IngoreShape.rlid";
connectAttr "renderLayerManager.rlmi[15]" "Attr_TrimCurve.rlid";
connectAttr "renderLayerManager.rlmi[16]" "Attr_Stitch.rlid";
connectAttr "renderLayerManager.rlmi[17]" "Attr_Stochastic.rlid";
connectAttr "renderLayerManager.rlmi[18]" "Attr_Dice.rlid";
connectAttr "renderLayerManager.rlmi[19]" "Attr_derivatives.rlid";
connectAttr "renderLayerManager.rlmi[20]" "rif.rlid";
connectAttr "liquidGlobals.lrp" "rif.adjs[0].plg";
connectAttr "renderLayerManager.rlmi[21]" "ShadingNetworkToRSL.rlid";
connectAttr "pSphereShape6.iog" "ShadingNetworkToRSL.oajs[1].opg";
connectAttr "liquidGlobals.shdd" "ShadingNetworkToRSL.adjs[0].plg";
connectAttr "checker1.oc" "lambert3.it";
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "ShadingNetworkToRSL.oajs[1].ovl" "lambert3SG.dsm" -na;
connectAttr "pSphereShape6.iog" "lambert3SG.dsm" -na;
connectAttr "lambert3SG.msg" "materialInfo17.sg";
connectAttr "lambert3.msg" "materialInfo17.m";
connectAttr "place2dTexture2.o" "checker1.uv";
connectAttr "place2dTexture2.ofs" "checker1.fs";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "liquidSurface1SG.pa" ":renderPartition.st" -na;
connectAttr "liquidSurface2SG.pa" ":renderPartition.st" -na;
connectAttr "liquidLight1SG.pa" ":renderPartition.st" -na;
connectAttr "liquidSurface3SG.pa" ":renderPartition.st" -na;
connectAttr "liquidSurface4SG.pa" ":renderPartition.st" -na;
connectAttr "liquidSurface5SG.pa" ":renderPartition.st" -na;
connectAttr "liquidSurface5SG1.pa" ":renderPartition.st" -na;
connectAttr "liquidSurface6SG.pa" ":renderPartition.st" -na;
connectAttr "liquidSurface7SG.pa" ":renderPartition.st" -na;
connectAttr "liquidSurface8SG.pa" ":renderPartition.st" -na;
connectAttr "liquidSurface9SG.pa" ":renderPartition.st" -na;
connectAttr "liquidSurface10SG.pa" ":renderPartition.st" -na;
connectAttr "liquidSurface11SG.pa" ":renderPartition.st" -na;
connectAttr "liquidLight2SG.pa" ":renderPartition.st" -na;
connectAttr "liquidSurface12SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "matte.msg" ":defaultShaderList1.s" -na;
connectAttr "liquidSurface1.msg" ":defaultShaderList1.s" -na;
connectAttr "liquidSurface2.msg" ":defaultShaderList1.s" -na;
connectAttr "liquidLight1.msg" ":defaultShaderList1.s" -na;
connectAttr "liquidSurface4.msg" ":defaultShaderList1.s" -na;
connectAttr "liquidSurface7.msg" ":defaultShaderList1.s" -na;
connectAttr "liquidSurface8.msg" ":defaultShaderList1.s" -na;
connectAttr "liquidSurface9.msg" ":defaultShaderList1.s" -na;
connectAttr "liquidSurface11.msg" ":defaultShaderList1.s" -na;
connectAttr "liquidLight2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "liquidRibBox1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "liquidCoShader1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "liquidRibBox2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "liquidCoShader2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
connectAttr "pointLightShape1.ltd" ":lightList1.l" -na;
connectAttr "pointLightShape2.ltd" ":lightList1.l" -na;
connectAttr "pointLightShape3.ltd" ":lightList1.l" -na;
connectAttr "spotLightShape1.ltd" ":lightList1.l" -na;
connectAttr "spotLightShape2.ltd" ":lightList1.l" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "checker1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file1.oc" ":lambert1.c";
connectAttr "pPlaneShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "defaultRenderLayer.oajs[0].ovl" ":initialShadingGroup.dsm" -na;
connectAttr "defaultRenderLayer.oajs[1].ovl" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape6.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape7.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape8.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape9.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape10.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape11.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape12.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape13.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape14.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape15.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape16.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape17.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape18.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape19.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape20.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape21.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape22.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape23.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape24.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape25.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape26.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape27.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape28.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape29.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape30.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape31.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape32.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape33.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape34.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape35.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape36.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape37.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape38.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape39.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape40.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape41.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape42.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape43.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape44.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape45.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape46.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape47.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape48.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape49.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape50.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape51.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape52.iog" ":initialShadingGroup.dsm" -na;
connectAttr "defaultRenderLayer.oajs[3].ovl" ":initialShadingGroup.dsm" -na;
connectAttr "particleShape1.iog" ":initialParticleSE.dsm" -na;
connectAttr "file1.msg" ":initialMaterialInfo.t" -na;
connectAttr "pointLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "pointLight2.iog" ":defaultLightSet.dsm" -na;
connectAttr "pointLight3.iog" ":defaultLightSet.dsm" -na;
connectAttr "spotLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "spotLight2.iog" ":defaultLightSet.dsm" -na;
// End of test_main.ma
