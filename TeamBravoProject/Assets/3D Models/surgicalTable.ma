//Maya ASCII 2014 scene
//Name: surgicalTable.ma
//Last modified: Thu, Feb 27, 2014 04:37:20 PM
//Codeset: 1252
requires maya "2014";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014 x64";
fileInfo "cutIdentifier" "201303010241-864206";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.16142457931335785 13.734909340377051 1.158355858089434 ;
	setAttr ".r" -type "double3" -94.538352733680654 -1620.19999999885 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 13.28889144904311;
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
createNode transform -n "pCube1";
	setAttr ".t" -type "double3" 0 0.82103225592442086 0 ;
	setAttr ".s" -type "double3" 1.8612168191223861 0.070987227854694038 5.7322904167518862 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[396:399]" -type "float3"  0 -2.1357307 0 0 -2.1357307 
		0 0 -2.1357307 0 0 -2.1357307 0;
	setAttr -av ".pt[92].px";
	setAttr -av ".pt[92].py";
	setAttr -av ".pt[92].pz";
	setAttr -av ".pt[93].px";
	setAttr -av ".pt[93].py";
	setAttr -av ".pt[93].pz";
	setAttr -av ".pt[94].px";
	setAttr -av ".pt[94].py";
	setAttr -av ".pt[94].pz";
	setAttr -av ".pt[95].px";
	setAttr -av ".pt[95].py";
	setAttr -av ".pt[95].pz";
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:3]";
	setAttr ".ix" -type "matrix" 1.8612168191223861 0 0 0 0 0.070987227854694038 0 0
		 0 0 5.7322904167518862 0 0 0.82103225592442086 0 1;
	setAttr ".wt" 0.028470046818256378;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[12:13]" "e[15]" "e[17]";
	setAttr ".ix" -type "matrix" 1.8612168191223861 0 0 0 0 0.070987227854694038 0 0
		 0 0 5.7322904167518862 0 0 0.82103225592442086 0 1;
	setAttr ".wt" 0.96719646453857422;
	setAttr ".dr" no;
	setAttr ".re" 12;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[6:7]" "e[10:11]" "e[14]" "e[18]" "e[22]" "e[26]";
	setAttr ".ix" -type "matrix" 1.8612168191223861 0 0 0 0 0.070987227854694038 0 0
		 0 0 5.7322904167518862 0 0 0.82103225592442086 0 1;
	setAttr ".wt" 0.011567471548914909;
	setAttr ".re" 14;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[10:11]" "e[18]" "e[26]" "e[28:29]" "e[39]" "e[41]";
	setAttr ".ix" -type "matrix" 1.8612168191223861 0 0 0 0 0.070987227854694038 0 0
		 0 0 5.7322904167518862 0 0 0.82103225592442086 0 1;
	setAttr ".wt" 0.98827773332595825;
	setAttr ".dr" no;
	setAttr ".re" 29;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 1 "f[0:29]";
	setAttr ".ix" -type "matrix" 1.8612168191223861 0 0 0 0 0.070987227854694038 0 0
		 0 0 5.7322904167518862 0 0 0.82103225592442086 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.82103229 0 ;
	setAttr ".rs" 53659;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.93060840956119306 0.78553864199707379 -2.8661452083759431 ;
	setAttr ".cbx" -type "double3" 0.93060840956119306 0.85652586985176793 2.8661452083759431 ;
createNode polySplitRing -n "polySplitRing5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 23 "e[28:29]" "e[39]" "e[41]" "e[45]" "e[47]" "e[49]" "e[51]" "e[176]" "e[179]" "e[182]" "e[186]" "e[192]" "e[195]" "e[200]" "e[203]" "e[208]" "e[211]" "e[216]" "e[219]" "e[224]" "e[227]" "e[232]" "e[235]";
	setAttr ".ix" -type "matrix" 1.8612168191223861 0 0 0 0 0.070987227854694038 0 0
		 0 0 5.7322904167518862 0 0 0.82103225592442086 0 1;
	setAttr ".wt" 0.14676998555660248;
	setAttr ".re" 28;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 23 "e[45]" "e[47]" "e[49]" "e[51]" "e[182]" "e[192]" "e[195]" "e[200]" "e[203]" "e[208]" "e[211]" "e[216]" "e[300:301]" "e[303]" "e[305]" "e[307]" "e[333]" "e[335]" "e[337]" "e[339]" "e[341]" "e[343]" "e[345]";
	setAttr ".ix" -type "matrix" 1.8612168191223861 0 0 0 0 0.070987227854694038 0 0
		 0 0 5.7322904167518862 0 0 0.82103225592442086 0 1;
	setAttr ".wt" 0.010879967361688614;
	setAttr ".re" 300;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 23 "e[45]" "e[47]" "e[49]" "e[51]" "e[182]" "e[192]" "e[195]" "e[200]" "e[203]" "e[208]" "e[211]" "e[216]" "e[348:349]" "e[351]" "e[353]" "e[355]" "e[381]" "e[383]" "e[385]" "e[387]" "e[389]" "e[391]" "e[393]";
	setAttr ".ix" -type "matrix" 1.8612168191223861 0 0 0 0 0.070987227854694038 0 0
		 0 0 5.7322904167518862 0 0 0.82103225592442086 0 1;
	setAttr ".wt" 0.26032531261444092;
	setAttr ".re" 348;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 23 "e[45]" "e[47]" "e[49]" "e[51]" "e[182]" "e[192]" "e[195]" "e[200]" "e[203]" "e[208]" "e[211]" "e[216]" "e[396:397]" "e[399]" "e[401]" "e[403]" "e[429]" "e[431]" "e[433]" "e[435]" "e[437]" "e[439]" "e[441]";
	setAttr ".ix" -type "matrix" 1.8612168191223861 0 0 0 0 0.070987227854694038 0 0
		 0 0 5.7322904167518862 0 0 0.82103225592442086 0 1;
	setAttr ".wt" 0.014870934188365936;
	setAttr ".re" 396;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 23 "e[45]" "e[47]" "e[49]" "e[51]" "e[182]" "e[192]" "e[195]" "e[200]" "e[203]" "e[208]" "e[211]" "e[216]" "e[444:445]" "e[447]" "e[449]" "e[451]" "e[477]" "e[479]" "e[481]" "e[483]" "e[485]" "e[487]" "e[489]";
	setAttr ".ix" -type "matrix" 1.8612168191223861 0 0 0 0 0.070987227854694038 0 0
		 0 0 5.7322904167518862 0 0 0.82103225592442086 0 1;
	setAttr ".wt" 0.34723126888275146;
	setAttr ".re" 444;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 23 "e[45]" "e[47]" "e[49]" "e[51]" "e[182]" "e[192]" "e[195]" "e[200]" "e[203]" "e[208]" "e[211]" "e[216]" "e[492:493]" "e[495]" "e[497]" "e[499]" "e[525]" "e[527]" "e[529]" "e[531]" "e[533]" "e[535]" "e[537]";
	setAttr ".ix" -type "matrix" 1.8612168191223861 0 0 0 0 0.070987227854694038 0 0
		 0 0 5.7322904167518862 0 0 0.82103225592442086 0 1;
	setAttr ".wt" 0.023128785192966461;
	setAttr ".re" 492;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 23 "e[45]" "e[47]" "e[49]" "e[51]" "e[182]" "e[192]" "e[195]" "e[200]" "e[203]" "e[208]" "e[211]" "e[216]" "e[540:541]" "e[543]" "e[545]" "e[547]" "e[573]" "e[575]" "e[577]" "e[579]" "e[581]" "e[583]" "e[585]";
	setAttr ".ix" -type "matrix" 1.8612168191223861 0 0 0 0 0.070987227854694038 0 0
		 0 0 5.7322904167518862 0 0 0.82103225592442086 0 1;
	setAttr ".wt" 0.51831972599029541;
	setAttr ".dr" no;
	setAttr ".re" 540;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 23 "e[45]" "e[47]" "e[49]" "e[51]" "e[182]" "e[192]" "e[195]" "e[200]" "e[203]" "e[208]" "e[211]" "e[216]" "e[588:589]" "e[591]" "e[593]" "e[595]" "e[621]" "e[623]" "e[625]" "e[627]" "e[629]" "e[631]" "e[633]";
	setAttr ".ix" -type "matrix" 1.8612168191223861 0 0 0 0 0.070987227854694038 0 0
		 0 0 5.7322904167518862 0 0 0.82103225592442086 0 1;
	setAttr ".wt" 0.038233648985624313;
	setAttr ".re" 588;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 1 "f[21]";
	setAttr ".ix" -type "matrix" 1.8612168191223861 0 0 0 0 0.070987227854694038 0 0
		 0 0 5.7322904167518862 0 0 0.82103225592442086 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.003163706 0.8565259 2.3889132 ;
	setAttr ".rs" 58567;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87761954891758209 0.85652586985176793 1.9779890331738328 ;
	setAttr ".cbx" -type "double3" 0.8712921366403924 0.85652586985176793 2.799837091392825 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 1 "f[196]";
	setAttr ".ix" -type "matrix" 1.8612168191223861 0 0 0 0 0.070987227854694038 0 0
		 0 0 5.7322904167518862 0 0 0.82103225592442086 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.003163706 0.8565259 1.3108933 ;
	setAttr ".rs" 39589;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87761954891758209 0.85652586985176793 0.69577914006768726 ;
	setAttr ".cbx" -type "double3" 0.8712921366403924 0.85652586985176793 1.9260075285121407 ;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 26 ".tk";
	setAttr ".tk[41]" -type "float3" 0 -3.7252903e-008 0 ;
	setAttr ".tk[42]" -type "float3" 0 -3.7252903e-008 0 ;
	setAttr ".tk[49]" -type "float3" 0 -3.7252903e-008 0 ;
	setAttr ".tk[50]" -type "float3" 0 -3.7252903e-008 0 ;
	setAttr ".tk[344]" -type "float3" 0 0.75449306 0 ;
	setAttr ".tk[345]" -type "float3" 0 0.75449306 0 ;
	setAttr ".tk[346]" -type "float3" 0 0.75449306 0 ;
	setAttr ".tk[347]" -type "float3" 0 0.75449306 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 1 "f[244]";
	setAttr ".ix" -type "matrix" 1.8612168191223861 0 0 0 0 0.070987227854694038 0 0
		 0 0 5.7322904167518862 0 0 0.82103225592442086 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.003163734 0.8565259 0.045947999 ;
	setAttr ".rs" 64329;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87761954891758209 0.85652586985176793 -0.55190163906795586 ;
	setAttr ".cbx" -type "double3" 0.87129208117180867 0.85652586985176793 0.64379763540599511 ;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[348]" -type "float3" 0 0.68636298 0 ;
	setAttr ".tk[349]" -type "float3" 0 0.68636298 0 ;
	setAttr ".tk[350]" -type "float3" 0 0.68636298 0 ;
	setAttr ".tk[351]" -type "float3" 0 0.68636298 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 1 "f[292]";
	setAttr ".ix" -type "matrix" 1.8612168191223861 0 0 0 0 0.070987227854694038 0 0
		 0 0 5.7322904167518862 0 0 0.82103225592442086 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.003163734 0.8565259 -1.1729635 ;
	setAttr ".rs" 41748;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87761954891758209 0.85652586985176793 -1.7420359022373406 ;
	setAttr ".cbx" -type "double3" 0.87129208117180867 0.85652586985176793 -0.60389113029240615 ;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[352]" -type "float3" 0 0.78966492 0 ;
	setAttr ".tk[353]" -type "float3" 0 0.78966492 0 ;
	setAttr ".tk[354]" -type "float3" 0 0.78966492 0 ;
	setAttr ".tk[355]" -type "float3" 0 0.78966492 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	setAttr ".ics" -type "componentList" 1 "f[340]";
	setAttr ".ix" -type "matrix" 1.8612168191223861 0 0 0 0 0.070987227854694038 0 0
		 0 0 5.7322904167518862 0 0 0.82103225592442086 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.003163706 0.8565259 -2.291101 ;
	setAttr ".rs" 58736;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87761954891758209 0.85652586985176793 -2.7997267316165302 ;
	setAttr ".cbx" -type "double3" 0.8712921366403924 0.85652586985176793 -1.7824754143200319 ;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[356]" -type "float3" 0 0.96842736 0 ;
	setAttr ".tk[357]" -type "float3" 0 0.96842736 0 ;
	setAttr ".tk[358]" -type "float3" 0 0.96842736 0 ;
	setAttr ".tk[359]" -type "float3" 0 0.96842736 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	setAttr ".ics" -type "componentList" 1 "f[232]";
	setAttr ".ix" -type "matrix" 1.8612168191223861 0 0 0 0 0.070987227854694038 0 0
		 0 0 5.7322904167518862 0 0 0.82103225592442086 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.003163734 0.75395757 0.045947999 ;
	setAttr ".rs" 35997;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.87761954891758209 0.66341486562688601 -0.55190163906795586 ;
	setAttr ".cbx" -type "double3" 0.87129208117180867 0.84450023737519186 0.64379763540599511 ;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 289 ".tk";
	setAttr ".tk[0]" -type "float3" 0 -4.9904618 -4.6566129e-010 ;
	setAttr ".tk[1]" -type "float3" 0 -4.9904618 -4.6566129e-010 ;
	setAttr ".tk[2]" -type "float3" 0 -4.9904604 -3.6379788e-012 ;
	setAttr ".tk[3]" -type "float3" 0 -4.9904604 -3.6379788e-012 ;
	setAttr ".tk[4]" -type "float3" 0 23.23329 0.10642793 ;
	setAttr ".tk[5]" -type "float3" 0 23.23329 0.10642793 ;
	setAttr ".tk[6]" -type "float3" 0 23.523724 0.097701937 ;
	setAttr ".tk[7]" -type "float3" 0 23.523724 0.097701937 ;
	setAttr ".tk[8]" -type "float3" 0 -4.9904604 -3.6379788e-012 ;
	setAttr ".tk[9]" -type "float3" 0 23.23329 0.10642793 ;
	setAttr ".tk[10]" -type "float3" 0 23.523724 0.097701937 ;
	setAttr ".tk[11]" -type "float3" 0 -4.9904618 -4.6566129e-010 ;
	setAttr ".tk[12]" -type "float3" 0 -4.9904604 -3.6379788e-012 ;
	setAttr ".tk[13]" -type "float3" 0 23.23329 0.10642793 ;
	setAttr ".tk[14]" -type "float3" 0 23.523724 0.097701937 ;
	setAttr ".tk[15]" -type "float3" 0 -4.9904618 -4.6566129e-010 ;
	setAttr ".tk[16]" -type "float3" 0 -4.9904613 0 ;
	setAttr ".tk[17]" -type "float3" 0 -4.9904613 0 ;
	setAttr ".tk[18]" -type "float3" 0 -4.9904599 9.3132257e-010 ;
	setAttr ".tk[19]" -type "float3" 0 -4.9904599 9.3132257e-010 ;
	setAttr ".tk[20]" -type "float3" 0 -4.9904599 9.3132257e-010 ;
	setAttr ".tk[21]" -type "float3" 0 -4.9904599 9.3132257e-010 ;
	setAttr ".tk[22]" -type "float3" 0 -4.9904613 0 ;
	setAttr ".tk[23]" -type "float3" 0 -4.9904613 0 ;
	setAttr ".tk[24]" -type "float3" 0 22.574011 0.10306282 ;
	setAttr ".tk[25]" -type "float3" 0 22.864433 0.094336815 ;
	setAttr ".tk[26]" -type "float3" 0 22.864433 0.094336815 ;
	setAttr ".tk[27]" -type "float3" 0 22.864433 0.094336815 ;
	setAttr ".tk[28]" -type "float3" 0 22.864433 0.094336815 ;
	setAttr ".tk[29]" -type "float3" 0 22.574011 0.10306282 ;
	setAttr ".tk[30]" -type "float3" 0 22.574011 0.10306282 ;
	setAttr ".tk[31]" -type "float3" 0 22.574011 0.10306282 ;
	setAttr ".tk[32]" -type "float3" 0 -4.9904618 -4.6566129e-010 ;
	setAttr ".tk[33]" -type "float3" 0 -4.9904618 -4.6566129e-010 ;
	setAttr ".tk[34]" -type "float3" 0 -4.9904604 -3.6379788e-012 ;
	setAttr ".tk[35]" -type "float3" 0 -4.9904604 -3.6379788e-012 ;
	setAttr ".tk[36]" -type "float3" 0 -4.9904604 -3.6379788e-012 ;
	setAttr ".tk[37]" -type "float3" 0 -4.9904604 -3.6379788e-012 ;
	setAttr ".tk[38]" -type "float3" 0 -4.9904613 0 ;
	setAttr ".tk[39]" -type "float3" 0 -4.9904613 0 ;
	setAttr ".tk[40]" -type "float3" 0 23.23329 0.10642793 ;
	setAttr ".tk[41]" -type "float3" 0 23.23329 0.10642793 ;
	setAttr ".tk[42]" -type "float3" 0 23.523724 0.097701937 ;
	setAttr ".tk[43]" -type "float3" 0 23.523724 0.097701937 ;
	setAttr ".tk[44]" -type "float3" 0 -4.9904599 9.3132257e-010 ;
	setAttr ".tk[45]" -type "float3" 0 -4.9904599 9.3132257e-010 ;
	setAttr ".tk[46]" -type "float3" 0 -4.9904618 -4.6566129e-010 ;
	setAttr ".tk[47]" -type "float3" 0 -4.9904618 -4.6566129e-010 ;
	setAttr ".tk[48]" -type "float3" 0 -4.9904599 9.3132257e-010 ;
	setAttr ".tk[49]" -type "float3" 0 -4.9904618 -4.6566129e-010 ;
	setAttr ".tk[50]" -type "float3" 0 -4.9904613 0 ;
	setAttr ".tk[51]" -type "float3" 0 -4.9904604 -3.6379788e-012 ;
	setAttr ".tk[52]" -type "float3" 0 -4.9904599 9.3132257e-010 ;
	setAttr ".tk[53]" -type "float3" 0 -4.9904618 -4.6566129e-010 ;
	setAttr ".tk[54]" -type "float3" 0 -4.9904604 -3.6379788e-012 ;
	setAttr ".tk[55]" -type "float3" 0 -4.9904613 0 ;
	setAttr ".tk[56]" -type "float3" 0 -4.9904604 -3.6379788e-012 ;
	setAttr ".tk[57]" -type "float3" 0 -4.9904604 -3.6379788e-012 ;
	setAttr ".tk[58]" -type "float3" 0 -4.9904613 0 ;
	setAttr ".tk[59]" -type "float3" 0 -4.9904613 0 ;
	setAttr ".tk[60]" -type "float3" 0 23.23329 0.10642793 ;
	setAttr ".tk[61]" -type "float3" 0 23.523724 0.097701937 ;
	setAttr ".tk[62]" -type "float3" 0 23.23329 0.10642793 ;
	setAttr ".tk[63]" -type "float3" 0 23.523724 0.097701937 ;
	setAttr ".tk[64]" -type "float3" 0 -4.9904599 9.3132257e-010 ;
	setAttr ".tk[65]" -type "float3" 0 -4.9904618 -4.6566129e-010 ;
	setAttr ".tk[66]" -type "float3" 0 -4.9904599 9.3132257e-010 ;
	setAttr ".tk[67]" -type "float3" 0 -4.9904618 -4.6566129e-010 ;
	setAttr ".tk[68]" -type "float3" 0 -4.9904618 -4.6566129e-010 ;
	setAttr ".tk[69]" -type "float3" 0 -4.9904604 -3.6379788e-012 ;
	setAttr ".tk[70]" -type "float3" 0 -4.9904618 -4.6566129e-010 ;
	setAttr ".tk[71]" -type "float3" 0 -4.9904604 -3.6379788e-012 ;
	setAttr ".tk[72]" -type "float3" 0 -4.9904604 -3.6379788e-012 ;
	setAttr ".tk[73]" -type "float3" 0 -4.9904604 -3.6379788e-012 ;
	setAttr ".tk[74]" -type "float3" 0 -4.9904613 0 ;
	setAttr ".tk[75]" -type "float3" 0 -4.9904613 0 ;
	setAttr ".tk[76]" -type "float3" 0 23.23329 0.10642793 ;
	setAttr ".tk[77]" -type "float3" 0 23.523724 0.097701937 ;
	setAttr ".tk[78]" -type "float3" 0 23.23329 0.10642793 ;
	setAttr ".tk[79]" -type "float3" 0 23.523724 0.097701937 ;
	setAttr ".tk[80]" -type "float3" 0 -4.9904599 9.3132257e-010 ;
	setAttr ".tk[81]" -type "float3" 0 -4.9904618 -4.6566129e-010 ;
	setAttr ".tk[82]" -type "float3" 0 -4.9904599 9.3132257e-010 ;
	setAttr ".tk[83]" -type "float3" 0 -4.9904618 -4.6566129e-010 ;
	setAttr ".tk[84]" -type "float3" 0 -4.9904618 -4.6566129e-010 ;
	setAttr ".tk[85]" -type "float3" 0 -4.9904604 -3.6379788e-012 ;
	setAttr ".tk[86]" -type "float3" 0 -4.9904618 -4.6566129e-010 ;
	setAttr ".tk[87]" -type "float3" 0 -4.9904604 -3.6379788e-012 ;
	setAttr ".tk[88]" -type "float3" 0 -4.9904613 0 ;
	setAttr ".tk[89]" -type "float3" 0 -4.9904613 0 ;
	setAttr ".tk[90]" -type "float3" 0 22.574011 0.10306282 ;
	setAttr ".tk[91]" -type "float3" 0 22.574011 0.10306282 ;
	setAttr ".tk[92]" -type "float3" 0 22.864433 0.094336815 ;
	setAttr ".tk[93]" -type "float3" 0 -4.9904599 9.3132257e-010 ;
	setAttr ".tk[94]" -type "float3" 0 -4.9904613 0 ;
	setAttr ".tk[95]" -type "float3" 0 22.574011 0.10306282 ;
	setAttr ".tk[96]" -type "float3" 0 22.864433 0.094336815 ;
	setAttr ".tk[97]" -type "float3" 0 22.864433 0.094336815 ;
	setAttr ".tk[98]" -type "float3" 0 -4.9904599 9.3132257e-010 ;
	setAttr ".tk[99]" -type "float3" 0 -4.9904599 9.3132257e-010 ;
	setAttr ".tk[100]" -type "float3" 0 -4.9904599 9.3132257e-010 ;
	setAttr ".tk[101]" -type "float3" 0 -4.9904599 9.3132257e-010 ;
	setAttr ".tk[102]" -type "float3" 0 22.864433 0.094336815 ;
	setAttr ".tk[103]" -type "float3" 0 22.864433 0.094336815 ;
	setAttr ".tk[104]" -type "float3" 0 -4.9904599 9.3132257e-010 ;
	setAttr ".tk[105]" -type "float3" 0 -4.9904599 9.3132257e-010 ;
	setAttr ".tk[106]" -type "float3" 0 22.864433 0.094336815 ;
	setAttr ".tk[107]" -type "float3" 0 22.864433 0.094336815 ;
	setAttr ".tk[108]" -type "float3" 0 -4.9904599 9.3132257e-010 ;
	setAttr ".tk[109]" -type "float3" 0 -4.9904613 0 ;
	setAttr ".tk[110]" -type "float3" 0 22.864433 0.094336815 ;
	setAttr ".tk[111]" -type "float3" 0 22.574011 0.10306282 ;
	setAttr ".tk[112]" -type "float3" 0 -4.9904613 0 ;
	setAttr ".tk[113]" -type "float3" 0 -4.9904613 0 ;
	setAttr ".tk[114]" -type "float3" 0 22.574011 0.10306282 ;
	setAttr ".tk[115]" -type "float3" 0 22.574011 0.10306282 ;
	setAttr ".tk[116]" -type "float3" 0 -4.9904613 0 ;
	setAttr ".tk[117]" -type "float3" 0 -4.9904613 0 ;
	setAttr ".tk[118]" -type "float3" 0 22.574011 0.10306282 ;
	setAttr ".tk[119]" -type "float3" 0 22.574011 0.10306282 ;
	setAttr ".tk[120]" -type "float3" 0 23.523724 0.097701937 ;
	setAttr ".tk[121]" -type "float3" 0 22.864433 0.094336815 ;
	setAttr ".tk[122]" -type "float3" 0 22.574011 0.10306282 ;
	setAttr ".tk[123]" -type "float3" 0 23.23329 0.10642793 ;
	setAttr ".tk[124]" -type "float3" 0 23.523724 0.097701937 ;
	setAttr ".tk[125]" -type "float3" 0 23.523724 0.097701937 ;
	setAttr ".tk[126]" -type "float3" 0 22.864433 0.094336815 ;
	setAttr ".tk[127]" -type "float3" 0 22.864433 0.094336815 ;
	setAttr ".tk[128]" -type "float3" 0 22.864433 0.094336815 ;
	setAttr ".tk[129]" -type "float3" 0 22.864433 0.094336815 ;
	setAttr ".tk[130]" -type "float3" 0 23.523724 0.097701937 ;
	setAttr ".tk[131]" -type "float3" 0 23.523724 0.097701937 ;
	setAttr ".tk[132]" -type "float3" 0 22.864433 0.094336815 ;
	setAttr ".tk[133]" -type "float3" 0 22.864433 0.094336815 ;
	setAttr ".tk[134]" -type "float3" 0 23.523724 0.097701937 ;
	setAttr ".tk[135]" -type "float3" 0 23.523724 0.097701937 ;
	setAttr ".tk[136]" -type "float3" 0 22.864433 0.094336815 ;
	setAttr ".tk[137]" -type "float3" 0 22.574011 0.10306282 ;
	setAttr ".tk[138]" -type "float3" 0 23.523724 0.097701937 ;
	setAttr ".tk[139]" -type "float3" 0 23.23329 0.10642793 ;
	setAttr ".tk[140]" -type "float3" 0 22.574011 0.10306282 ;
	setAttr ".tk[141]" -type "float3" 0 22.574011 0.10306282 ;
	setAttr ".tk[142]" -type "float3" 0 23.23329 0.10642793 ;
	setAttr ".tk[143]" -type "float3" 0 23.23329 0.10642793 ;
	setAttr ".tk[144]" -type "float3" 0 22.574011 0.10306282 ;
	setAttr ".tk[145]" -type "float3" 0 22.574011 0.10306282 ;
	setAttr ".tk[146]" -type "float3" 0 23.23329 0.10642793 ;
	setAttr ".tk[147]" -type "float3" 0 23.23329 0.10642793 ;
	setAttr ".tk[148]" -type "float3" 0 22.574011 0.10306282 ;
	setAttr ".tk[149]" -type "float3" 0 22.574011 0.10306282 ;
	setAttr ".tk[150]" -type "float3" 0 23.23329 0.10642793 ;
	setAttr ".tk[151]" -type "float3" 0 23.23329 0.10642793 ;
	setAttr ".tk[200]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[201]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[202]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[203]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[204]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[205]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[206]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[207]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[208]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[209]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[210]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[211]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[212]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[213]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[214]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[215]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[216]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[217]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[218]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[219]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[220]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[221]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[222]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[223]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[224]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[225]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[226]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[227]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[228]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[229]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[230]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[231]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[232]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[233]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[234]" -type "float3" 0 0.83059442 0 ;
	setAttr ".tk[235]" -type "float3" 0 0.83059442 0 ;
	setAttr ".tk[236]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[237]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[238]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[239]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[240]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[241]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[242]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[243]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[244]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[245]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[246]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[247]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[258]" -type "float3" 0 -1.7203625 0 ;
	setAttr ".tk[259]" -type "float3" 0 -1.7203625 0 ;
	setAttr ".tk[272]" -type "float3" 0 0.7776987 -0.0081899958 ;
	setAttr ".tk[273]" -type "float3" 0 0.7776987 -0.0081899958 ;
	setAttr ".tk[274]" -type "float3" 0 0.7776987 -0.0081899958 ;
	setAttr ".tk[275]" -type "float3" 0 0.7776987 -0.0081899958 ;
	setAttr ".tk[276]" -type "float3" 0 0.7776987 -0.0081899958 ;
	setAttr ".tk[277]" -type "float3" 0 1.0681278 -0.016916011 ;
	setAttr ".tk[278]" -type "float3" 0 1.0681278 -0.016916011 ;
	setAttr ".tk[279]" -type "float3" 0 1.0681278 -0.016916011 ;
	setAttr ".tk[280]" -type "float3" 0 1.0681278 -0.016916011 ;
	setAttr ".tk[281]" -type "float3" 0 1.0681278 -0.016916011 ;
	setAttr ".tk[282]" -type "float3" 0 1.0681278 -0.016916011 ;
	setAttr ".tk[283]" -type "float3" 0 1.0681278 -0.016916011 ;
	setAttr ".tk[284]" -type "float3" 0 1.0681278 -0.016916011 ;
	setAttr ".tk[285]" -type "float3" 0 1.0681278 -0.016916011 ;
	setAttr ".tk[286]" -type "float3" 0 1.0681278 -0.016916011 ;
	setAttr ".tk[287]" -type "float3" 0 1.0681278 -0.016916011 ;
	setAttr ".tk[288]" -type "float3" 0 1.0681278 -0.016916011 ;
	setAttr ".tk[289]" -type "float3" 0 0.7776987 -0.0081899958 ;
	setAttr ".tk[290]" -type "float3" 0 0.7776987 -0.0081899958 ;
	setAttr ".tk[291]" -type "float3" 0 0.7776987 -0.0081899958 ;
	setAttr ".tk[292]" -type "float3" 0 0.7776987 -0.0081899958 ;
	setAttr ".tk[293]" -type "float3" 0 0.7776987 -0.0081899958 ;
	setAttr ".tk[294]" -type "float3" 0 0.7776987 -0.0081899958 ;
	setAttr ".tk[295]" -type "float3" 0 0.7776987 -0.0081899958 ;
	setAttr ".tk[296]" -type "float3" 0 12.075155 0.049474519 ;
	setAttr ".tk[297]" -type "float3" 0 12.075155 0.049474519 ;
	setAttr ".tk[298]" -type "float3" 0 12.075155 0.049474519 ;
	setAttr ".tk[299]" -type "float3" 0 12.075155 0.049474519 ;
	setAttr ".tk[300]" -type "float3" 0 12.075155 0.049474519 ;
	setAttr ".tk[301]" -type "float3" 0 12.365583 0.040748518 ;
	setAttr ".tk[302]" -type "float3" 0 12.365583 0.040748518 ;
	setAttr ".tk[303]" -type "float3" 0 12.365583 0.040748518 ;
	setAttr ".tk[304]" -type "float3" 0 12.365583 0.040748518 ;
	setAttr ".tk[305]" -type "float3" 0 12.365583 0.040748518 ;
	setAttr ".tk[306]" -type "float3" 0 12.365583 0.040748518 ;
	setAttr ".tk[307]" -type "float3" 0 12.365583 0.040748518 ;
	setAttr ".tk[308]" -type "float3" 0 12.365583 0.040748518 ;
	setAttr ".tk[309]" -type "float3" 0 12.365583 0.040748518 ;
	setAttr ".tk[310]" -type "float3" 0 12.365583 0.040748518 ;
	setAttr ".tk[311]" -type "float3" 0 12.365583 0.040748518 ;
	setAttr ".tk[312]" -type "float3" 0 12.365583 0.040748518 ;
	setAttr ".tk[313]" -type "float3" 0 12.075155 0.049474519 ;
	setAttr ".tk[314]" -type "float3" 0 12.075155 0.049474519 ;
	setAttr ".tk[315]" -type "float3" 0 12.075155 0.049474519 ;
	setAttr ".tk[316]" -type "float3" 0 12.075155 0.049474519 ;
	setAttr ".tk[317]" -type "float3" 0 12.075155 0.049474519 ;
	setAttr ".tk[318]" -type "float3" 0 12.075155 0.049474519 ;
	setAttr ".tk[319]" -type "float3" 0 12.075155 0.049474519 ;
	setAttr ".tk[320]" -type "float3" 0 12.476566 0.051523399 ;
	setAttr ".tk[321]" -type "float3" 0 12.476566 0.051523399 ;
	setAttr ".tk[322]" -type "float3" 0 12.476566 0.051523399 ;
	setAttr ".tk[323]" -type "float3" 0 12.476566 0.051523399 ;
	setAttr ".tk[324]" -type "float3" 0 12.476566 0.051523399 ;
	setAttr ".tk[325]" -type "float3" 0 12.766996 0.042797402 ;
	setAttr ".tk[326]" -type "float3" 0 12.766996 0.042797402 ;
	setAttr ".tk[327]" -type "float3" 0 12.766996 0.042797402 ;
	setAttr ".tk[328]" -type "float3" 0 12.766996 0.042797402 ;
	setAttr ".tk[329]" -type "float3" 0 12.766996 0.042797402 ;
	setAttr ".tk[330]" -type "float3" 0 12.766996 0.042797402 ;
	setAttr ".tk[331]" -type "float3" 0 12.766996 0.042797402 ;
	setAttr ".tk[332]" -type "float3" 0 12.766996 0.042797402 ;
	setAttr ".tk[333]" -type "float3" 0 12.766996 0.042797402 ;
	setAttr ".tk[334]" -type "float3" 0 12.766996 0.042797402 ;
	setAttr ".tk[335]" -type "float3" 0 12.766996 0.042797402 ;
	setAttr ".tk[336]" -type "float3" 0 12.766996 0.042797402 ;
	setAttr ".tk[337]" -type "float3" 0 12.476566 0.051523399 ;
	setAttr ".tk[338]" -type "float3" 0 12.476566 0.051523399 ;
	setAttr ".tk[339]" -type "float3" 0 12.476566 0.051523399 ;
	setAttr ".tk[340]" -type "float3" 0 12.476566 0.051523399 ;
	setAttr ".tk[341]" -type "float3" 0 12.476566 0.051523399 ;
	setAttr ".tk[342]" -type "float3" 0 12.476566 0.051523399 ;
	setAttr ".tk[343]" -type "float3" 0 12.476566 0.051523399 ;
	setAttr ".tk[344]" -type "float3" 0 -4.9904604 4.6566129e-010 ;
	setAttr ".tk[345]" -type "float3" 0 -4.9904604 4.6566129e-010 ;
	setAttr ".tk[350]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[351]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[352]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[353]" -type "float3" 0 2.5509565 0 ;
	setAttr ".tk[356]" -type "float3" 0 0.49644035 0.00026050943 ;
	setAttr ".tk[357]" -type "float3" 0 0.49644035 0.00026050943 ;
	setAttr ".tk[358]" -type "float3" 0 11.793894 0.057925012 ;
	setAttr ".tk[359]" -type "float3" 0 11.793894 0.057925012 ;
	setAttr ".tk[360]" -type "float3" 0 13.108835 0.059298746 ;
	setAttr ".tk[361]" -type "float3" 0 13.108835 0.059298746 ;
	setAttr ".tk[362]" -type "float3" 0 23.206278 0.11083816 ;
	setAttr ".tk[363]" -type "float3" 0 23.206278 0.11083816 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	setAttr ".ics" -type "componentList" 1 "f[232]";
	setAttr ".ix" -type "matrix" 1.8612168191223861 0 0 0 0 0.070987227854694038 0 0
		 0 0 5.7322904167518862 0 0 0.82103225592442086 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.003163734 0.75395751 0.045947999 ;
	setAttr ".rs" 54062;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.26676761103209767 0.72666348939140812 -0.13427321083965404 ;
	setAttr ".cbx" -type "double3" 0.26044014328632425 0.78125152052496283 0.22616920717769332 ;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[364:367]" -type "float3"  0.32820031 -0.89098692 -0.07285542
		 -0.32820031 -0.89098692 -0.07285542 0.32820031 0.89098597 0.07285542 -0.32820031
		 0.89098597 0.07285542;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	setAttr ".ics" -type "componentList" 1 "f[232]";
	setAttr ".ix" -type "matrix" 1.8612168191223861 0 0 0 0 0.070987227854694038 0 0
		 0 0 5.7322904167518862 0 0 0.82103225592442086 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.003163734 0.36863917 0.045948002 ;
	setAttr ".rs" 50050;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.26676761103209767 0.36728993754071154 -0.13632329103000798 ;
	setAttr ".cbx" -type "double3" 0.26044014328632425 0.36998840756318785 0.22821929804527016 ;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[368:371]" -type "float3"  0 -5.79348087 0.00035763974
		 0 -5.79348087 0.00035763974 0 -5.06251049 -0.00035763974 0 -5.06251049 -0.00035763974;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	setAttr ".ics" -type "componentList" 1 "f[232]";
	setAttr ".ix" -type "matrix" 1.8612168191223861 0 0 0 0 0.070987227854694038 0 0
		 0 0 5.7322904167518862 0 0 0.82103225592442086 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.003163706 0.36863923 0.045947999 ;
	setAttr ".rs" 48279;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.98830505530721235 0.36359690597533012 -0.63523680888927558 ;
	setAttr ".cbx" -type "double3" 0.98197764303002266 0.37368157452596129 0.72713280522731483 ;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[372:375]" -type "float3"  -0.38766977 0.052024841 0.087035634
		 0.38766977 0.052024841 0.087035634 -0.38766977 -0.052024841 -0.087035634 0.38766977
		 -0.052024841 -0.087035634;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	setAttr ".ics" -type "componentList" 1 "f[232]";
	setAttr ".ix" -type "matrix" 1.8612168191223861 0 0 0 0 0.070987227854694038 0 0
		 0 0 5.7322904167518862 0 0 0.82103225592442086 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.003163706 -0.12624906 0.045947999 ;
	setAttr ".rs" 45483;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.98830505530721235 -0.13129139356067887 -0.63523680888927558 ;
	setAttr ".cbx" -type "double3" 0.98197764303002266 -0.1212067250100477 0.72713280522731483 ;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[376:379]" -type "float3"  0 -6.97151232 0 0 -6.97151232
		 0 0 -6.97151232 0 0 -6.97151232 0;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	setAttr ".ics" -type "componentList" 1 "f[232]";
	setAttr ".ix" -type "matrix" 1.8612168191223861 0 0 0 0 0.070987227854694038 0 0
		 0 0 5.7322904167518862 0 0 0.82103225592442086 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.003163706 -0.12624899 0.045947999 ;
	setAttr ".rs" 35901;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.98830505530721235 -0.13129132586198289 -0.63523680888927558 ;
	setAttr ".cbx" -type "double3" 0.98197764303002266 -0.12120665731135172 0.72713280522731483 ;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	setAttr ".ics" -type "componentList" 1 "f[232]";
	setAttr ".ix" -type "matrix" 1.8612168191223861 0 0 0 0 0.070987227854694038 0 0
		 0 0 5.7322904167518862 0 0 0.82103225592442086 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.003163706 -0.41928002 0.045948021 ;
	setAttr ".rs" 56768;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.1973752440331193 -0.42432235584235733 -1.8690277168305793 ;
	setAttr ".cbx" -type "double3" 1.1910478317559294 -0.41423768729172605 1.9609237558775103 ;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[384:387]" -type "float3"  -0.11232985 -4.12794113 0.21523523
		 0.11232985 -4.12794113 0.21523523 -0.11232985 -4.12794113 -0.21523523 0.11232985
		 -4.12794113 -0.21523523;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	setAttr ".ics" -type "componentList" 1 "f[232]";
	setAttr ".ix" -type "matrix" 1.8612168191223861 0 0 0 0 0.070987227854694038 0 0
		 0 0 5.7322904167518862 0 0 0.82103225592442086 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.003163706 -0.57223445 0.045948107 ;
	setAttr ".rs" 58538;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.1973752440331193 -0.57727672765825278 -1.8690275459950123 ;
	setAttr ".cbx" -type "double3" 1.1910478317559294 -0.56719219450501368 1.9609237558775103 ;
createNode polyTweak -n "polyTweak11";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[388:391]" -type "float3"  0 -2.15467596 0 0 -2.15467596
		 0 0 -2.15467596 0 0 -2.15467596 0;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	setAttr ".ics" -type "componentList" 1 "f[232]";
	setAttr ".ix" -type "matrix" 1.8612168191223861 0 0 0 0 0.070987227854694038 0 0
		 0 0 5.7322904167518862 0 0 0.82103225592442086 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.003163706 -0.57223433 0.045948107 ;
	setAttr ".rs" 60369;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.137926900414584 -0.57702556549610062 -1.7736992495710837 ;
	setAttr ".cbx" -type "double3" 1.1315994881373941 -0.5674430858723819 1.8655954594535817 ;
createNode polyTweak -n "polyTweak12";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[392:395]" -type "float3"  0.031940568 -0.0035359859
		 -0.016630042 -0.031940568 -0.0035359859 -0.016630042 0.031940568 0.0035355091 0.016630042
		 -0.031940568 0.0035355091 0.016630042;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n"
		+ "            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n"
		+ "                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n"
		+ "            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "polyExtrudeFace15.out" "pCubeShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polySplitRing1.ip";
connectAttr "pCubeShape1.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "pCubeShape1.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "pCubeShape1.wm" "polySplitRing3.mp";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "pCubeShape1.wm" "polySplitRing4.mp";
connectAttr "polySplitRing4.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "polySplitRing5.ip";
connectAttr "pCubeShape1.wm" "polySplitRing5.mp";
connectAttr "polySplitRing5.out" "polySplitRing6.ip";
connectAttr "pCubeShape1.wm" "polySplitRing6.mp";
connectAttr "polySplitRing6.out" "polySplitRing7.ip";
connectAttr "pCubeShape1.wm" "polySplitRing7.mp";
connectAttr "polySplitRing7.out" "polySplitRing8.ip";
connectAttr "pCubeShape1.wm" "polySplitRing8.mp";
connectAttr "polySplitRing8.out" "polySplitRing9.ip";
connectAttr "pCubeShape1.wm" "polySplitRing9.mp";
connectAttr "polySplitRing9.out" "polySplitRing10.ip";
connectAttr "pCubeShape1.wm" "polySplitRing10.mp";
connectAttr "polySplitRing10.out" "polySplitRing11.ip";
connectAttr "pCubeShape1.wm" "polySplitRing11.mp";
connectAttr "polySplitRing11.out" "polySplitRing12.ip";
connectAttr "pCubeShape1.wm" "polySplitRing12.mp";
connectAttr "polySplitRing12.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace4.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace5.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace6.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyExtrudeFace7.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polyExtrudeFace8.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyExtrudeFace9.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polyExtrudeFace10.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyExtrudeFace11.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeFace10.out" "polyTweak9.ip";
connectAttr "polyExtrudeFace11.out" "polyExtrudeFace12.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace12.mp";
connectAttr "polyTweak10.out" "polyExtrudeFace13.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace13.mp";
connectAttr "polyExtrudeFace12.out" "polyTweak10.ip";
connectAttr "polyTweak11.out" "polyExtrudeFace14.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace14.mp";
connectAttr "polyExtrudeFace13.out" "polyTweak11.ip";
connectAttr "polyTweak12.out" "polyExtrudeFace15.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace15.mp";
connectAttr "polyExtrudeFace14.out" "polyTweak12.ip";
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of surgicalTable.ma
