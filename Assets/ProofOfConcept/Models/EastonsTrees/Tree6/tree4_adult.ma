//Maya ASCII 2016 scene
//Name: tree4_adult.ma
//Last modified: Thu, Nov 09, 2017 02:35:10 AM
//Codeset: UTF-8
requires maya "2016";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Mac OS X 10.9.6";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "043ED502-0B43-491A-246E-FF97FB6C5528";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.1879340970956198 2.7615404049458281 -2.9324230274987002 ;
	setAttr ".r" -type "double3" 344.06164726941 -1314.9999999998849 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "1724BCAB-F14D-8403-B480-1C84DD230844";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 5.3169180250640879;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 1.3014991418144177 -3.1747370357604332e-09 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "3666552C-9946-37AE-8FAE-958904B5E3C6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "ADEBDC07-2C45-F83E-5868-4092FEE3B532";
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
	rename -uid "D5731E72-B84E-81C9-5D51-4A82B32989DB";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 9.5242110934035118e-09 1.9275812599686564 100.11855756808298 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "463CF1CA-214C-57C2-94B3-6DBC413BEF24";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 8.9578333717789551;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "58D593D4-E642-6364-DA0E-7AA3D8F2C8B1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "58EB6EC4-034E-4432-F5FF-36AC8E9B7E87";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCylinder1";
	rename -uid "CF9F8C0C-F64D-B66F-1E56-1BAB124D1C66";
	setAttr -av ".v";
	setAttr ".t" -type "double3" 0 0.59254851677481146 0 ;
createNode transform -n "transform6" -p "pCylinder1";
	rename -uid "15AE7148-F640-31B8-4933-6EB2E499E3C0";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape1" -p "transform6";
	rename -uid "14B79EC1-3147-8A1B-78F9-7AA55DD0B1C1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr -av ".iog[0].og[0].gid";
	setAttr -av ".iog[0].og[1].gid";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.41145835816860199 0.76609492301940918 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[47]" -type "float3" 0 -0.081604563 0 ;
	setAttr ".pt[102]" -type "float3" 0 -0.081604563 0 ;
	setAttr ".pt[157]" -type "float3" 0 -0.081604563 0 ;
	setAttr ".pt[212]" -type "float3" 0 -0.081604563 0 ;
createNode transform -n "pPyramid1";
	rename -uid "3EB85D91-ED45-A660-4281-86B71615C3F4";
	setAttr ".t" -type "double3" 0 1 -0.26479318737983704 ;
	setAttr ".s" -type "double3" 0.17758964219035492 0.17758964219035492 0.17758964219035492 ;
createNode transform -n "transform4" -p "pPyramid1";
	rename -uid "B5B3808F-1A42-1CB2-4740-A6AE1F6F28F5";
	setAttr ".v" no;
createNode mesh -n "pPyramidShape1" -p "transform4";
	rename -uid "09E4C9A5-C84D-C36A-C483-FD80DAA7AAD7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group";
	rename -uid "39FFFD9E-584C-DA41-BA91-41B8E2BAE38E";
createNode transform -n "pasted__pPyramid1" -p "group";
	rename -uid "7A5296E3-C64B-434F-9BC3-B6BB83375E72";
	setAttr ".t" -type "double3" 0.26479318737983704 1 0 ;
	setAttr ".s" -type "double3" 0.17758964219035492 0.17758964219035492 0.17758964219035492 ;
createNode transform -n "transform1" -p "|group|pasted__pPyramid1";
	rename -uid "3F2113AC-CB4F-3CAA-788D-D18A390B8982";
	setAttr ".v" no;
createNode mesh -n "pasted__pPyramidShape1" -p "transform1";
	rename -uid "5C04F4A7-B745-9B9B-1A39-30A51A14F0E6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group1";
	rename -uid "5B8BC803-C24A-0086-8F2B-0683B9FE0AF7";
createNode transform -n "pasted__pPyramid1" -p "group1";
	rename -uid "B6E959BE-F641-0A26-5326-13AD0CA0638F";
	setAttr ".t" -type "double3" 0 1 0.26479318737983704 ;
	setAttr ".s" -type "double3" 0.17758964219035492 0.17758964219035492 0.17758964219035492 ;
createNode transform -n "transform2" -p "|group1|pasted__pPyramid1";
	rename -uid "A016D081-F348-334E-1638-3AB153336827";
	setAttr ".v" no;
createNode mesh -n "pasted__pPyramidShape1" -p "transform2";
	rename -uid "A6C2BC73-5E42-D210-A042-11A614924984";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "group2";
	rename -uid "0B340949-EC48-FE3F-ACA1-F7BB60D8DDF1";
createNode transform -n "group3";
	rename -uid "5F4DD425-D548-87A9-F918-67871F3A676B";
	setAttr ".t" -type "double3" -0.25 0 0 ;
createNode transform -n "pasted__pPyramid1" -p "group3";
	rename -uid "1B122170-C54D-D5EE-A666-148BF6AFA5A8";
	setAttr ".t" -type "double3" -0.014793187379837036 1 0 ;
	setAttr ".s" -type "double3" 0.17758964219035492 0.17758964219035492 0.17758964219035492 ;
createNode transform -n "transform3" -p "|group3|pasted__pPyramid1";
	rename -uid "F3A4B976-654C-7ADC-A6B2-F48276D45B84";
	setAttr ".v" no;
createNode mesh -n "pasted__pPyramidShape1" -p "transform3";
	rename -uid "EA2F2BE2-674D-2EE9-619A-03A0929DFB83";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pPyramid2";
	rename -uid "CE8AA6CE-B44E-7CC5-7BB3-7F9F24A0D289";
createNode transform -n "transform5" -p "pPyramid2";
	rename -uid "D73C7BB1-7149-D9D8-7B87-F68D23E105E5";
	setAttr ".v" no;
createNode mesh -n "pPyramid2Shape" -p "transform5";
	rename -uid "60CEC357-7F4F-0F84-53EB-5DB1ADBC3E0A";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[4]" -type "float3" 0 0.0109905 0 ;
	setAttr ".pt[9]" -type "float3" 0 0.0109905 0 ;
	setAttr ".pt[14]" -type "float3" 0 0.0109905 0 ;
	setAttr ".pt[19]" -type "float3" 0 0.0109905 0 ;
createNode transform -n "pCylinder2";
	rename -uid "5224EED6-0243-62FC-E38E-0CBFC29DB530";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr ".s" -type "double3" 1.7044239652665925 1.7044239652665925 1.7044239652665925 ;
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 0.96956890535995965 1.2698948124547245e-08 ;
	setAttr ".sp" -type "double3" 0 0.56885430216789246 7.4505805969238281e-09 ;
	setAttr ".spt" -type "double3" 0 0.40071460319206714 5.2483675276234176e-09 ;
createNode mesh -n "pCylinder2Shape" -p "pCylinder2";
	rename -uid "5ED51F2A-F440-2E7E-1BDD-CF80D66B3CE4";
	setAttr -k off ".v";
	setAttr -s 8 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4375 0.75 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "pCylinder2ShapeOrig" -p "pCylinder2";
	rename -uid "0F1D5A09-314B-6A7A-F8AF-2F8E0227149D";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode joint -n "joint1";
	rename -uid "8E048F26-4442-876C-C809-F2A7D726A6DA";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".t" -type "double3" 0 -0.0084923520245670011 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 2.1186750230640768e-30 91.21887378152401 ;
	setAttr ".bps" -type "matrix" -0.021271756126083119 0.9997737305967348 0 0 0.9997737305967348 0.021271756126083119 1.2246467991473535e-16 0
		 1.2243696990468995e-16 2.6050388052050781e-18 -1 0 0 -0.0084923520245670011 0 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint2" -p "joint1";
	rename -uid "38446B65-BB44-0B06-5F04-539DC6B78BFF";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.37532393365726885 1.1275702593849246e-16 1.3866695599588098e-32 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.5876666258648584e-18 -1.4925772900605138e-16 1.2188737815239963 ;
	setAttr ".bps" -type "matrix" -1.9428902930940239e-16 1 2.6050388052050562e-18 0
		 1 1.9428902930940239e-16 1.2243696990468998e-16 0 1.2243696990468995e-16 2.6050388052050781e-18 -1 0
		 -0.0079837991850395095 0.36674665731020206 -5.7942509893108422e-35 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint3" -p "joint2";
	rename -uid "C0DFDE74-5245-CF82-1BA4-9496BC6E820A";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.3512875832070177 6.8251323549737387e-17 9.1511778604099098e-19 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 -2.9236242881986713e-16 1.1691379335806973 ;
	setAttr ".bps" -type "matrix" 0.020403890331993194 0.99979181895998726 5.1026869920341843e-18 0
		 -0.99979181895998748 0.020403890331993194 -2.4482300783760259e-16 0 -2.4487615499499581e-16 -1.0628290668216893e-19 1 0
		 -0.0079837991850395095 0.71803424051721976 -1.5986864654028971e-33 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint4" -p "joint3";
	rename -uid "F12BDDE8-4248-8C0B-A1FF-319736A93B0E";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.39128808551385674 8.0144224590128488e-16 -1.996620624089334e-18 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 6.213184481509098e-20 6.0895619872701219e-18 1.1691379335804639 ;
	setAttr ".bps" -type "matrix" 3.8788416922841407e-15 1 1.0628290668312111e-19 0 -1.0000000000000002 3.8823111392360943e-15 -2.4487615499499586e-16 0
		 -2.4487615499499581e-16 -1.0628290668216893e-19 1 0 -3.4694469519536142e-18 1.1092408672704896 -1.5465382064990995e-32 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint5" -p "joint4";
	rename -uid "72065258-DE46-19F6-5433-13A5AF7B41D8";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.31136853966076594 1.204279826349853e-15 -3.3093153444529963e-20 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 3.8788416922841407e-15 1 1.0628290668312111e-19 0 -1.0000000000000002 3.8823111392360943e-15 -2.4487615499499586e-16 0
		 -2.4487615499499581e-16 -1.0628290668216893e-19 1 0 1.9721522630525295e-31 1.4206094069312556 -1.5447326471762365e-32 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint6" -p "joint5";
	rename -uid "D3171BFE-7741-B669-2FBB-AAABC690ACB5";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.23951426127751191 9.2903790253985009e-16 -2.5456271880407027e-20 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -8.4389678592746191e-18 4.8960500833479548e-16 -1.9749363649952882 ;
	setAttr ".bps" -type "matrix" 0.034462316902405275 0.99940599793763407 8.5452194296964653e-18 0
		 -0.99940599793763429 0.034462316902405268 -2.4472703529869319e-16 0 -2.4487615499499581e-16 -1.0628290668216893e-19 1 0
		 6.2336339785743752e-36 1.6601236682087674 -1.5486446923757731e-32 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint7" -p "joint6";
	rename -uid "8259CA28-2141-9D03-2141-4BA12C570240";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0.23166806387598873 -2.0990154059319366e-16 -1.9796544406733118e-18 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.049613811395258e-19 6.0895619872714647e-18 1.9749363649954723 ;
	setAttr ".bps" -type "matrix" 6.7307270867900115e-16 1 1.0628290668233688e-19 0 -1.0000000000000002 6.7307270867900115e-16 -2.4487615499499586e-16 0
		 -2.4487615499499581e-16 -1.0628290668216893e-19 1 0 0.0079838182334612019 1.8916541207770294 -1.5101260934880283e-32 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint8" -p "joint7";
	rename -uid "41916B39-0D41-C536-A683-B3B642364762";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 0.20757902644051063 1.4191359300489397e-16 -2.2062102296352597e-20 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -89.999999999999943 ;
	setAttr ".bps" -type "matrix" 1.0000000000000002 3.2612801348363973e-16 2.4487615499499586e-16 0
		 -3.2612801348363993e-16 1 1.062829066820922e-19 0 -2.4487615499499581e-16 -1.0628290668216893e-19 1 0
		 0.0079838182334612002 2.0992331472175403 -1.5317928053623848e-32 1;
	setAttr ".radi" 0.5;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "444C1CF7-3843-1EAE-9B29-258A6D44E344";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "86D724E4-2448-599F-9BF6-C68AB4C1DD55";
createNode displayLayer -n "defaultLayer";
	rename -uid "519C68C2-9140-F030-7B88-28B4F09FD83F";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "1E2502FD-834C-F267-1A10-E79EC25F75AD";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "7B324D7C-AB48-9865-0F55-AFA975EC4A78";
	setAttr ".g" yes;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "DA021801-124B-3FD2-3B3E-3D9E10ED9F6A";
	setAttr ".r" 0.25;
	setAttr ".sa" 12;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyPyramid -n "polyPyramid1";
	rename -uid "52A72198-2342-A3A7-76AB-BDB61E684318";
	setAttr ".cuv" 3;
createNode polyPyramid -n "pasted__polyPyramid1";
	rename -uid "86A1EC5A-5842-BCF6-B4D8-9BB04FF0E1C1";
	setAttr ".cuv" 3;
createNode polyPyramid -n "pasted__polyPyramid2";
	rename -uid "6807AF11-B749-B350-8F63-E58E6756BA3C";
	setAttr ".cuv" 3;
createNode polyPyramid -n "pasted__polyPyramid4";
	rename -uid "F532E980-1C46-E5D6-E538-DA9CE724CFFF";
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "7CCA8E36-FD48-7D58-EDC8-6EA0E0AD625E";
	setAttr ".ics" -type "componentList" 4 "f[25:26]" "f[28:29]" "f[31:32]" "f[34:35]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.59254851677481146 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.1810986 0 ;
	setAttr ".rs" 1501611852;
	setAttr ".lt" -type "double3" 0 -5.1105969181501879e-18 0.10198391762377801 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.080690085887908936 1.1810986075646064 -0.080690085887908936 ;
	setAttr ".cbx" -type "double3" 0.080690085887908936 1.1810986075646064 0.080690085887908936 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "02A00EA7-D54B-20BF-FD60-9B9CC6CEE94F";
	setAttr ".uopa" yes;
	setAttr -s 26 ".tk[0:25]" -type "float3"  -0.14662659 0.41144994 0.084654957
		 -0.084654957 0.41144994 0.14662659 0 0.41144994 0.16930991 0.084654957 0.41144994
		 0.14662659 0.14662659 0.41144994 0.084654957 0.16930991 0.41144994 0 0.14662659 0.41144994
		 -0.084654957 0.084654957 0.41144994 -0.14662659 0 0.41144994 -0.16930991 -0.084654957
		 0.41144994 -0.14662659 -0.14662659 0.41144994 -0.084654957 -0.16930991 0.41144994
		 0 -0.14662659 -0.41144994 0.084654957 -0.084654957 -0.41144994 0.14662659 0 -0.41144994
		 0.16930991 0.084654957 -0.41144994 0.14662659 0.14662659 -0.41144994 0.084654957
		 0.16930991 -0.41144994 0 0.14662659 -0.41144994 -0.084654957 0.084654957 -0.41144994
		 -0.14662659 0 -0.41144994 -0.16930991 -0.084654957 -0.41144994 -0.14662659 -0.14662659
		 -0.41144994 -0.084654957 -0.16930991 -0.41144994 0 0 0.41144994 0 0 -0.41144994 0;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "59F3E29E-4E42-268F-E3DE-5CB7CC1170CE";
	setAttr ".ics" -type "componentList" 5 "vtx[25]" "vtx[28]" "vtx[32]" "vtx[36]" "vtx[40]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.59254851677481146 0 1;
createNode polyTweak -n "polyTweak2";
	rename -uid "CCDBD524-C747-9876-0B3C-388539E68E51";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[25]" -type "float3" 0 -0.069881916 4.8572257e-18 ;
	setAttr ".tk[28]" -type "float3" 0 -0.17186593 -9.0205617e-18 ;
	setAttr ".tk[32]" -type "float3" -6.9388939e-18 -0.17186595 -3.4694478e-19 ;
	setAttr ".tk[36]" -type "float3" 0 -0.17186593 4.8572257e-18 ;
	setAttr ".tk[40]" -type "float3" 6.9388939e-18 -0.17186593 -3.4694478e-19 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "7964CAF4-3540-1C64-33F3-138D84861D96";
	setAttr ".ics" -type "componentList" 8 "f[36]" "f[38]" "f[40]" "f[42]" "f[44]" "f[46]" "f[48]" "f[50]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.59254851677481146 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.2320906 0 ;
	setAttr ".rs" 47275921;
	setAttr ".lt" -type "double3" -5.5511151231257827e-17 -2.3370467311040173e-17 0.19083434772631264 ;
	setAttr ".ls" -type "double3" -0.27603111311813489 1 1 ;
	setAttr ".off" 0.039999999105930328;
	setAttr ".d" 10;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.080690085887908936 1.1810986075646064 -0.080690085887908936 ;
	setAttr ".cbx" -type "double3" 0.080690085887908936 1.2830826316124579 0.080690085887908936 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "7BA6F0A7-0145-755D-E290-2586FEA5887E";
	setAttr ".uopa" yes;
	setAttr ".tk[25]" -type "float3"  0 0.11503879 0;
createNode polyMergeVert -n "polyMergeVert2";
	rename -uid "46F3F041-9C40-8A06-B67E-E08D9F993F2A";
	setAttr ".ics" -type "componentList" 6 "vtx[227]" "vtx[237]" "vtx[247]" "vtx[257]" "vtx[267]" "vtx[277]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.59254851677481146 0 1;
createNode polyTweak -n "polyTweak4";
	rename -uid "7A9FDD1F-C24E-304B-96A4-669B5D1C8BB7";
	setAttr ".uopa" yes;
	setAttr -s 265 ".tk";
	setAttr ".tk[12]" -type "float3" -0.0053235893 0.011600192 2.910383e-11 ;
	setAttr ".tk[13]" -type "float3" 9.3132257e-10 0.011600199 0.0053235893 ;
	setAttr ".tk[14]" -type "float3" 0 0.024127787 0.011867993 ;
	setAttr ".tk[15]" -type "float3" 9.3132257e-10 0.011600199 0.0053235893 ;
	setAttr ".tk[16]" -type "float3" 0.0053235902 0.011600192 0 ;
	setAttr ".tk[17]" -type "float3" 0.011867998 0.024127753 0 ;
	setAttr ".tk[18]" -type "float3" 0.0053235912 0.011600195 0 ;
	setAttr ".tk[19]" -type "float3" 7.4214768e-10 0.011600192 -0.0053235907 ;
	setAttr ".tk[20]" -type "float3" -4.6202331e-10 0.024127757 -0.011867997 ;
	setAttr ".tk[21]" -type "float3" 3.5652192e-10 0.011600192 -0.0053235907 ;
	setAttr ".tk[22]" -type "float3" -0.0053235893 0.011600195 0 ;
	setAttr ".tk[23]" -type "float3" -0.011867994 0.024127753 0 ;
	setAttr ".tk[25]" -type "float3" 0 -1.1175871e-08 0 ;
	setAttr ".tk[26]" -type "float3" -0.00050622202 0.029502412 -0.00072674517 ;
	setAttr ".tk[27]" -type "float3" -9.3132257e-10 0.035907321 -0.0035247761 ;
	setAttr ".tk[28]" -type "float3" -0.00055096817 0.030255347 0.00050761527 ;
	setAttr ".tk[29]" -type "float3" -0.00072673877 0.029502412 0.00050622132 ;
	setAttr ".tk[30]" -type "float3" -0.0035247654 0.035907291 0 ;
	setAttr ".tk[31]" -type "float3" 0.00050762098 0.030255347 0.000550967 ;
	setAttr ".tk[32]" -type "float3" 0.00050622091 0.029502412 0.00072673912 ;
	setAttr ".tk[33]" -type "float3" -2.3646862e-10 0.035907298 0.0035247663 ;
	setAttr ".tk[34]" -type "float3" -0.00050622132 0.029502412 0.00072673912 ;
	setAttr ".tk[35]" -type "float3" -0.00050761551 0.030255347 0.000550967 ;
	setAttr ".tk[36]" -type "float3" 0.0035247745 0.035907283 0 ;
	setAttr ".tk[37]" -type "float3" -0.00050761551 0.03025534 -0.00055096787 ;
	setAttr ".tk[38]" -type "float3" 0 0.025999315 0.014803422 ;
	setAttr ".tk[39]" -type "float3" 0 0.043225296 0.023068007 ;
	setAttr ".tk[40]" -type "float3" 0 0.058582056 0.024554042 ;
	setAttr ".tk[41]" -type "float3" -3.7252903e-09 0.066141024 0.017434746 ;
	setAttr ".tk[42]" -type "float3" 3.7252903e-09 0.060181789 0.0051972987 ;
	setAttr ".tk[43]" -type "float3" 0 0.041135635 -0.0057433597 ;
	setAttr ".tk[44]" -type "float3" 0 0.014550813 -0.010166062 ;
	setAttr ".tk[45]" -type "float3" 3.7252903e-09 -0.014480265 -0.0062945597 ;
	setAttr ".tk[46]" -type "float3" 0 -0.043857019 0.0032171737 ;
	setAttr ".tk[47]" -type "float3" 0 -0.070161596 0.017660409 ;
	setAttr ".tk[48]" -type "float3" 0 0.040854666 0.020553552 ;
	setAttr ".tk[49]" -type "float3" 0 0.058126979 0.025226993 ;
	setAttr ".tk[50]" -type "float3" 3.7252903e-09 0.068830878 0.02270373 ;
	setAttr ".tk[51]" -type "float3" -3.7252903e-09 0.07068222 0.013177009 ;
	setAttr ".tk[52]" -type "float3" 0 0.062063824 0.00027937524 ;
	setAttr ".tk[53]" -type "float3" -3.7252903e-09 0.043964718 -0.010973187 ;
	setAttr ".tk[54]" -type "float3" 0 0.019574238 -0.016711248 ;
	setAttr ".tk[55]" -type "float3" -1.8626451e-09 -0.0072609326 -0.015459862 ;
	setAttr ".tk[56]" -type "float3" -1.8626451e-09 -0.033378668 -0.0078513743 ;
	setAttr ".tk[57]" -type "float3" 9.3132257e-10 -0.056824941 0.0043237498 ;
	setAttr ".tk[58]" -type "float3" -4.6566129e-10 0.04588398 -0.011239817 ;
	setAttr ".tk[59]" -type "float3" -9.3132257e-10 0.050851051 -0.022883238 ;
	setAttr ".tk[60]" -type "float3" 1.3969839e-09 0.049002454 -0.036751628 ;
	setAttr ".tk[61]" -type "float3" -1.3969839e-09 0.040170949 -0.050481644 ;
	setAttr ".tk[62]" -type "float3" -1.3969839e-09 0.025012881 -0.061221182 ;
	setAttr ".tk[63]" -type "float3" -1.8626451e-09 0.0050211013 -0.065932639 ;
	setAttr ".tk[64]" -type "float3" 9.3132257e-10 -0.018086812 -0.063373931 ;
	setAttr ".tk[65]" -type "float3" -9.3132257e-10 -0.042236749 -0.053650685 ;
	setAttr ".tk[66]" -type "float3" 9.3132257e-10 -0.062732562 -0.037828751 ;
	setAttr ".tk[67]" -type "float3" 0 -0.07880909 -0.017660409 ;
	setAttr ".tk[68]" -type "float3" -0.00017369911 0.039920088 -0.0048726024 ;
	setAttr ".tk[69]" -type "float3" 9.3132257e-10 0.047164071 -0.013815459 ;
	setAttr ".tk[70]" -type "float3" -9.3132257e-10 0.048561182 -0.027741786 ;
	setAttr ".tk[71]" -type "float3" 9.3132257e-10 0.040788867 -0.042506218 ;
	setAttr ".tk[72]" -type "float3" 0 0.025052924 -0.054794937 ;
	setAttr ".tk[73]" -type "float3" -9.3132257e-10 0.0029754399 -0.060177166 ;
	setAttr ".tk[74]" -type "float3" -9.3132257e-10 -0.022642046 -0.056621999 ;
	setAttr ".tk[75]" -type "float3" -9.3132257e-10 -0.049052462 -0.044409543 ;
	setAttr ".tk[76]" -type "float3" 1.8626451e-09 -0.073050365 -0.02677436 ;
	setAttr ".tk[77]" -type "float3" -1.8626451e-09 -0.092145681 -0.0043236911 ;
	setAttr ".tk[78]" -type "float3" 0.0002364439 0.026465354 0.014803422 ;
	setAttr ".tk[79]" -type "float3" 0.00028429282 0.044360261 0.023068007 ;
	setAttr ".tk[80]" -type "float3" 0 0.058582049 0.024554042 ;
	setAttr ".tk[81]" -type "float3" 0 0.066141024 0.017434746 ;
	setAttr ".tk[82]" -type "float3" 0 0.060181789 0.0051972987 ;
	setAttr ".tk[83]" -type "float3" 0 0.041135635 -0.0057433597 ;
	setAttr ".tk[84]" -type "float3" 0 0.014550813 -0.010166062 ;
	setAttr ".tk[85]" -type "float3" -1.7462298e-09 -0.014480265 -0.0062945597 ;
	setAttr ".tk[86]" -type "float3" 9.3132257e-10 -0.043857012 0.0032171737 ;
	setAttr ".tk[87]" -type "float3" 9.3132257e-10 -0.070161648 0.01766035 ;
	setAttr ".tk[88]" -type "float3" -0.00023263197 0.03923199 -0.0040543661 ;
	setAttr ".tk[89]" -type "float3" -1.6298145e-09 0.047164071 -0.013815459 ;
	setAttr ".tk[90]" -type "float3" 1.3969839e-09 0.048561182 -0.027741786 ;
	setAttr ".tk[91]" -type "float3" -9.3132257e-10 0.040788867 -0.042506218 ;
	setAttr ".tk[92]" -type "float3" 1.8626451e-09 0.025052939 -0.054794937 ;
	setAttr ".tk[93]" -type "float3" 1.8626451e-09 0.0029754399 -0.060177166 ;
	setAttr ".tk[94]" -type "float3" 3.7252903e-09 -0.022642046 -0.056621999 ;
	setAttr ".tk[95]" -type "float3" 0 -0.049052462 -0.044409543 ;
	setAttr ".tk[96]" -type "float3" 0 -0.073050365 -0.02677436 ;
	setAttr ".tk[97]" -type "float3" 0 -0.092145681 -0.0043236911 ;
	setAttr ".tk[98]" -type "float3" 0.014803427 0.025999319 0 ;
	setAttr ".tk[99]" -type "float3" 0.023068033 0.043225259 0 ;
	setAttr ".tk[100]" -type "float3" 0.024554055 0.058582049 0 ;
	setAttr ".tk[101]" -type "float3" 0.017434768 0.066141039 0 ;
	setAttr ".tk[102]" -type "float3" 0.0051973239 0.060181819 0 ;
	setAttr ".tk[103]" -type "float3" -0.0057433876 0.041135605 0 ;
	setAttr ".tk[104]" -type "float3" -0.010166088 0.014550813 0 ;
	setAttr ".tk[105]" -type "float3" -0.0062944605 -0.014480265 0 ;
	setAttr ".tk[106]" -type "float3" 0.0032172329 -0.043856915 0 ;
	setAttr ".tk[107]" -type "float3" 0.017660376 -0.070161574 0 ;
	setAttr ".tk[108]" -type "float3" 0.020553559 0.040854696 0 ;
	setAttr ".tk[109]" -type "float3" 0.025227005 0.058127008 0 ;
	setAttr ".tk[110]" -type "float3" 0.022703748 0.068830863 0 ;
	setAttr ".tk[111]" -type "float3" 0.013177026 0.070682265 0 ;
	setAttr ".tk[112]" -type "float3" 0.00027939695 0.062063824 0 ;
	setAttr ".tk[113]" -type "float3" -0.010973252 0.043964777 0 ;
	setAttr ".tk[114]" -type "float3" -0.016711149 0.019574208 0 ;
	setAttr ".tk[115]" -type "float3" -0.01545993 -0.0072608879 0 ;
	setAttr ".tk[116]" -type "float3" -0.0078514256 -0.033378609 0 ;
	setAttr ".tk[117]" -type "float3" 0.0043237205 -0.056824964 0 ;
	setAttr ".tk[118]" -type "float3" -0.01123983 0.045884017 0 ;
	setAttr ".tk[119]" -type "float3" -0.022883199 0.050851043 0 ;
	setAttr ".tk[120]" -type "float3" -0.036751606 0.049002454 0 ;
	setAttr ".tk[121]" -type "float3" -0.050481584 0.040170979 0 ;
	setAttr ".tk[122]" -type "float3" -0.0612211 0.025012895 0 ;
	setAttr ".tk[123]" -type "float3" -0.065932609 0.0050211609 0 ;
	setAttr ".tk[124]" -type "float3" -0.063373722 -0.018086782 0 ;
	setAttr ".tk[125]" -type "float3" -0.053650752 -0.042236734 0 ;
	setAttr ".tk[126]" -type "float3" -0.037828811 -0.062732488 0 ;
	setAttr ".tk[127]" -type "float3" -0.017660318 -0.078809015 0 ;
	setAttr ".tk[128]" -type "float3" -0.0048726131 0.039920103 0.00017369865 ;
	setAttr ".tk[129]" -type "float3" -0.013815413 0.047164042 0 ;
	setAttr ".tk[130]" -type "float3" -0.027741766 0.048561182 0 ;
	setAttr ".tk[131]" -type "float3" -0.042506199 0.040788881 0 ;
	setAttr ".tk[132]" -type "float3" -0.054794915 0.025052968 0 ;
	setAttr ".tk[133]" -type "float3" -0.060177203 0.0029754697 0 ;
	setAttr ".tk[134]" -type "float3" -0.056622032 -0.022642046 0 ;
	setAttr ".tk[135]" -type "float3" -0.044409443 -0.049052455 0 ;
	setAttr ".tk[136]" -type "float3" -0.026774298 -0.073050283 0 ;
	setAttr ".tk[137]" -type "float3" -0.0043237181 -0.092145704 0 ;
	setAttr ".tk[138]" -type "float3" 0.014803426 0.026465369 -0.00023644372 ;
	setAttr ".tk[139]" -type "float3" 0.023068035 0.044360254 -0.00028429891 ;
	setAttr ".tk[140]" -type "float3" 0.024554087 0.058582056 0 ;
	setAttr ".tk[141]" -type "float3" 0.017434729 0.066141039 0 ;
	setAttr ".tk[142]" -type "float3" 0.0051973262 0.060181804 0 ;
	setAttr ".tk[143]" -type "float3" -0.0057433313 0.041135635 0 ;
	setAttr ".tk[144]" -type "float3" -0.010166082 0.014550813 0 ;
	setAttr ".tk[145]" -type "float3" -0.0062944605 -0.014480265 0 ;
	setAttr ".tk[146]" -type "float3" 0.0032172319 -0.043856908 0 ;
	setAttr ".tk[147]" -type "float3" 0.017660376 -0.070161588 0 ;
	setAttr ".tk[148]" -type "float3" -0.0040543573 0.039231997 0.00023263266 ;
	setAttr ".tk[149]" -type "float3" -0.013815414 0.047164042 0 ;
	setAttr ".tk[150]" -type "float3" -0.027741764 0.048561182 0 ;
	setAttr ".tk[151]" -type "float3" -0.042506199 0.040788881 0 ;
	setAttr ".tk[152]" -type "float3" -0.054794911 0.025052968 0 ;
	setAttr ".tk[153]" -type "float3" -0.060177147 0.0029754697 0 ;
	setAttr ".tk[154]" -type "float3" -0.056622032 -0.022642046 0 ;
	setAttr ".tk[155]" -type "float3" -0.044409458 -0.049052432 0 ;
	setAttr ".tk[156]" -type "float3" -0.02677436 -0.073050298 0 ;
	setAttr ".tk[157]" -type "float3" -0.0043237153 -0.092145696 0 ;
	setAttr ".tk[158]" -type "float3" -8.4401108e-10 0.025999311 -0.014803426 ;
	setAttr ".tk[159]" -type "float3" -3.4124241e-09 0.043225281 -0.023068035 ;
	setAttr ".tk[160]" -type "float3" -1.1859811e-09 0.058582049 -0.024554087 ;
	setAttr ".tk[161]" -type "float3" -2.910383e-11 0.066141039 -0.017434768 ;
	setAttr ".tk[162]" -type "float3" -8.7311491e-10 0.060181804 -0.0051973243 ;
	setAttr ".tk[163]" -type "float3" -2.233719e-09 0.041135605 0.0057433732 ;
	setAttr ".tk[164]" -type "float3" -4.0745363e-10 0.014550813 0.01016609 ;
	setAttr ".tk[165]" -type "float3" -1.0841177e-09 -0.014480265 0.0062944707 ;
	setAttr ".tk[166]" -type "float3" -1.2369128e-10 -0.043856945 -0.0032172631 ;
	setAttr ".tk[167]" -type "float3" -4.9476512e-10 -0.070161611 -0.017660379 ;
	setAttr ".tk[168]" -type "float3" -1.0404619e-09 0.040854696 -0.020553559 ;
	setAttr ".tk[169]" -type "float3" 1.0550139e-09 0.058127001 -0.025227005 ;
	setAttr ".tk[170]" -type "float3" 3.6525307e-09 0.068830848 -0.022703748 ;
	setAttr ".tk[171]" -type "float3" -1.3533281e-09 0.07068225 -0.013176987 ;
	setAttr ".tk[172]" -type "float3" 8.2945917e-10 0.062063795 -0.00027949249 ;
	setAttr ".tk[173]" -type "float3" 9.6042641e-10 0.043964747 0.010973159 ;
	setAttr ".tk[174]" -type "float3" -1.8480932e-09 0.019574253 0.016711088 ;
	setAttr ".tk[175]" -type "float3" -7.1304385e-10 -0.0072609028 0.015459833 ;
	setAttr ".tk[176]" -type "float3" -8.7311491e-11 -0.033378623 0.0078514041 ;
	setAttr ".tk[177]" -type "float3" 1.7826096e-10 -0.056824956 -0.0043237209 ;
	setAttr ".tk[178]" -type "float3" 1.2732926e-09 0.045884017 0.011239804 ;
	setAttr ".tk[179]" -type "float3" -1.0477379e-09 0.050851081 0.022883222 ;
	setAttr ".tk[180]" -type "float3" -3.6525307e-09 0.049002424 0.036751606 ;
	setAttr ".tk[181]" -type "float3" 1.3533281e-09 0.040170979 0.050481666 ;
	setAttr ".tk[182]" -type "float3" -8.2945917e-10 0.025012895 0.0612211 ;
	setAttr ".tk[183]" -type "float3" 4.3655746e-10 0.0050211311 0.065932609 ;
	setAttr ".tk[184]" -type "float3" 1.8480932e-09 -0.018086782 0.063373782 ;
	setAttr ".tk[185]" -type "float3" 7.1304385e-10 -0.042236704 0.053650655 ;
	setAttr ".tk[186]" -type "float3" 8.7311491e-11 -0.062732518 0.037828781 ;
	setAttr ".tk[187]" -type "float3" -1.7826096e-10 -0.078809053 0.017660379 ;
	setAttr ".tk[188]" -type "float3" 0.00017369982 0.039920088 0.0048725926 ;
	setAttr ".tk[189]" -type "float3" -6.4028427e-10 0.047164056 0.013815414 ;
	setAttr ".tk[190]" -type "float3" 1.6007107e-10 0.048561182 0.027741726 ;
	setAttr ".tk[191]" -type "float3" 1.0622898e-09 0.040788881 0.042506196 ;
	setAttr ".tk[192]" -type "float3" 1.1641532e-09 0.025052954 0.054794911 ;
	setAttr ".tk[193]" -type "float3" 4.6784407e-09 0.0029754548 0.060177196 ;
	setAttr ".tk[194]" -type "float3" 1.4042598e-09 -0.022642031 0.056622028 ;
	setAttr ".tk[195]" -type "float3" 1.5279511e-10 -0.049052455 0.04440945 ;
	setAttr ".tk[196]" -type "float3" 1.2296368e-09 -0.073050305 0.02677427 ;
	setAttr ".tk[197]" -type "float3" -9.3859853e-10 -0.092145696 0.0043237209 ;
	setAttr ".tk[198]" -type "float3" -4.4383341e-10 0.025999311 -0.014803426 ;
	setAttr ".tk[199]" -type "float3" 2.750312e-09 0.043225281 -0.023068035 ;
	setAttr ".tk[200]" -type "float3" -1.0913936e-09 0.058582049 -0.024554087 ;
	setAttr ".tk[201]" -type "float3" -1.0622898e-09 0.066141039 -0.017434768 ;
	setAttr ".tk[202]" -type "float3" -1.1641532e-09 0.060181804 -0.0051973243 ;
	setAttr ".tk[203]" -type "float3" -4.6784407e-09 0.041135605 0.0057433732 ;
	setAttr ".tk[204]" -type "float3" -1.4042598e-09 0.014550813 0.01016609 ;
	setAttr ".tk[205]" -type "float3" -1.5279511e-10 -0.01448025 0.0062944707 ;
	setAttr ".tk[206]" -type "float3" -1.2296368e-09 -0.043856952 -0.0032172631 ;
	setAttr ".tk[207]" -type "float3" 9.3859853e-10 -0.070161618 -0.017660379 ;
	setAttr ".tk[208]" -type "float3" -0.00017369929 0.039920088 0.0048725926 ;
	setAttr ".tk[209]" -type "float3" 1.4551915e-10 0.047164056 0.013815414 ;
	setAttr ".tk[210]" -type "float3" 1.1859811e-09 0.048561197 0.027741726 ;
	setAttr ".tk[211]" -type "float3" 1.193257e-09 0.040788881 0.042506196 ;
	setAttr ".tk[212]" -type "float3" 8.7311491e-10 0.025052954 0.054794911 ;
	setAttr ".tk[213]" -type "float3" 2.233719e-09 0.0029754548 0.060177196 ;
	setAttr ".tk[214]" -type "float3" 4.0745363e-10 -0.022642031 0.056622028 ;
	setAttr ".tk[215]" -type "float3" 1.0841177e-09 -0.049052447 0.04440945 ;
	setAttr ".tk[216]" -type "float3" 1.2369128e-10 -0.073050313 0.02677427 ;
	setAttr ".tk[217]" -type "float3" 4.9476512e-10 -0.092145704 0.0043237209 ;
	setAttr ".tk[218]" -type "float3" -0.014803422 0.026465369 -0.00023644372 ;
	setAttr ".tk[219]" -type "float3" -0.023068026 0.044360261 -0.00028429891 ;
	setAttr ".tk[220]" -type "float3" -0.024554072 0.058582056 0 ;
	setAttr ".tk[221]" -type "float3" -0.017434707 0.066141024 0 ;
	setAttr ".tk[222]" -type "float3" -0.0051972992 0.060181804 0 ;
	setAttr ".tk[223]" -type "float3" 0.0057434086 0.041135605 0 ;
	setAttr ".tk[224]" -type "float3" 0.010166123 0.014550784 0 ;
	setAttr ".tk[225]" -type "float3" 0.0062945536 -0.014480295 0 ;
	setAttr ".tk[226]" -type "float3" -0.0032172024 -0.043856982 0 ;
	setAttr ".tk[227]" -type "float3" -0.006668333 -0.065716021 -0.025358398 ;
	setAttr ".tk[228]" -type "float3" -0.020553552 0.040854696 0 ;
	setAttr ".tk[229]" -type "float3" -0.025226992 0.058127016 0 ;
	setAttr ".tk[230]" -type "float3" -0.02270373 0.068830848 0 ;
	setAttr ".tk[231]" -type "float3" -0.013177005 0.070682265 0 ;
	setAttr ".tk[232]" -type "float3" -0.00027946683 0.062063765 0 ;
	setAttr ".tk[233]" -type "float3" 0.010973188 0.043964732 0 ;
	setAttr ".tk[234]" -type "float3" 0.016711175 0.019574208 0 ;
	setAttr ".tk[235]" -type "float3" 0.01545989 -0.0072609028 0 ;
	setAttr ".tk[236]" -type "float3" 0.0078514647 -0.033378623 0 ;
	setAttr ".tk[237]" -type "float3" 0.0066683274 -0.065716013 -5.1028901e-19 ;
	setAttr ".tk[238]" -type "float3" 0.011239817 0.045884017 0 ;
	setAttr ".tk[239]" -type "float3" 0.022883212 0.050851036 0 ;
	setAttr ".tk[240]" -type "float3" 0.036751632 0.049002424 0 ;
	setAttr ".tk[241]" -type "float3" 0.050481614 0.040170979 0 ;
	setAttr ".tk[242]" -type "float3" 0.061221134 0.025012881 0 ;
	setAttr ".tk[243]" -type "float3" 0.065932631 0.0050211311 0 ;
	setAttr ".tk[244]" -type "float3" 0.063373819 -0.018086797 0 ;
	setAttr ".tk[245]" -type "float3" 0.053650714 -0.042236734 0 ;
	setAttr ".tk[246]" -type "float3" 0.037828892 -0.062732555 0 ;
	setAttr ".tk[247]" -type "float3" 0.0066683292 -0.087700151 5.1028901e-19 ;
	setAttr ".tk[248]" -type "float3" 0.0040543666 0.039232004 0.00023263266 ;
	setAttr ".tk[249]" -type "float3" 0.013815429 0.047164042 0 ;
	setAttr ".tk[250]" -type "float3" 0.027741786 0.048561182 0 ;
	setAttr ".tk[251]" -type "float3" 0.042506266 0.040788867 0 ;
	setAttr ".tk[252]" -type "float3" 0.054794937 0.025052939 0 ;
	setAttr ".tk[253]" -type "float3" 0.060177237 0.0029754548 0 ;
	setAttr ".tk[254]" -type "float3" 0.056622062 -0.022642076 0 ;
	setAttr ".tk[255]" -type "float3" 0.044409536 -0.049052507 0 ;
	setAttr ".tk[256]" -type "float3" 0.02677433 -0.073050305 0 ;
	setAttr ".tk[257]" -type "float3" -0.0066683255 -0.087700151 -0.025358398 ;
	setAttr ".tk[258]" -type "float3" -0.014803422 0.026465362 0.00023644381 ;
	setAttr ".tk[259]" -type "float3" -0.023068026 0.044360232 0.00028429451 ;
	setAttr ".tk[260]" -type "float3" -0.024554042 0.058582049 0 ;
	setAttr ".tk[261]" -type "float3" -0.017434748 0.066141024 0 ;
	setAttr ".tk[262]" -type "float3" -0.0051972992 0.060181804 0 ;
	setAttr ".tk[263]" -type "float3" 0.0057434104 0.041135605 0 ;
	setAttr ".tk[264]" -type "float3" 0.010166123 0.014550784 0 ;
	setAttr ".tk[265]" -type "float3" 0.0062945536 -0.014480295 0 ;
	setAttr ".tk[266]" -type "float3" -0.0032172024 -0.043856982 0 ;
	setAttr ".tk[267]" -type "float3" -0.006668333 -0.065716021 0.025358398 ;
	setAttr ".tk[268]" -type "float3" 0.0040543666 0.039231997 -0.00023263282 ;
	setAttr ".tk[269]" -type "float3" 0.013815429 0.047164042 0 ;
	setAttr ".tk[270]" -type "float3" 0.027741786 0.048561167 0 ;
	setAttr ".tk[271]" -type "float3" 0.042506214 0.040788867 0 ;
	setAttr ".tk[272]" -type "float3" 0.054794934 0.025052939 0 ;
	setAttr ".tk[273]" -type "float3" 0.060177237 0.0029754548 0 ;
	setAttr ".tk[274]" -type "float3" 0.056622062 -0.022642076 0 ;
	setAttr ".tk[275]" -type "float3" 0.044409536 -0.049052507 0 ;
	setAttr ".tk[276]" -type "float3" 0.02677433 -0.073050313 0 ;
	setAttr ".tk[277]" -type "float3" -0.0066683255 -0.087700143 0.025358398 ;
createNode polyMergeVert -n "polyMergeVert3";
	rename -uid "72674B5B-5044-2E21-9AB9-D9AAAC032CE6";
	setAttr ".ics" -type "componentList" 6 "vtx[47]" "vtx[57]" "vtx[67]" "vtx[77]" "vtx[87]" "vtx[97]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.59254851677481146 0 1;
createNode polyTweak -n "polyTweak5";
	rename -uid "F043154D-974D-DD77-433D-489F37834C1C";
	setAttr ".uopa" yes;
	setAttr -s 41 ".tk";
	setAttr ".tk[12]" -type "float3" 0 2.3283064e-10 0 ;
	setAttr ".tk[13]" -type "float3" 0 -2.910383e-11 0 ;
	setAttr ".tk[21]" -type "float3" 0 -2.910383e-11 0 ;
	setAttr ".tk[22]" -type "float3" 0 2.3283064e-10 0 ;
	setAttr ".tk[23]" -type "float3" 0 -2.3283064e-10 0 ;
	setAttr ".tk[38]" -type "float3" 0 -7.2759576e-12 0 ;
	setAttr ".tk[47]" -type "float3" -0.025358383 0.0044455528 -0.01099208 ;
	setAttr ".tk[57]" -type "float3" -1.086543e-09 -0.0088911057 -0.01099208 ;
	setAttr ".tk[67]" -type "float3" -1.5522043e-10 -0.008891046 0.01099208 ;
	setAttr ".tk[77]" -type "float3" -0.025358381 0.0044455528 0.01099202 ;
	setAttr ".tk[87]" -type "float3" 0.025358383 0.0044456124 -0.01099202 ;
	setAttr ".tk[97]" -type "float3" 0.025358383 0.0044455528 0.01099202 ;
	setAttr ".tk[198]" -type "float3" 0 -7.2759576e-12 0 ;
	setAttr ".tk[218]" -type "float3" 0 -2.3283064e-10 0 ;
	setAttr ".tk[221]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[222]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[226]" -type "float3" 0 3.7252903e-09 0 ;
	setAttr ".tk[227]" -type "float3" 0 -7.4505806e-09 0 ;
	setAttr ".tk[229]" -type "float3" 0 -4.6566129e-10 0 ;
	setAttr ".tk[231]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[234]" -type "float3" 0 -1.8626451e-09 0 ;
	setAttr ".tk[235]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".tk[237]" -type "float3" 0 5.8207661e-11 0 ;
	setAttr ".tk[239]" -type "float3" 0 4.6566129e-10 0 ;
	setAttr ".tk[241]" -type "float3" 0 1.8626451e-09 0 ;
	setAttr ".tk[242]" -type "float3" 0 -1.8626451e-09 0 ;
	setAttr ".tk[244]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".tk[247]" -type "float3" 0 -2.3283064e-10 0 ;
	setAttr ".tk[248]" -type "float3" 0 -4.6566129e-10 0 ;
	setAttr ".tk[251]" -type "float3" 0 -1.8626451e-09 0 ;
	setAttr ".tk[252]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".tk[254]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".tk[255]" -type "float3" 0 -2.3283064e-10 0 ;
	setAttr ".tk[258]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[259]" -type "float3" 0 9.3132257e-10 0 ;
	setAttr ".tk[263]" -type "float3" 0 3.7252903e-09 0 ;
	setAttr ".tk[265]" -type "float3" 0 -2.3283064e-10 0 ;
	setAttr ".tk[266]" -type "float3" 0 -4.6566129e-10 0 ;
	setAttr ".tk[269]" -type "float3" 0 -1.8626451e-09 0 ;
	setAttr ".tk[270]" -type "float3" 0 -3.7252903e-09 0 ;
	setAttr ".tk[272]" -type "float3" 0 -3.7252903e-09 0 ;
createNode polyMergeVert -n "polyMergeVert4";
	rename -uid "D1BCC3D0-5840-C866-FE08-E497762E3177";
	setAttr ".ics" -type "componentList" 6 "vtx[102]" "vtx[112]" "vtx[122]" "vtx[132]" "vtx[142]" "vtx[152]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.59254851677481146 0 1;
createNode polyTweak -n "polyTweak6";
	rename -uid "31328A76-BE41-0C98-8557-AA829429FEDE";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[102]" -type "float3" -0.01099205 0.0044455528 0.025358398 ;
	setAttr ".tk[112]" -type "float3" -0.01099205 -0.008891046 -5.1028901e-19 ;
	setAttr ".tk[122]" -type "float3" 0.010991991 -0.0088911057 5.1028901e-19 ;
	setAttr ".tk[132]" -type "float3" 0.01099205 0.0044455528 0.025358398 ;
	setAttr ".tk[142]" -type "float3" -0.01099205 0.0044455528 -0.025358398 ;
	setAttr ".tk[152]" -type "float3" 0.01099205 0.0044455528 -0.025358398 ;
createNode polyMergeVert -n "polyMergeVert5";
	rename -uid "FB9F65FA-8245-E19E-6CAF-C988C5B0EA19";
	setAttr ".ics" -type "componentList" 6 "vtx[157]" "vtx[167]" "vtx[177]" "vtx[187]" "vtx[197]" "vtx[207]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.59254851677481146 0 1;
createNode polyTweak -n "polyTweak7";
	rename -uid "16584325-7E4B-A09E-8BC4-2983E5827913";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[157]" -type "float3" 0.025358383 0.0044455528 0.01099205 ;
	setAttr ".tk[167]" -type "float3" -1.7826096e-10 -0.008891046 0.01099205 ;
	setAttr ".tk[177]" -type "float3" 1.7826096e-10 -0.0088911057 -0.01099205 ;
	setAttr ".tk[187]" -type "float3" 0.025358384 0.0044455528 -0.01099205 ;
	setAttr ".tk[197]" -type "float3" -0.025358384 0.0044456124 0.01099205 ;
	setAttr ".tk[207]" -type "float3" -0.025358383 0.0044455528 -0.01099205 ;
createNode lambert -n "lambert2";
	rename -uid "133B641A-5E4D-4F52-1FF8-F59C77CB8303";
	setAttr ".c" -type "float3" 0.88919997 1 0 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "7E0A0E97-DC4B-E3DA-DD8C-42AF875381C4";
	setAttr ".ihi" 0;
	setAttr -s 10 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 10 ".gn";
createNode materialInfo -n "materialInfo1";
	rename -uid "97EF4802-D048-D7B1-690C-B3895FABA461";
createNode polyUnite -n "polyUnite1";
	rename -uid "E45D3C58-0F4F-560F-9A3A-C5BD61D4798C";
	setAttr -s 4 ".ip";
	setAttr -s 4 ".im";
createNode groupId -n "groupId1";
	rename -uid "604CE6DE-6E49-A374-885D-87871CA5BE89";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "AD026E9F-9348-D5EE-5544-EE951EE50CDE";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId2";
	rename -uid "51A81E58-4A4C-EF6B-9DDD-54B9DE9E6BED";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "BD9DCB98-7742-BC33-0A03-B0A66C322F6F";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "4D506036-0245-E588-CA4F-B0A9277844B4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId4";
	rename -uid "46CFA7D1-F645-7BB1-72CD-7EA14C13D356";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "F4E7BCA8-DE45-D4C5-0C39-4588E7E4EC6A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	rename -uid "F85333CD-A54A-F66E-EB0E-40A7099FDA5C";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId6";
	rename -uid "7D7E93DA-B24B-A2D6-040C-5E9F629E744A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	rename -uid "8909D006-BC4A-64EF-2458-55A0D9F7D51A";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "B010D6AC-2649-1E86-ECC7-8D94DAFD701F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:4]";
createNode groupId -n "groupId8";
	rename -uid "6F583A60-B847-20B5-E9EB-FA8EB0838B66";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	rename -uid "45DEFA88-DC4F-19AB-85DF-4888F30AD858";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	rename -uid "7B64AF2B-804F-298F-0311-19BEEA770F77";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:19]";
createNode polyUnite -n "polyUnite2";
	rename -uid "A834E181-074B-D265-C0FE-7B8F79671673";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId10";
	rename -uid "8C381081-8841-A6F0-8BAA-E9A93811D67C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	rename -uid "2E555AD4-9D42-7967-9DAE-D49160F83276";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:283]";
createNode groupId -n "groupId11";
	rename -uid "7C095DB6-354D-F9C3-F5D9-F0953F56C102";
	setAttr ".ihi" 0;
createNode groupId -n "groupId12";
	rename -uid "762CEAF4-D345-E09A-63A5-0A8C2EF36186";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "40D04BD8-804E-0B6A-719E-15894DFCB0C9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:283]";
createNode groupId -n "groupId13";
	rename -uid "031CCB71-F34D-F65F-2C8D-2A9388545931";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	rename -uid "55F39AF2-4841-8C5D-24C1-35B4EACE51E5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[284:303]";
createNode polyMergeVert -n "polyMergeVert6";
	rename -uid "6C59D268-144C-E21D-4D81-6482996D903A";
	setAttr ".ics" -type "componentList" 2 "vtx[212]" "vtx[277]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyMergeVert -n "polyMergeVert7";
	rename -uid "E8FE3507-9F45-F3A8-9B5A-068AF8238678";
	setAttr ".ics" -type "componentList" 2 "vtx[157]" "vtx[272]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyMergeVert -n "polyMergeVert8";
	rename -uid "3B1CF97A-EF40-5C1B-045C-6DA26E4CDED8";
	setAttr ".ics" -type "componentList" 2 "vtx[47]" "vtx[262]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyMergeVert -n "polyMergeVert9";
	rename -uid "E4433309-5C42-E883-1871-FDB012722563";
	setAttr ".ics" -type "componentList" 2 "vtx[102]" "vtx[266]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "4149041C-2C45-F080-B3BF-A9A426BAAA1C";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 558\n                -height 294\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 558\n            -height 294\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 558\n                -height 294\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 558\n            -height 294\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 558\n                -height 294\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 558\n            -height 294\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1122\n                -height 633\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1122\n            -height 633\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n"
		+ "                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n"
		+ "                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n"
		+ "                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1122\\n    -height 633\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1122\\n    -height 633\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "5C7C74B2-414E-4808-4952-08B484370F61";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "67C478B6-FA4B-F394-CAB0-72BB6477BB14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[24:35]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.56794548034667969;
	setAttr ".dr" no;
	setAttr ".re" 29;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyMirror -n "polyMirror1";
	rename -uid "A5ED5C7B-1742-B643-F768-8B8D916DACE9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[284:303]";
	setAttr ".ix" -type "matrix" 1.7044239652665925 0 0 0 0 1.7044239652665925 0 0 0 0 1.7044239652665925 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".p" -type "double3" 0 0.0068148143173495327 0 ;
	setAttr ".d" 3;
createNode polyTweak -n "polyTweak8";
	rename -uid "549D8C50-1348-5DF3-874D-6687F9906747";
	setAttr ".uopa" yes;
	setAttr -s 286 ".tk";
	setAttr ".tk[0:165]" -type "float3"  -0.022404967 -8.9406967e-08 0.012935508
		 -0.012935508 -8.9406967e-08 0.022404967 0 -8.9406967e-08 0.025871016 0.012935508
		 -8.9406967e-08 0.022404967 0.022404967 -8.9406967e-08 0.012935508 0.025871016 -8.9406967e-08
		 0 0.022404967 -8.9406967e-08 -0.012935508 0.012935508 -8.9406967e-08 -0.022404967
		 0 -8.9406967e-08 -0.025871016 -0.012935508 -8.9406967e-08 -0.022404967 -0.022404967
		 -8.9406967e-08 -0.012935508 -0.025871016 -8.9406967e-08 0 -0.020698121 -8.9406967e-08
		 0.012935508 -0.012935508 -8.9406967e-08 0.020698121 0 8.9406967e-08 0.02206588 0.012935508
		 -8.9406967e-08 0.020698121 0.020698121 -8.9406967e-08 0.012935508 0.022065878 8.9406967e-08
		 0 0.020698121 -8.9406967e-08 -0.012935508 0.012935508 -8.9406967e-08 -0.020698121
		 1.4813485e-10 8.9406967e-08 -0.022065878 -0.012935508 -8.9406967e-08 -0.020698121
		 -0.020698121 -8.9406967e-08 -0.012935508 -0.02206588 8.9406967e-08 0 0 0 0 0 0 -1.5573331e-18
		 -0.012773207 0 0.022637991 2.9860248e-10 0 0.027001131 0.013112155 0 0.022242229
		 0.022637991 0 0.012773207 0.027001128 0 -1.6685714e-18 0.022242228 0 -0.013112155
		 0.012773207 0 -0.022637991 7.5817033e-11 0 -0.027001128 -0.012773207 0 -0.022637991
		 -0.022242229 0 -0.013112155 -0.027001131 0 -1.6685714e-18 -0.022242229 0 0.013112155
		 -0.012454996 0 0.024121853 -0.011974492 0 0.027935192 -0.011493997 0 0.033921879
		 -0.011013486 0 0.042667631 -0.010532977 0 0.053054415 -0.010052473 0 0.063025363
		 -0.0095719732 0 0.070906542 -0.0090914695 0 0.076128393 -0.0086109601 0 0.079541884
		 2.587007e-11 0 0.084898509 0 0 0.024970042 0 0 0.029160582 -1.1944099e-09 0 0.035658538
		 1.1944099e-09 0 0.044401959 0 0 0.054226156 1.1944099e-09 0 0.06352295 0 0 0.071051627
		 5.9720495e-10 0 0.076339364 5.9720495e-10 0 0.07958889 1.4930124e-10 0 0.035163693
		 2.9860248e-10 0 0.044585772 -4.4790371e-10 0 0.054721281 4.4790371e-10 0 0.064812317
		 4.4790371e-10 0 0.073944613 5.9720495e-10 0 0.081144139 -2.9860248e-10 0 0.086012729
		 2.9860248e-10 0 0.088584207 -2.9860248e-10 0 0.089200281 -0.01239931 0 0.030430403
		 -0.011974492 0 0.039760835 -0.011493997 0 0.050689083 -0.011013486 0 0.061886027
		 -0.01053298 0 0.072289221 -0.010052473 0 0.08047802 -0.0095719723 0 0.085801303 -0.0090914676
		 0 0.088348933 -0.0086109601 0 0.08915782 0.01237919 0 0.024121853 0.011883347 0 0.027935192
		 0.011493997 0 0.033921879 0.011013486 0 0.042667631 0.01053298 0 0.053054415 0.010052473
		 0 0.063025363 0.0095719732 0 0.070906542 0.0090914685 0 0.076128393 0.0086109601
		 0 0.079541884 0.012529586 0 0.030168053 0.011974492 0 0.039760835 0.011493997 0 0.050689083
		 0.011013486 0 0.061886027 0.01053298 0 0.072289221 0.010052471 0 0.08047802 0.0095719704
		 0 0.085801303 0.0090914676 0 0.088348933 0.0086109601 0 0.08915782 0.024121853 0
		 0.012454996 0.027935185 0 0.011974494 0.033921875 0 0.011493997 0.042667624 0 0.011013489
		 0.053054385 0 0.010532981 0.063025363 0 0.010052474 0.070906557 0 0.0095719788 0.076128341
		 0 0.0090914741 0.079541832 0 0.0086109648 0.084898509 0 0 0.024970038 0 -1.6360978e-20
		 0.029160576 0 -3.2721956e-20 0.035658538 0 -4.9082959e-20 0.044401951 0 -6.5443913e-20
		 0.054226149 0 -8.1804931e-20 0.063522965 0 -9.8165918e-20 0.071051598 0 -1.1452687e-19
		 0.076339386 0 -1.3088783e-19 0.079588905 0 -1.4724885e-19 0.035163693 0 1.6360978e-20
		 0.044585753 0 3.2721956e-20 0.054721251 0 4.9082959e-20 0.064812243 0 6.5443913e-20
		 0.073944584 0 8.1804931e-20 0.081144132 0 9.8165918e-20 0.086012676 0 1.1452687e-19
		 0.088584214 0 1.3088783e-19 0.089200303 0 1.4724885e-19 0.03043041 0 0.01239931 0.039760821
		 0 0.011974494 0.050689068 0 0.011493997 0.061886027 0 0.011013489 0.072289214 0 0.010532981
		 0.08047802 0 0.010052474 0.085801311 0 0.0095719788 0.088348873 0 0.0090914741 0.089157797
		 0 0.0086109648 0.024121853 0 -0.01237919 0.027935185 0 -0.011883347 0.033921868 0
		 -0.011493997 0.042667639 0 -0.011013489 0.053054385 0 -0.010532981 0.063025348 0
		 -0.010052474 0.07090655 0 -0.0095719788 0.076128341 0 -0.0090914741 0.079541832 0
		 -0.0086109648 0.030168049 0 -0.012529586 0.039760821 0 -0.011974494 0.050689068 0
		 -0.011493997 0.061886027 0 -0.011013489 0.072289199 0 -0.010532981 0.080478005 0
		 -0.010052474 0.085801311 0 -0.0095719788 0.088348873 0 -0.0090914741 0.089157812
		 0 -0.0086109648 0.012454996 0 -0.024121853 0.011974493 0 -0.027935185 0.011493997
		 0 -0.033921868 0.011013486 0 -0.042667624 0.01053298 0 -0.053054385 0.010052474 0
		 -0.063025363 0.0095719732 0 -0.070906557 0.0090914685 0 -0.076128341 0.0086109601
		 0 -0.079541832 0 0 -0.084898509 3.3359487e-10 0 -0.024970038 -3.3826064e-10 0 -0.029160576
		 -1.1710815e-09 0 -0.035658538 4.3390663e-10 0 -0.044401966 -2.6594274e-10 0 -0.054226138
		 -3.079339e-10 0 -0.063522942 5.925393e-10 0 -0.07105159 2.2861764e-10 0 -0.076339357;
	setAttr ".tk[166:285]" 2.7993982e-11 0 -0.079588905 -4.0824538e-10 0 -0.035163689
		 3.3592787e-10 0 -0.044585768 1.1710815e-09 0 -0.054721251 -4.3390663e-10 0 -0.06481231
		 2.6594274e-10 0 -0.073944584 -1.399699e-10 0 -0.081144132 -5.925393e-10 0 -0.086012684
		 -2.2861764e-10 0 -0.088584207 -2.7993982e-11 0 -0.089200303 0.01239931 0 -0.030430399
		 0.011974492 0 -0.039760821 0.011493997 0 -0.05068906 0.011013486 0 -0.061886027 0.01053298
		 0 -0.072289199 0.010052471 0 -0.080478027 0.0095719723 0 -0.085801311 0.0090914676
		 0 -0.088348873 0.0086109592 0 -0.089157797 -0.012454996 0 -0.024121853 -0.011974493
		 0 -0.027935185 -0.011493997 0 -0.033921868 -0.011013486 0 -0.042667624 -0.01053298
		 0 -0.053054385 -0.010052471 0 -0.063025363 -0.0095719723 0 -0.070906557 -0.0090914676
		 0 -0.076128341 -0.0086109592 0 -0.079541832 -0.01239931 0 -0.030430399 -0.011974492
		 0 -0.039760821 -0.011493997 0 -0.05068906 -0.011013486 0 -0.061886027 -0.01053298
		 0 -0.072289199 -0.010052474 0 -0.080478027 -0.0095719732 0 -0.085801311 -0.0090914685
		 0 -0.088348873 -0.0086109601 0 -0.089157797 -0.024121853 0 -0.01237919 -0.027935185
		 0 -0.011883347 -0.033921871 0 -0.011493997 -0.04266765 0 -0.011013489 -0.053054415
		 0 -0.010532981 -0.06302537 0 -0.010052474 -0.070906572 0 -0.0095719788 -0.076128386
		 0 -0.0090914741 -0.079541847 0 -0.0086109648 -0.084898509 0 0 -0.024970042 0 -1.6360978e-20
		 -0.029160576 0 -3.2721956e-20 -0.035658538 0 -4.9082959e-20 -0.044401955 0 -6.5443913e-20
		 -0.054226138 0 -8.1804931e-20 -0.06352295 0 -9.8165918e-20 -0.071051598 0 -1.1452687e-19
		 -0.076339364 0 -1.3088783e-19 -0.07958892 0 -1.4724885e-19 -0.035163693 0 1.6360978e-20
		 -0.044585757 0 3.2721956e-20 -0.054721281 0 4.9082959e-20 -0.064812273 0 6.5443913e-20
		 -0.073944598 0 8.1804931e-20 -0.081144139 0 9.8165918e-20 -0.086012714 0 1.1452687e-19
		 -0.088584207 0 1.3088783e-19 -0.08920034 0 1.4724885e-19 -0.030168053 0 -0.012529586
		 -0.039760824 0 -0.011974494 -0.050689083 0 -0.011493997 -0.061886042 0 -0.011013489
		 -0.072289221 0 -0.010532981 -0.080478042 0 -0.010052474 -0.085801326 0 -0.0095719788
		 -0.088348933 0 -0.0090914741 -0.089157805 0 -0.0086109648 -0.024121853 0 0.01237919
		 -0.027935185 0 0.011883349 -0.033921879 0 0.011493997 -0.042667631 0 0.011013489
		 -0.053054415 0 0.010532981 -0.06302537 0 0.010052474 -0.070906572 0 0.0095719788
		 -0.076128386 0 0.0090914741 -0.079541847 0 0.0086109648 -0.030168053 0 0.012529586
		 -0.039760824 0 0.011974494 -0.050689083 0 0.011493997 -0.061886027 0 0.011013489
		 -0.072289221 0 0.010532981 -0.080478042 0 0.010052474 -0.085801326 0 0.0095719788
		 -0.088348933 0 0.0090914741 -0.089157805 0 0.0086109648 -5.2797295e-09 0 0.12516053
		 0.040262062 0 0.084898509 1.7599102e-09 0 0.044636454 -0.040262062 0 0.084898509
		 0.084898502 0 0.040262062 0.12516053 0 3.5198204e-09 0.084898509 0 -0.040262062 0.044636454
		 0 0 -5.2797295e-09 0 -0.044636454 0.040262062 0 -0.084898509 1.7599102e-09 0 -0.12516053
		 -0.040262062 0 -0.084898509 -0.084898517 0 0.040262062 -0.044636454 0 3.5198204e-09
		 -0.084898509 0 -0.040262062 -0.12516053 0 0 0.031280857 0 5.24777e-13 0.028280275
		 0 0.017066022 0.017066022 0 0.028280275 0 0 0.031280857 -0.017066022 0 0.028280275
		 -0.028280275 0 0.017066022 -0.031280857 0 0 -0.028280275 0 -0.017066022 -0.017066022
		 0 -0.028280275 1.1099735e-10 0 -0.031280857 0.017066022 0 -0.028280275 0.028280275
		 0 -0.017066022;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "8D2F4A54-DD48-10DB-A88A-B385743A0FDF";
	setAttr ".dc" -type "componentList" 1 "f[316:327]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "7D1BE433-A240-EE37-2120-F7AA25B87569";
	setAttr ".dc" -type "componentList" 1 "f[608:619]";
createNode deleteComponent -n "deleteComponent3";
	rename -uid "01C81EB3-534C-3B86-786F-C19DDB3ECFE0";
	setAttr ".dc" -type "componentList" 3 "f[328:459]" "f[461:479]" "f[481:587]";
createNode deleteComponent -n "deleteComponent4";
	rename -uid "F83016B7-434A-FAAC-9810-D79D3DD3244E";
	setAttr ".dc" -type "componentList" 1 "f[328:329]";
createNode polyMirror -n "polyMirror2";
	rename -uid "0A8A195F-B945-5244-F1F3-F8922E287ADC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1.7044239652665925 0 0 0 0 1.7044239652665925 0 0 0 0 1.7044239652665925 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".p" -type "double3" 0 0.0068146611362877802 0 ;
	setAttr ".d" 3;
createNode polyTweak -n "polyTweak9";
	rename -uid "032E2E1F-6542-D2FF-3A65-B890F00215EA";
	setAttr ".uopa" yes;
	setAttr -s 318 ".tk";
	setAttr ".tk[0]" -type "float3" 1.8626451e-09 0 0 ;
	setAttr ".tk[1]" -type "float3" 1.8626451e-09 0 0 ;
	setAttr ".tk[3]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".tk[5]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".tk[6]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".tk[7]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".tk[9]" -type "float3" 1.8626451e-09 0 0 ;
	setAttr ".tk[10]" -type "float3" 1.8626451e-09 0 0 ;
	setAttr ".tk[11]" -type "float3" 1.8626451e-09 0 0 ;
	setAttr ".tk[12]" -type "float3" 2.2351742e-08 0 0 ;
	setAttr ".tk[16]" -type "float3" -2.2351742e-08 0 0 ;
	setAttr ".tk[17]" -type "float3" -7.4505806e-09 0 0 ;
	setAttr ".tk[18]" -type "float3" -2.2351742e-08 0 0 ;
	setAttr ".tk[22]" -type "float3" 2.2351742e-08 0 0 ;
	setAttr ".tk[23]" -type "float3" 7.4505806e-09 0 0 ;
	setAttr ".tk[26]" -type "float3" 1.1175871e-08 0 0 ;
	setAttr ".tk[28]" -type "float3" -1.1175871e-08 0 0 ;
	setAttr ".tk[30]" -type "float3" -1.4901161e-08 0 0 ;
	setAttr ".tk[31]" -type "float3" -1.4901161e-08 0 0 ;
	setAttr ".tk[32]" -type "float3" -1.1175871e-08 0 0 ;
	setAttr ".tk[34]" -type "float3" 1.1175871e-08 0 0 ;
	setAttr ".tk[35]" -type "float3" 7.4505806e-09 0 0 ;
	setAttr ".tk[36]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[37]" -type "float3" -7.4505806e-09 0 0 ;
	setAttr ".tk[38]" -type "float3" 3.7252903e-09 0 0 ;
	setAttr ".tk[39]" -type "float3" 1.1175871e-08 0 -0.00047513787 ;
	setAttr ".tk[40]" -type "float3" 1.8626451e-08 0 -0.00264989 ;
	setAttr ".tk[41]" -type "float3" -1.8626451e-09 0 -0.0062050698 ;
	setAttr ".tk[42]" -type "float3" -5.5879354e-09 0 -0.011085203 ;
	setAttr ".tk[43]" -type "float3" -1.8626451e-09 0 -0.018088553 ;
	setAttr ".tk[44]" -type "float3" 0 0 -0.0266225 ;
	setAttr ".tk[45]" -type "float3" 1.4668331e-08 0 -0.035161726 ;
	setAttr ".tk[46]" -type "float3" 7.5087883e-09 0 -0.042909075 ;
	setAttr ".tk[47]" -type "float3" 0 0 -0.058670849 ;
	setAttr ".tk[49]" -type "float3" 0 0 -0.001017692 ;
	setAttr ".tk[50]" -type "float3" 0 0 -0.0032064638 ;
	setAttr ".tk[51]" -type "float3" 0 0 -0.0064520002 ;
	setAttr ".tk[52]" -type "float3" 0 0 -0.011160977 ;
	setAttr ".tk[53]" -type "float3" 0 0 -0.017650189 ;
	setAttr ".tk[54]" -type "float3" 0 0 -0.025446929 ;
	setAttr ".tk[55]" -type "float3" 0 0 -0.033406872 ;
	setAttr ".tk[56]" -type "float3" 0 0 -0.040413935 ;
	setAttr ".tk[59]" -type "float3" 0 0 -0.00086090504 ;
	setAttr ".tk[60]" -type "float3" 0 0 -0.0034368497 ;
	setAttr ".tk[61]" -type "float3" 0 0 -0.0083003649 ;
	setAttr ".tk[62]" -type "float3" 0 0 -0.01533707 ;
	setAttr ".tk[63]" -type "float3" 0 0 -0.023878444 ;
	setAttr ".tk[64]" -type "float3" 0 0 -0.032845326 ;
	setAttr ".tk[65]" -type "float3" 0 0 -0.040288415 ;
	setAttr ".tk[66]" -type "float3" -1.1175871e-08 0 0 ;
	setAttr ".tk[67]" -type "float3" -1.8626451e-09 0 -0.0001188649 ;
	setAttr ".tk[68]" -type "float3" 7.4505806e-09 0 -0.0012038193 ;
	setAttr ".tk[69]" -type "float3" -7.4505806e-09 0 -0.0039301896 ;
	setAttr ".tk[70]" -type "float3" 1.3038516e-08 0 -0.0088277981 ;
	setAttr ".tk[71]" -type "float3" 6.519258e-09 0 -0.01606985 ;
	setAttr ".tk[72]" -type "float3" -3.259629e-09 0 -0.025043104 ;
	setAttr ".tk[73]" -type "float3" 2.3283064e-10 0 -0.034508176 ;
	setAttr ".tk[74]" -type "float3" -7.3923729e-09 0 -0.042757981 ;
	setAttr ".tk[75]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".tk[76]" -type "float3" -2.6077032e-08 0 -0.0005299857 ;
	setAttr ".tk[77]" -type "float3" -1.8626451e-08 0 -0.00264989 ;
	setAttr ".tk[78]" -type "float3" 1.8626451e-09 0 -0.0062050698 ;
	setAttr ".tk[79]" -type "float3" 5.5879354e-09 0 -0.011085203 ;
	setAttr ".tk[80]" -type "float3" 1.8626451e-09 0 -0.018088553 ;
	setAttr ".tk[81]" -type "float3" 0 0 -0.0266225 ;
	setAttr ".tk[82]" -type "float3" -7.21775e-09 0 -0.035161726 ;
	setAttr ".tk[83]" -type "float3" -2.2351742e-08 0 -0.042909075 ;
	setAttr ".tk[84]" -type "float3" 1.1175871e-08 0 0 ;
	setAttr ".tk[85]" -type "float3" 1.8626451e-09 0 -0.0001188649 ;
	setAttr ".tk[86]" -type "float3" -7.4505806e-09 0 -0.0012038193 ;
	setAttr ".tk[87]" -type "float3" -2.9802322e-08 0 -0.0039301896 ;
	setAttr ".tk[88]" -type "float3" -1.3038516e-08 0 -0.0088277981 ;
	setAttr ".tk[89]" -type "float3" 6.519258e-09 0 -0.01606985 ;
	setAttr ".tk[90]" -type "float3" -4.1909516e-09 0 -0.025043104 ;
	setAttr ".tk[91]" -type "float3" -2.3283064e-10 0 -0.034508176 ;
	setAttr ".tk[92]" -type "float3" 7.3923729e-09 0 -0.042757981 ;
	setAttr ".tk[93]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[94]" -type "float3" -0.0005299786 0 0 ;
	setAttr ".tk[95]" -type "float3" -0.0026499196 0 0 ;
	setAttr ".tk[96]" -type "float3" -0.0062050661 0 0 ;
	setAttr ".tk[97]" -type "float3" -0.011085248 0 0 ;
	setAttr ".tk[98]" -type "float3" -0.01808854 0 0 ;
	setAttr ".tk[99]" -type "float3" -0.026622539 0 0 ;
	setAttr ".tk[100]" -type "float3" -0.035161734 0 0 ;
	setAttr ".tk[101]" -type "float3" -0.042909078 0 0 ;
	setAttr ".tk[102]" -type "float3" -0.058670834 0 0 ;
	setAttr ".tk[103]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".tk[104]" -type "float3" -0.0010176842 0 0 ;
	setAttr ".tk[105]" -type "float3" -0.0032064866 0 0 ;
	setAttr ".tk[106]" -type "float3" -0.0064519732 0 0 ;
	setAttr ".tk[107]" -type "float3" -0.011160913 0 0 ;
	setAttr ".tk[108]" -type "float3" -0.017650178 0 0 ;
	setAttr ".tk[109]" -type "float3" -0.025446914 0 0 ;
	setAttr ".tk[110]" -type "float3" -0.033406876 0 0 ;
	setAttr ".tk[111]" -type "float3" -0.040413879 0 0 ;
	setAttr ".tk[112]" -type "float3" 2.9802322e-08 0 0 ;
	setAttr ".tk[113]" -type "float3" -1.4901161e-08 0 0 ;
	setAttr ".tk[114]" -type "float3" -0.00086093449 0 0 ;
	setAttr ".tk[115]" -type "float3" -0.0034368492 0 0 ;
	setAttr ".tk[116]" -type "float3" -0.0083003482 0 0 ;
	setAttr ".tk[117]" -type "float3" -0.01533706 0 0 ;
	setAttr ".tk[118]" -type "float3" -0.023878461 0 0 ;
	setAttr ".tk[119]" -type "float3" -0.032845326 0 0 ;
	setAttr ".tk[120]" -type "float3" -0.040288392 0 0 ;
	setAttr ".tk[121]" -type "float3" 7.4505806e-09 0 0 ;
	setAttr ".tk[122]" -type "float3" -0.00011884954 0 0 ;
	setAttr ".tk[123]" -type "float3" -0.0012037818 0 0 ;
	setAttr ".tk[124]" -type "float3" -0.0039301808 0 0 ;
	setAttr ".tk[125]" -type "float3" -0.0088277971 0 0 ;
	setAttr ".tk[126]" -type "float3" -0.016069861 0 0 ;
	setAttr ".tk[127]" -type "float3" -0.025043162 0 0 ;
	setAttr ".tk[128]" -type "float3" -0.034508135 0 0 ;
	setAttr ".tk[129]" -type "float3" -0.04275794 0 0 ;
	setAttr ".tk[130]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[131]" -type "float3" -0.0005299786 0 0 ;
	setAttr ".tk[132]" -type "float3" -0.0026499196 0 0 ;
	setAttr ".tk[133]" -type "float3" -0.0062050661 0 0 ;
	setAttr ".tk[134]" -type "float3" -0.011085248 0 0 ;
	setAttr ".tk[135]" -type "float3" -0.01808854 0 0 ;
	setAttr ".tk[136]" -type "float3" -0.026622539 0 0 ;
	setAttr ".tk[137]" -type "float3" -0.035161734 0 0 ;
	setAttr ".tk[138]" -type "float3" -0.042909078 0 0 ;
	setAttr ".tk[139]" -type "float3" 7.4505806e-09 0 0 ;
	setAttr ".tk[140]" -type "float3" -0.00011884954 0 0 ;
	setAttr ".tk[141]" -type "float3" -0.0012037818 0 0 ;
	setAttr ".tk[142]" -type "float3" -0.0039301808 0 0 ;
	setAttr ".tk[143]" -type "float3" -0.0088277971 0 0 ;
	setAttr ".tk[144]" -type "float3" -0.016069861 0 0 ;
	setAttr ".tk[145]" -type "float3" -0.025043162 0 0 ;
	setAttr ".tk[146]" -type "float3" -0.034508135 0 0 ;
	setAttr ".tk[147]" -type "float3" -0.04275794 0 0 ;
	setAttr ".tk[148]" -type "float3" -3.7252903e-09 0 0 ;
	setAttr ".tk[149]" -type "float3" -2.6077032e-08 0 0.0005299857 ;
	setAttr ".tk[150]" -type "float3" -1.8626451e-08 0 0.002649897 ;
	setAttr ".tk[151]" -type "float3" 1.8626451e-09 0 0.0062050801 ;
	setAttr ".tk[152]" -type "float3" 5.5879354e-09 0 0.011085203 ;
	setAttr ".tk[153]" -type "float3" 1.8626451e-09 0 0.018088566 ;
	setAttr ".tk[154]" -type "float3" 0 0 0.0266225 ;
	setAttr ".tk[155]" -type "float3" -7.21775e-09 0 0.035161726 ;
	setAttr ".tk[156]" -type "float3" -2.2351742e-08 0 0.042909075 ;
	setAttr ".tk[157]" -type "float3" 0 0 0.058670849 ;
	setAttr ".tk[159]" -type "float3" 0 0 0.001017692 ;
	setAttr ".tk[160]" -type "float3" 0 0 0.0032064638 ;
	setAttr ".tk[161]" -type "float3" 0 0 0.0064520002 ;
	setAttr ".tk[162]" -type "float3" 0 0 0.011160977 ;
	setAttr ".tk[163]" -type "float3" 0 0 0.017650189 ;
	setAttr ".tk[164]" -type "float3" 0 0 0.025446929 ;
	setAttr ".tk[165]" -type "float3" 0 0 0.033406872 ;
	setAttr ".tk[166]" -type "float3" 0 0 0.040413935 ;
	setAttr ".tk[169]" -type "float3" 0 0 0.00086090504 ;
	setAttr ".tk[170]" -type "float3" 0 0 0.0034368497 ;
	setAttr ".tk[171]" -type "float3" 0 0 0.0083003649 ;
	setAttr ".tk[172]" -type "float3" 0 0 0.01533707 ;
	setAttr ".tk[173]" -type "float3" 0 0 0.023878444 ;
	setAttr ".tk[174]" -type "float3" 0 0 0.032845326 ;
	setAttr ".tk[175]" -type "float3" 0 0 0.040288415 ;
	setAttr ".tk[177]" -type "float3" 1.8626451e-09 0 0.0001188649 ;
	setAttr ".tk[178]" -type "float3" -7.4505806e-09 0 0.0012038193 ;
	setAttr ".tk[179]" -type "float3" -2.9802322e-08 0 0.0039301896 ;
	setAttr ".tk[180]" -type "float3" -1.3038516e-08 0 0.0088277906 ;
	setAttr ".tk[181]" -type "float3" 6.519258e-09 0 0.01606985 ;
	setAttr ".tk[182]" -type "float3" -4.1909516e-09 0 0.025043104 ;
	setAttr ".tk[183]" -type "float3" -2.3283064e-10 0 0.034508176 ;
	setAttr ".tk[184]" -type "float3" 7.3923729e-09 0 0.042757981 ;
	setAttr ".tk[185]" -type "float3" 3.7252903e-09 0 0 ;
	setAttr ".tk[186]" -type "float3" 1.1175871e-08 0 0.00047513787 ;
	setAttr ".tk[187]" -type "float3" 1.8626451e-08 0 0.002649897 ;
	setAttr ".tk[188]" -type "float3" -1.8626451e-09 0 0.0062050801 ;
	setAttr ".tk[189]" -type "float3" -5.5879354e-09 0 0.011085203 ;
	setAttr ".tk[190]" -type "float3" -1.8626451e-09 0 0.018088566 ;
	setAttr ".tk[191]" -type "float3" 0 0 0.0266225 ;
	setAttr ".tk[192]" -type "float3" 1.4668331e-08 0 0.035161726 ;
	setAttr ".tk[193]" -type "float3" 7.5087883e-09 0 0.042909075 ;
	setAttr ".tk[195]" -type "float3" -1.8626451e-09 0 0.0001188649 ;
	setAttr ".tk[196]" -type "float3" 7.4505806e-09 0 0.0012038193 ;
	setAttr ".tk[197]" -type "float3" -7.4505806e-09 0 0.0039301896 ;
	setAttr ".tk[198]" -type "float3" 1.3038516e-08 0 0.0088277906 ;
	setAttr ".tk[199]" -type "float3" 6.519258e-09 0 0.01606985 ;
	setAttr ".tk[200]" -type "float3" -3.259629e-09 0 0.025043104 ;
	setAttr ".tk[201]" -type "float3" 2.3283064e-10 0 0.034508176 ;
	setAttr ".tk[202]" -type "float3" -7.3923729e-09 0 0.042757981 ;
	setAttr ".tk[203]" -type "float3" -2.2351742e-08 0 0 ;
	setAttr ".tk[204]" -type "float3" 0.0005299708 0 0 ;
	setAttr ".tk[205]" -type "float3" 0.0026499121 0 0 ;
	setAttr ".tk[206]" -type "float3" 0.0062050661 0 0 ;
	setAttr ".tk[207]" -type "float3" 0.011085233 0 0 ;
	setAttr ".tk[208]" -type "float3" 0.018088516 0 0 ;
	setAttr ".tk[209]" -type "float3" 0.026622538 0 0 ;
	setAttr ".tk[210]" -type "float3" 0.035161749 0 0 ;
	setAttr ".tk[211]" -type "float3" 0.042909078 0 0 ;
	setAttr ".tk[212]" -type "float3" 0.058670834 0 0 ;
	setAttr ".tk[213]" -type "float3" 2.9802322e-08 0 0 ;
	setAttr ".tk[214]" -type "float3" 0.0010176842 0 0 ;
	setAttr ".tk[215]" -type "float3" 0.0032064866 0 0 ;
	setAttr ".tk[216]" -type "float3" 0.0064519732 0 0 ;
	setAttr ".tk[217]" -type "float3" 0.011160913 0 0 ;
	setAttr ".tk[218]" -type "float3" 0.017650178 0 0 ;
	setAttr ".tk[219]" -type "float3" 0.025446914 0 0 ;
	setAttr ".tk[220]" -type "float3" 0.033406876 0 0 ;
	setAttr ".tk[221]" -type "float3" 0.040413879 0 0 ;
	setAttr ".tk[222]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".tk[223]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".tk[224]" -type "float3" 0.00086093449 0 0 ;
	setAttr ".tk[225]" -type "float3" 0.0034368492 0 0 ;
	setAttr ".tk[226]" -type "float3" 0.0083003482 0 0 ;
	setAttr ".tk[227]" -type "float3" 0.01533706 0 0 ;
	setAttr ".tk[228]" -type "float3" 0.023878461 0 0 ;
	setAttr ".tk[229]" -type "float3" 0.032845326 0 0 ;
	setAttr ".tk[230]" -type "float3" 0.040288392 0 0 ;
	setAttr ".tk[231]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".tk[232]" -type "float3" 0.00011884954 0 0 ;
	setAttr ".tk[233]" -type "float3" 0.0012037818 0 0 ;
	setAttr ".tk[234]" -type "float3" 0.0039301766 0 0 ;
	setAttr ".tk[235]" -type "float3" 0.0088277971 0 0 ;
	setAttr ".tk[236]" -type "float3" 0.016069861 0 0 ;
	setAttr ".tk[237]" -type "float3" 0.025043162 0 0 ;
	setAttr ".tk[238]" -type "float3" 0.034508135 0 0 ;
	setAttr ".tk[239]" -type "float3" 0.04275794 0 0 ;
	setAttr ".tk[240]" -type "float3" -2.2351742e-08 0 0 ;
	setAttr ".tk[241]" -type "float3" 0.0005299708 0 0 ;
	setAttr ".tk[242]" -type "float3" 0.0026499121 0 0 ;
	setAttr ".tk[243]" -type "float3" 0.0062050661 0 0 ;
	setAttr ".tk[244]" -type "float3" 0.011085233 0 0 ;
	setAttr ".tk[245]" -type "float3" 0.018088516 0 0 ;
	setAttr ".tk[246]" -type "float3" 0.026622538 0 0 ;
	setAttr ".tk[247]" -type "float3" 0.035161749 0 0 ;
	setAttr ".tk[248]" -type "float3" 0.042909078 0 0 ;
	setAttr ".tk[249]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".tk[250]" -type "float3" 0.00011884954 0 0 ;
	setAttr ".tk[251]" -type "float3" 0.0012037818 0 0 ;
	setAttr ".tk[252]" -type "float3" 0.0039301766 0 0 ;
	setAttr ".tk[253]" -type "float3" 0.0088277971 0 0 ;
	setAttr ".tk[254]" -type "float3" 0.016069861 0 0 ;
	setAttr ".tk[255]" -type "float3" 0.025043162 0 0 ;
	setAttr ".tk[256]" -type "float3" 0.034508135 0 0 ;
	setAttr ".tk[257]" -type "float3" 0.04275794 0 0 ;
	setAttr ".tk[258]" -type "float3" 0 0 -0.058670849 ;
	setAttr ".tk[259]" -type "float3" 0 0 -0.058670849 ;
	setAttr ".tk[260]" -type "float3" 0 0 -0.058670849 ;
	setAttr ".tk[261]" -type "float3" 0 0 -0.058670849 ;
	setAttr ".tk[262]" -type "float3" -0.058670834 0 0 ;
	setAttr ".tk[263]" -type "float3" -0.058670834 0 0 ;
	setAttr ".tk[264]" -type "float3" -0.058670834 0 0 ;
	setAttr ".tk[265]" -type "float3" -0.058670834 0 0 ;
	setAttr ".tk[266]" -type "float3" 0 0 0.058670849 ;
	setAttr ".tk[267]" -type "float3" 0 0 0.058670849 ;
	setAttr ".tk[268]" -type "float3" 0 0 0.058670849 ;
	setAttr ".tk[269]" -type "float3" 0 0 0.058670849 ;
	setAttr ".tk[270]" -type "float3" 0.058670834 0 0 ;
	setAttr ".tk[271]" -type "float3" 0.058670834 0 0 ;
	setAttr ".tk[272]" -type "float3" 0.058670834 0 0 ;
	setAttr ".tk[273]" -type "float3" 0.058670834 0 0 ;
	setAttr ".tk[274]" -type "float3" 1.8626451e-09 0 0 ;
	setAttr ".tk[275]" -type "float3" -5.5879354e-09 0 0 ;
	setAttr ".tk[276]" -type "float3" -7.4505806e-09 0 0 ;
	setAttr ".tk[279]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".tk[280]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".tk[281]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".tk[284]" -type "float3" -7.4505806e-09 0 0 ;
	setAttr ".tk[285]" -type "float3" -5.5879354e-09 0 0 ;
	setAttr ".tk[287]" -type "float3" 1.8626451e-09 0 0 ;
	setAttr ".tk[289]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".tk[290]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".tk[291]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".tk[292]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".tk[293]" -type "float3" -1.8626451e-09 0 0 ;
	setAttr ".tk[295]" -type "float3" 1.8626451e-09 0 0 ;
	setAttr ".tk[296]" -type "float3" 1.8626451e-09 0 0 ;
	setAttr ".tk[299]" -type "float3" -5.5879354e-09 2.0061467 -0.058670856 ;
	setAttr ".tk[300]" -type "float3" 0.41846025 2.0061467 4.6566129e-10 ;
	setAttr ".tk[301]" -type "float3" -5.5879354e-09 2.0061464 0.058670856 ;
	setAttr ".tk[302]" -type "float3" -0.41846025 2.0061467 2.1200403e-19 ;
	setAttr ".tk[303]" -type "float3" -2.5165921e-08 1.7671347 -0.037342638 ;
	setAttr ".tk[304]" -type "float3" -0.14929737 1.7671347 -0.058670856 ;
	setAttr ".tk[305]" -type "float3" 9.3806052e-10 1.7671347 -0.079999052 ;
	setAttr ".tk[306]" -type "float3" 0.14929737 1.7671347 -0.058670864 ;
	setAttr ".tk[307]" -type "float3" 0.41846019 1.7671347 0.021328177 ;
	setAttr ".tk[308]" -type "float3" 0.26916283 1.7671347 -6.519258e-09 ;
	setAttr ".tk[309]" -type "float3" 0.41846025 1.7671347 -0.021328188 ;
	setAttr ".tk[310]" -type "float3" 0.56775737 1.7671347 -4.6546877e-09 ;
	setAttr ".tk[311]" -type "float3" -2.0974968e-08 1.7671345 0.079999045 ;
	setAttr ".tk[312]" -type "float3" -0.14929737 1.7671345 0.058670856 ;
	setAttr ".tk[313]" -type "float3" -4.6498752e-09 1.7671345 0.037342649 ;
	setAttr ".tk[314]" -type "float3" 0.14929737 1.7671345 0.05867086 ;
	setAttr ".tk[315]" -type "float3" -0.41846025 1.7671347 0.021328196 ;
	setAttr ".tk[316]" -type "float3" -0.56775737 1.7671347 8.465871e-18 ;
	setAttr ".tk[317]" -type "float3" -0.41846025 1.7671347 -0.021328196 ;
	setAttr ".tk[318]" -type "float3" -0.26916283 1.7671347 2.2138162e-09 ;
createNode deleteComponent -n "deleteComponent5";
	rename -uid "E6829F79-8240-D60F-4032-B285A0FDB09F";
	setAttr ".dc" -type "componentList" 2 "f[349:359]" "f[652:663]";
createNode deleteComponent -n "deleteComponent6";
	rename -uid "7FC85971-1A45-1021-9EA7-1D8371BA4142";
	setAttr ".dc" -type "componentList" 1 "f[348]";
createNode polyMirror -n "polyMirror3";
	rename -uid "355C83D2-0643-F355-C193-98B9955A51B6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1.7044239652665925 0 0 0 0 1.7044239652665925 0 0 0 0 1.7044239652665925 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".p" -type "double3" -5.079579251665578e-08 0.0068143547741642751 0 ;
	setAttr ".d" 3;
createNode polyTweak -n "polyTweak10";
	rename -uid "F79A4F68-0E42-2152-4452-469CF554BD94";
	setAttr ".uopa" yes;
	setAttr -s 282 ".tk";
	setAttr ".tk[332]" -type "float3" -0.026411824 2.4510384 0.10300018 ;
	setAttr ".tk[333]" -type "float3" -0.044855881 2.4510374 0.11944871 ;
	setAttr ".tk[334]" -type "float3" -3.3527613e-08 2.5181351 -3.3527613e-08 ;
	setAttr ".tk[335]" -type "float3" -0.04923651 2.690825 0.12755421 ;
	setAttr ".tk[336]" -type "float3" -0.060684323 2.7036347 0.11789801 ;
	setAttr ".tk[337]" -type "float3" -0.051674336 2.6922994 0.067649394 ;
	setAttr ".tk[338]" -type "float3" -0.048181187 2.4510365 0.061304308 ;
	setAttr ".tk[339]" -type "float3" -0.031732664 2.4510388 0.0099631809 ;
	setAttr ".tk[340]" -type "float3" -0.031617165 2.6908245 0.0048946738 ;
	setAttr ".tk[341]" -type "float3" -0.0034706183 2.7036009 -0.060684364 ;
	setAttr ".tk[342]" -type "float3" 0.026610304 2.6922984 -0.10724194 ;
	setAttr ".tk[343]" -type "float3" 0.026411727 2.4510384 -0.10300028 ;
	setAttr ".tk[344]" -type "float3" 0.044855792 2.4510374 -0.11944876 ;
	setAttr ".tk[345]" -type "float3" 0.049236532 2.6908255 -0.12755433 ;
	setAttr ".tk[346]" -type "float3" 0.060684308 2.7036028 -0.11789807 ;
	setAttr ".tk[347]" -type "float3" 0.052520085 2.690825 -0.070139311 ;
	setAttr ".tk[348]" -type "float3" 0.048181143 2.4510374 -0.061304398 ;
	setAttr ".tk[349]" -type "float3" 0.031732574 2.4510379 -0.0099633001 ;
	setAttr ".tk[350]" -type "float3" 0.032328054 2.6922998 -0.0072642136 ;
	setAttr ".tk[351]" -type "float3" 0.0034705736 2.7036042 0.06068432 ;
	setAttr ".tk[352]" -type "float3" -0.026610319 2.6922989 0.10724188 ;
	setAttr ".tk[353]" -type "float3" -0.049592491 2.4761095 0.096348636 ;
	setAttr ".tk[354]" -type "float3" -0.056119524 2.5175467 0.10902946 ;
	setAttr ".tk[355]" -type "float3" -0.05261226 2.4878378 0.13331807 ;
	setAttr ".tk[356]" -type "float3" -0.066617072 2.5601053 0.12942424 ;
	setAttr ".tk[357]" -type "float3" -0.061748408 2.5302892 0.14986804 ;
	setAttr ".tk[358]" -type "float3" -0.0835426 2.5895138 0.16230723 ;
	setAttr ".tk[359]" -type "float3" -0.077571742 2.569015 0.17940989 ;
	setAttr ".tk[360]" -type "float3" -0.10663572 2.6011839 0.20717259 ;
	setAttr ".tk[361]" -type "float3" -0.10106024 2.5921321 0.2238436 ;
	setAttr ".tk[362]" -type "float3" -0.13370995 2.5919619 0.25977284 ;
	setAttr ".tk[363]" -type "float3" -0.12964208 2.5882154 0.27817261 ;
	setAttr ".tk[364]" -type "float3" -0.16148692 2.5637503 0.31373835 ;
	setAttr ".tk[365]" -type "float3" -0.15954156 2.5581212 0.33506167 ;
	setAttr ".tk[366]" -type "float3" -0.18667725 2.5229831 0.36267817 ;
	setAttr ".tk[367]" -type "float3" -0.18636763 2.5129528 0.38597965 ;
	setAttr ".tk[368]" -type "float3" -0.20700409 2.4773297 0.40216932 ;
	setAttr ".tk[369]" -type "float3" -0.20722269 2.4628763 0.42529708 ;
	setAttr ".tk[370]" -type "float3" -0.22173934 2.4330812 0.43079713 ;
	setAttr ".tk[371]" -type "float3" -0.22317328 2.412107 0.45508641 ;
	setAttr ".tk[372]" -type "float3" -0.25303701 2.2132115 0.49160254 ;
	setAttr ".tk[373]" -type "float3" -0.066797718 2.70363 0.16073878 ;
	setAttr ".tk[374]" -type "float3" -0.079029515 2.7155709 0.15353908 ;
	setAttr ".tk[375]" -type "float3" -0.087948404 2.7101479 0.20076945 ;
	setAttr ".tk[376]" -type "float3" -0.10020545 2.7175059 0.19467983 ;
	setAttr ".tk[377]" -type "float3" -0.1137219 2.7049236 0.24964245 ;
	setAttr ".tk[378]" -type "float3" -0.1238977 2.7058101 0.24070933 ;
	setAttr ".tk[379]" -type "float3" -0.14184025 2.6813674 0.30307102 ;
	setAttr ".tk[380]" -type "float3" -0.14930952 2.680162 0.29007936 ;
	setAttr ".tk[381]" -type "float3" -0.1704776 2.641911 0.35750812 ;
	setAttr ".tk[382]" -type "float3" -0.17499244 2.641829 0.33997685 ;
	setAttr ".tk[383]" -type "float3" -0.19662485 2.5897527 0.40710735 ;
	setAttr ".tk[384]" -type "float3" -0.1986368 2.5938449 0.38591313 ;
	setAttr ".tk[385]" -type "float3" -0.21816804 2.5305343 0.44776195 ;
	setAttr ".tk[386]" -type "float3" -0.21863826 2.5396166 0.4247722 ;
	setAttr ".tk[387]" -type "float3" -0.23399463 2.4696822 0.47730997 ;
	setAttr ".tk[388]" -type "float3" -0.23392823 2.4833298 0.45447811 ;
	setAttr ".tk[389]" -type "float3" -0.2446247 2.4137058 0.49676216 ;
	setAttr ".tk[390]" -type "float3" -0.24320757 2.4343252 0.47250572 ;
	setAttr ".tk[391]" -type "float3" -0.055804349 2.4887681 0.077503882 ;
	setAttr ".tk[392]" -type "float3" -0.064873196 2.5325556 0.096361041 ;
	setAttr ".tk[393]" -type "float3" -0.08052659 2.5690145 0.12774488 ;
	setAttr ".tk[394]" -type "float3" -0.10389148 2.5921335 0.17433849 ;
	setAttr ".tk[395]" -type "float3" -0.13234985 2.5882134 0.23082745 ;
	setAttr ".tk[396]" -type "float3" -0.16212581 2.5581231 0.28987628 ;
	setAttr ".tk[397]" -type "float3" -0.18882826 2.5129519 0.34295428 ;
	setAttr ".tk[398]" -type "float3" -0.20955977 2.4628773 0.38443142 ;
	setAttr ".tk[399]" -type "float3" -0.22538702 2.4121051 0.41638047 ;
	setAttr ".tk[400]" -type "float3" -0.069412455 2.7022691 0.10356625 ;
	setAttr ".tk[401]" -type "float3" -0.091026641 2.7101464 0.14694473 ;
	setAttr ".tk[402]" -type "float3" -0.11667656 2.7049241 0.1979775 ;
	setAttr ".tk[403]" -type "float3" -0.14467141 2.681365 0.25356609 ;
	setAttr ".tk[404]" -type "float3" -0.17318529 2.6419125 0.31016287 ;
	setAttr ".tk[405]" -type "float3" -0.19920909 2.5897532 0.36192203 ;
	setAttr ".tk[406]" -type "float3" -0.22062877 2.5305362 0.4047364 ;
	setAttr ".tk[407]" -type "float3" -0.23633176 2.4696832 0.43644437 ;
	setAttr ".tk[408]" -type "float3" -0.24683836 2.4137049 0.45805639 ;
	setAttr ".tk[409]" -type "float3" -0.0028362535 2.4761081 -0.049592473 ;
	setAttr ".tk[410]" -type "float3" -0.0032095946 2.5175476 -0.056119598 ;
	setAttr ".tk[411]" -type "float3" -0.031092826 2.4878378 0.00017046742 ;
	setAttr ".tk[412]" -type "float3" -0.0038098991 2.5601048 -0.066617042 ;
	setAttr ".tk[413]" -type "float3" -0.030535206 2.5302877 -0.011060126 ;
	setAttr ".tk[414]" -type "float3" -0.0047779158 2.5895138 -0.08354263 ;
	setAttr ".tk[415]" -type "float3" -0.030353382 2.5690155 -0.028861705 ;
	setAttr ".tk[416]" -type "float3" -0.0060986653 2.601202 -0.10663565 ;
	setAttr ".tk[417]" -type "float3" -0.030613255 2.5921345 -0.054386429 ;
	setAttr ".tk[418]" -type "float3" -0.0076469928 2.5919614 -0.13370989 ;
	setAttr ".tk[419]" -type "float3" -0.031164356 2.5882139 -0.085004598 ;
	setAttr ".tk[420]" -type "float3" -0.0092356056 2.5637503 -0.16148701 ;
	setAttr ".tk[421]" -type "float3" -0.031791016 2.5581231 -0.11694038 ;
	setAttr ".tk[422]" -type "float3" -0.010676235 2.5229821 -0.18667714 ;
	setAttr ".tk[423]" -type "float3" -0.032241702 2.5129519 -0.14580277 ;
	setAttr ".tk[424]" -type "float3" -0.011838764 2.4773011 -0.20700413 ;
	setAttr ".tk[425]" -type "float3" -0.032350957 2.4628773 -0.16869405 ;
	setAttr ".tk[426]" -type "float3" -0.012681484 2.4330931 -0.22173923 ;
	setAttr ".tk[427]" -type "float3" -0.032179803 2.4121056 -0.18668114 ;
	setAttr ".tk[428]" -type "float3" -0.014471442 2.2132125 -0.25303701 ;
	setAttr ".tk[429]" -type "float3" -0.031778514 2.7036309 -0.014251001 ;
	setAttr ".tk[430]" -type "float3" -0.0045198351 2.7155719 -0.079029515 ;
	setAttr ".tk[431]" -type "float3" -0.03203018 2.7101178 -0.037201878 ;
	setAttr ".tk[432]" -type "float3" -0.0057308599 2.7175074 -0.10020536 ;
	setAttr ".tk[433]" -type "float3" -0.032420881 2.704926 -0.065011613 ;
	setAttr ".tk[434]" -type "float3" -0.007085897 2.7058115 -0.12389769 ;
	setAttr ".tk[435]" -type "float3" -0.032945499 2.6813655 -0.09516637 ;
	setAttr ".tk[436]" -type "float3" -0.0085391551 2.6801629 -0.14930932 ;
	setAttr ".tk[437]" -type "float3" -0.033499926 2.641912 -0.12584004 ;
	setAttr ".tk[438]" -type "float3" -0.010008067 2.6418276 -0.17499237 ;
	setAttr ".tk[439]" -type "float3" -0.033911765 2.5897546 -0.15402365 ;
	setAttr ".tk[440]" -type "float3" -0.011360288 2.5938435 -0.19863677 ;
	setAttr ".tk[441]" -type "float3" -0.034060344 2.5305362 -0.17760339 ;
	setAttr ".tk[442]" -type "float3" -0.01250419 2.5396161 -0.21863812 ;
	setAttr ".tk[443]" -type "float3" -0.033882067 2.4696841 -0.19546598 ;
	setAttr ".tk[444]" -type "float3" -0.013378561 2.4833293 -0.23392837 ;
	setAttr ".tk[445]" -type "float3" -0.033406585 2.4137049 -0.20813237 ;
	setAttr ".tk[446]" -type "float3" -0.01390931 2.4343405 -0.24320754 ;
	setAttr ".tk[447]" -type "float3" 0.024721373 2.4887681 -0.10826583 ;
	setAttr ".tk[448]" -type "float3" 0.023084641 2.5325537 -0.11523332 ;
	setAttr ".tk[449]" -type "float3" 0.021311462 2.5690155 -0.12923671 ;
	setAttr ".tk[450]" -type "float3" 0.018891878 2.592135 -0.15056531 ;
	setAttr ".tk[451]" -type "float3" 0.016180806 2.5882144 -0.17698726 ;
	setAttr ".tk[452]" -type "float3" 0.013394445 2.5581222 -0.20472685 ;
	setAttr ".tk[453]" -type "float3" 0.010783866 2.5129523 -0.22939321 ;
	setAttr ".tk[454]" -type "float3" 0.0085146427 2.4628773 -0.24808833 ;
	setAttr ".tk[455]" -type "float3" 0.0065260977 2.4121065 -0.26187921 ;
	setAttr ".tk[456]" -type "float3" 0.024282187 2.7022715 -0.12251132 ;
	setAttr ".tk[457]" -type "float3" 0.021794461 2.7101178 -0.14177302 ;
	setAttr ".tk[458]" -type "float3" 0.019244097 2.7049255 -0.16538672 ;
	setAttr ".tk[459]" -type "float3" 0.016559556 2.681365 -0.19134524 ;
	setAttr ".tk[460]" -type "float3" 0.013845354 2.641911 -0.21782276 ;
	setAttr ".tk[461]" -type "float3" 0.011273667 2.5897555 -0.24181017 ;
	setAttr ".tk[462]" -type "float3" 0.0089650899 2.5305362 -0.26119372 ;
	setAttr ".tk[463]" -type "float3" 0.0069836378 2.4696841 -0.27486026 ;
	setAttr ".tk[464]" -type "float3" 0.0052992702 2.4137053 -0.28333044 ;
	setAttr ".tk[465]" -type "float3" 0.049592413 2.4761095 -0.096348688 ;
	setAttr ".tk[466]" -type "float3" 0.056119423 2.5175457 -0.1090295 ;
	setAttr ".tk[467]" -type "float3" 0.052612215 2.4878368 -0.13331816 ;
	setAttr ".tk[468]" -type "float3" 0.066617042 2.5601058 -0.12942418 ;
	setAttr ".tk[469]" -type "float3" 0.061806589 2.5302887 -0.14998102 ;
	setAttr ".tk[470]" -type "float3" 0.083542541 2.5895133 -0.16230732 ;
	setAttr ".tk[471]" -type "float3" 0.077571608 2.5690141 -0.17940989 ;
	setAttr ".tk[472]" -type "float3" 0.1066356 2.6011839 -0.20717287 ;
	setAttr ".tk[473]" -type "float3" 0.10106023 2.5921335 -0.22384359 ;
	setAttr ".tk[474]" -type "float3" 0.13370979 2.5919638 -0.25977266 ;
	setAttr ".tk[475]" -type "float3" 0.12964207 2.5882139 -0.2781727 ;
	setAttr ".tk[476]" -type "float3" 0.16148698 2.5637498 -0.31373835 ;
	setAttr ".tk[477]" -type "float3" 0.15954149 2.5581222 -0.33506176 ;
	setAttr ".tk[478]" -type "float3" 0.18667705 2.522984 -0.36267805 ;
	setAttr ".tk[479]" -type "float3" 0.18636763 2.5129523 -0.38597965 ;
	setAttr ".tk[480]" -type "float3" 0.20700404 2.4773288 -0.40216935 ;
	setAttr ".tk[481]" -type "float3" 0.20722252 2.4628782 -0.42529705 ;
	setAttr ".tk[482]" -type "float3" 0.22173929 2.4330955 -0.43079719 ;
	setAttr ".tk[483]" -type "float3" 0.22317332 2.412106 -0.45508635 ;
	setAttr ".tk[484]" -type "float3" 0.25303698 2.2132115 -0.4916026 ;
	setAttr ".tk[485]" -type "float3" 0.066797793 2.7036304 -0.16073875 ;
	setAttr ".tk[486]" -type "float3" 0.079029366 2.71557 -0.15353914 ;
	setAttr ".tk[487]" -type "float3" 0.08794827 2.7101474 -0.20076938 ;
	setAttr ".tk[488]" -type "float3" 0.10020529 2.7175059 -0.19468001 ;
	setAttr ".tk[489]" -type "float3" 0.11372174 2.7049241 -0.24964237 ;
	setAttr ".tk[490]" -type "float3" 0.12389758 2.7058101 -0.24070951 ;
	setAttr ".tk[491]" -type "float3" 0.14184019 2.6813655 -0.30307114 ;
	setAttr ".tk[492]" -type "float3" 0.14930937 2.680161 -0.29007974 ;
	setAttr ".tk[493]" -type "float3" 0.17047745 2.6419125 -0.35750824 ;
	setAttr ".tk[494]" -type "float3" 0.17499228 2.641829 -0.33997679 ;
	setAttr ".tk[495]" -type "float3" 0.19662461 2.5897546 -0.40710756 ;
	setAttr ".tk[496]" -type "float3" 0.19863667 2.5938458 -0.38591334 ;
	setAttr ".tk[497]" -type "float3" 0.21816805 2.5305371 -0.44776207 ;
	setAttr ".tk[498]" -type "float3" 0.21863803 2.5396161 -0.42477202 ;
	setAttr ".tk[499]" -type "float3" 0.23399463 2.4696832 -0.47731 ;
	setAttr ".tk[500]" -type "float3" 0.23392835 2.4833169 -0.45447797 ;
	setAttr ".tk[501]" -type "float3" 0.24462458 2.4137049 -0.49676219 ;
	setAttr ".tk[502]" -type "float3" 0.24320754 2.4343243 -0.47250587 ;
	setAttr ".tk[503]" -type "float3" 0.055814002 2.4878378 -0.077333532 ;
	setAttr ".tk[504]" -type "float3" 0.064826697 2.5302892 -0.096043155 ;
	setAttr ".tk[505]" -type "float3" 0.080526523 2.569015 -0.12774485 ;
	setAttr ".tk[506]" -type "float3" 0.10389151 2.5921321 -0.1743385 ;
	setAttr ".tk[507]" -type "float3" 0.13234982 2.5882149 -0.23082751 ;
	setAttr ".tk[508]" -type "float3" 0.16212574 2.5581207 -0.28987637 ;
	setAttr ".tk[509]" -type "float3" 0.1888282 2.5129523 -0.34295434 ;
	setAttr ".tk[510]" -type "float3" 0.20955969 2.4628911 -0.38443133 ;
	setAttr ".tk[511]" -type "float3" 0.22538695 2.412107 -0.41638064 ;
	setAttr ".tk[512]" -type "float3" 0.069985136 2.7036295 -0.10500462 ;
	setAttr ".tk[513]" -type "float3" 0.091026545 2.7101483 -0.14694475 ;
	setAttr ".tk[514]" -type "float3" 0.1166764 2.7049103 -0.19797751 ;
	setAttr ".tk[515]" -type "float3" 0.14467135 2.6813674 -0.25356618 ;
	setAttr ".tk[516]" -type "float3" 0.17318526 2.641911 -0.31016305 ;
	setAttr ".tk[517]" -type "float3" 0.19920887 2.5897522 -0.36192212 ;
	setAttr ".tk[518]" -type "float3" 0.22062872 2.5305338 -0.40473658 ;
	setAttr ".tk[519]" -type "float3" 0.23633167 2.4696813 -0.4364444 ;
	setAttr ".tk[520]" -type "float3" 0.24683824 2.4137053 -0.4580563 ;
	setAttr ".tk[521]" -type "float3" 0.0028362013 2.4761076 0.049592435 ;
	setAttr ".tk[522]" -type "float3" 0.0032094866 2.5175471 0.056119502 ;
	setAttr ".tk[523]" -type "float3" 0.030922368 2.4887686 0.00016046874 ;
	setAttr ".tk[524]" -type "float3" 0.0038098618 2.5600882 0.066617027 ;
	setAttr ".tk[525]" -type "float3" 0.030330271 2.532557 0.011458095 ;
	setAttr ".tk[526]" -type "float3" 0.0047779083 2.5895128 0.0835426 ;
	setAttr ".tk[527]" -type "float3" 0.0303533 2.5690141 0.028861649 ;
	setAttr ".tk[528]" -type "float3" 0.0060985312 2.6012015 0.10663553 ;
	setAttr ".tk[529]" -type "float3" 0.030613139 2.592134 0.054386392 ;
	setAttr ".tk[530]" -type "float3" 0.0076469481 2.5919614 0.13370976 ;
	setAttr ".tk[531]" -type "float3" 0.03116437 2.5882149 0.085004508 ;
	setAttr ".tk[532]" -type "float3" 0.009235546 2.5637517 0.16148692 ;
	setAttr ".tk[533]" -type "float3" 0.031790942 2.5581245 0.11694027 ;
	setAttr ".tk[534]" -type "float3" 0.01067625 2.5229831 0.18667716 ;
	setAttr ".tk[535]" -type "float3" 0.032241657 2.5129519 0.14580283 ;
	setAttr ".tk[536]" -type "float3" 0.011838704 2.4773293 0.20700407 ;
	setAttr ".tk[537]" -type "float3" 0.032350957 2.4628763 0.16869399 ;
	setAttr ".tk[538]" -type "float3" 0.012681454 2.4330931 0.22173923 ;
	setAttr ".tk[539]" -type "float3" 0.032179773 2.4121056 0.18668108 ;
	setAttr ".tk[540]" -type "float3" 0.014471442 2.213212 0.25303692 ;
	setAttr ".tk[541]" -type "float3" 0.032037497 2.7022691 0.013092544 ;
	setAttr ".tk[542]" -type "float3" 0.0045197085 2.71557 0.079029411 ;
	setAttr ".tk[543]" -type "float3" 0.032030232 2.7101173 0.037201788 ;
	setAttr ".tk[544]" -type "float3" 0.005730778 2.7175055 0.10020529 ;
	setAttr ".tk[545]" -type "float3" 0.032420836 2.7049246 0.065011635 ;
	setAttr ".tk[546]" -type "float3" 0.0070857927 2.7058105 0.12389763 ;
	setAttr ".tk[547]" -type "float3" 0.032945484 2.6813674 0.095166266 ;
	setAttr ".tk[548]" -type "float3" 0.0085390806 2.680162 0.14930925 ;
	setAttr ".tk[549]" -type "float3" 0.033499748 2.6419129 0.12583998 ;
	setAttr ".tk[550]" -type "float3" 0.010007977 2.6418262 0.17499232 ;
	setAttr ".tk[551]" -type "float3" 0.033911616 2.5897527 0.15402365 ;
	setAttr ".tk[552]" -type "float3" 0.011360139 2.5938473 0.19863668 ;
	setAttr ".tk[553]" -type "float3" 0.034060344 2.5305233 0.17760321 ;
	setAttr ".tk[554]" -type "float3" 0.012504101 2.5396152 0.21863803 ;
	setAttr ".tk[555]" -type "float3" 0.033881962 2.4696836 0.19546598 ;
	setAttr ".tk[556]" -type "float3" 0.013378561 2.4833298 0.23392835 ;
	setAttr ".tk[557]" -type "float3" 0.033406511 2.4137058 0.20813234 ;
	setAttr ".tk[558]" -type "float3" 0.01390931 2.4343238 0.24320756 ;
	setAttr ".tk[559]" -type "float3" -0.024721429 2.4887691 0.10826579 ;
	setAttr ".tk[560]" -type "float3" -0.023084745 2.5325594 0.11523318 ;
	setAttr ".tk[561]" -type "float3" -0.021311603 2.5690136 0.12923661 ;
	setAttr ".tk[562]" -type "float3" -0.018891864 2.5921335 0.15056516 ;
	setAttr ".tk[563]" -type "float3" -0.01618091 2.5882154 0.17698726 ;
	setAttr ".tk[564]" -type "float3" -0.013394535 2.5581241 0.2047269 ;
	setAttr ".tk[565]" -type "float3" -0.010783836 2.5129528 0.22939315 ;
	setAttr ".tk[566]" -type "float3" -0.0085148364 2.4628773 0.24808833 ;
	setAttr ".tk[567]" -type "float3" -0.0065261424 2.4121056 0.26187915 ;
	setAttr ".tk[568]" -type "float3" -0.024282277 2.7022691 0.12251116 ;
	setAttr ".tk[569]" -type "float3" -0.02179458 2.7101164 0.14177305 ;
	setAttr ".tk[570]" -type "float3" -0.019244097 2.7049241 0.16538668 ;
	setAttr ".tk[571]" -type "float3" -0.016559646 2.6813664 0.19134523 ;
	setAttr ".tk[572]" -type "float3" -0.013845444 2.6419125 0.21782264 ;
	setAttr ".tk[573]" -type "float3" -0.011273682 2.5897522 0.24181014 ;
	setAttr ".tk[574]" -type "float3" -0.0089651793 2.5305233 0.26119372 ;
	setAttr ".tk[575]" -type "float3" -0.0069836676 2.4696841 0.2748602 ;
	setAttr ".tk[576]" -type "float3" -0.0052992851 2.4137058 0.28333038 ;
	setAttr ".tk[577]" -type "float3" -0.34352499 1.9400673 0.6674034 ;
	setAttr ".tk[578]" -type "float3" -0.24786192 1.9400678 0.58209038 ;
	setAttr ".tk[579]" -type "float3" -0.16254911 1.9400671 0.31580186 ;
	setAttr ".tk[580]" -type "float3" -0.25821212 1.9400692 0.40111458 ;
	setAttr ".tk[581]" -type "float3" -0.10495926 1.9400682 -0.077236399 ;
	setAttr ".tk[582]" -type "float3" -0.0092964321 1.940068 -0.16254917 ;
	setAttr ".tk[583]" -type "float3" 0.076016396 1.9400673 -0.4288376 ;
	setAttr ".tk[584]" -type "float3" -0.019646585 1.9400685 -0.34352481 ;
	setAttr ".tk[585]" -type "float3" 0.16254912 1.9400671 -0.31580183 ;
	setAttr ".tk[586]" -type "float3" 0.25821203 1.9400685 -0.40111464 ;
	setAttr ".tk[587]" -type "float3" 0.34352493 1.9400671 -0.6674034 ;
	setAttr ".tk[588]" -type "float3" 0.2478618 1.9400687 -0.58209044 ;
	setAttr ".tk[589]" -type "float3" -0.076016501 1.940068 0.42883772 ;
	setAttr ".tk[590]" -type "float3" 0.019646406 1.9400671 0.34352481 ;
	setAttr ".tk[591]" -type "float3" 0.10495922 1.9400675 0.07723631 ;
	setAttr ".tk[592]" -type "float3" 0.0092963129 1.9400661 0.16254905 ;
	setAttr ".tk[606]" -type "float3" -0.32090294 1.7414756 0.62345314 ;
	setAttr ".tk[607]" -type "float3" -0.24915566 1.741477 0.55946851 ;
	setAttr ".tk[608]" -type "float3" -0.18517101 1.7414763 0.35975206 ;
	setAttr ".tk[609]" -type "float3" -0.25691831 1.7414749 0.42373657 ;
	setAttr ".tk[610]" -type "float3" -0.25303701 1.9463545 0.49160248 ;
	setAttr ".tk[611]" -type "float3" -0.053394496 1.7414753 0.38488725 ;
	setAttr ".tk[612]" -type "float3" 0.018352717 1.7414758 0.32090244 ;
	setAttr ".tk[613]" -type "float3" 0.08233726 1.7414742 0.12118639 ;
	setAttr ".tk[614]" -type "float3" 0.010590151 1.7414744 0.18517108 ;
	setAttr ".tk[615]" -type "float3" 0.014471382 1.9463547 0.25303683 ;
	setAttr ".tk[616]" -type "float3" 0.18517104 1.7414933 -0.359752 ;
	setAttr ".tk[617]" -type "float3" 0.25691825 1.7414941 -0.42373669 ;
	setAttr ".tk[618]" -type "float3" 0.32090276 1.7414919 -0.62345314 ;
	setAttr ".tk[619]" -type "float3" 0.24915569 1.7414919 -0.55946851 ;
	setAttr ".tk[620]" -type "float3" 0.25303698 1.9463676 -0.49160254 ;
	setAttr ".tk[621]" -type "float3" -0.08233726 1.7414751 -0.12118636 ;
	setAttr ".tk[622]" -type "float3" -0.010590151 1.7414746 -0.1851711 ;
	setAttr ".tk[623]" -type "float3" 0.053394616 1.7414761 -0.3848874 ;
	setAttr ".tk[624]" -type "float3" -0.018352717 1.7414763 -0.32090259 ;
	setAttr ".tk[625]" -type "float3" -0.014471442 1.9463552 -0.25303698 ;
createNode deleteComponent -n "deleteComponent7";
	rename -uid "4EC6BA7C-8A49-ED31-D5D3-40B52E070B5F";
	setAttr ".dc" -type "componentList" 1 "f[672:683]";
createNode deleteComponent -n "deleteComponent8";
	rename -uid "4BEA0631-0643-28D2-23EB-3ABBAEF3207E";
	setAttr ".dc" -type "componentList" 1 "f[964:975]";
createNode deleteComponent -n "deleteComponent9";
	rename -uid "5C64EE13-C54E-977C-6193-5DAF763A71B6";
	setAttr ".dc" -type "componentList" 4 "f[684:732]" "f[734:752]" "f[754:943]" "f[1008:1267]";
createNode deleteComponent -n "deleteComponent10";
	rename -uid "3D0703C3-7C49-512D-37C8-4DA4FAC7E13A";
	setAttr ".dc" -type "componentList" 1 "f[684:685]";
createNode deleteComponent -n "deleteComponent11";
	rename -uid "CACC77A6-554A-0370-67E7-EDB3E28ADC3D";
	setAttr ".dc" -type "componentList" 5 "f[690:693]" "f[749:752]" "f[754:757]" "f[759:762]" "f[764:767]";
createNode deleteComponent -n "deleteComponent12";
	rename -uid "F41DD5A7-4449-DF73-F5EE-8C94ABD455D6";
	setAttr ".dc" -type "componentList" 2 "f[685:688]" "f[691:694]";
createNode deleteComponent -n "deleteComponent13";
	rename -uid "4961D6B8-4045-7C6D-6B2E-479E1AA32678";
	setAttr ".dc" -type "componentList" 1 "f[688:691]";
createNode deleteComponent -n "deleteComponent14";
	rename -uid "C6958748-3740-55D8-4B69-A38744C0A76D";
	setAttr ".dc" -type "componentList" 3 "f[684:685]" "f[687]" "f[732:735]";
createNode deleteComponent -n "deleteComponent15";
	rename -uid "56BEECEB-4941-E8B3-A647-42B8BF44D7B5";
	setAttr ".dc" -type "componentList" 1 "f[684]";
createNode polySplitRing -n "polySplitRing2";
	rename -uid "D90F94D7-AD43-E4F3-3615-D88B73CB2C1C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[572:573]" "e[575]" "e[577]" "e[579]" "e[581]" "e[583]" "e[585]" "e[587]" "e[589]" "e[591]" "e[593]";
	setAttr ".ix" -type "matrix" 1.7044239652665925 0 0 0 0 1.7044239652665925 0 0 0 0 1.7044239652665925 0
		 0 0 0 1;
	setAttr ".wt" 0.72824257612228394;
	setAttr ".dr" no;
	setAttr ".re" 591;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak11";
	rename -uid "9904B284-0243-CC84-FD5B-57A03D1E1932";
	setAttr ".uopa" yes;
	setAttr -s 55 ".tk";
	setAttr ".tk[332]" -type "float3" -0.0087231342 -0.07603842 -0.037795343 ;
	setAttr ".tk[333]" -type "float3" 0.0087231612 -0.07603842 -0.037795357 ;
	setAttr ".tk[338]" -type "float3" 0.03779535 -0.07603842 -0.0087231537 ;
	setAttr ".tk[339]" -type "float3" 0.037795357 -0.076038428 0.0087231565 ;
	setAttr ".tk[343]" -type "float3" 0.0087231575 -0.076038428 0.037795357 ;
	setAttr ".tk[344]" -type "float3" -0.0087231426 -0.07603842 0.037795335 ;
	setAttr ".tk[348]" -type "float3" -0.037795357 -0.07603842 0.0087231565 ;
	setAttr ".tk[349]" -type "float3" -0.037795335 -0.07603842 -0.0087231379 ;
	setAttr ".tk[353]" -type "float3" 0.024796234 -0.07603842 -0.024796233 ;
	setAttr ".tk[409]" -type "float3" 0.024796223 -0.076038428 0.024796216 ;
	setAttr ".tk[465]" -type "float3" -0.024796221 -0.07603842 0.02479622 ;
	setAttr ".tk[521]" -type "float3" -0.024796227 -0.07603842 -0.02479624 ;
	setAttr ".tk[652]" -type "float3" 6.989251e-09 1.604925 0.57310802 ;
	setAttr ".tk[653]" -type "float3" -0.031992294 1.604925 0.47713113 ;
	setAttr ".tk[654]" -type "float3" 1.3955402e-09 1.604925 0.38115421 ;
	setAttr ".tk[655]" -type "float3" 0.031992294 1.604925 0.47713113 ;
	setAttr ".tk[656]" -type "float3" 2.7939682e-09 1.758595 0.47713113 ;
	setAttr ".tk[657]" -type "float3" -6.3329935e-08 1.604925 0.095976919 ;
	setAttr ".tk[658]" -type "float3" -0.031992238 1.604925 2.1894746e-08 ;
	setAttr ".tk[659]" -type "float3" -7.0780516e-08 1.604925 -0.095976889 ;
	setAttr ".tk[660]" -type "float3" 0.031992238 1.604925 1.3504179e-08 ;
	setAttr ".tk[661]" -type "float3" -7.0780516e-08 1.758595 3.0267984e-09 ;
	setAttr ".tk[662]" -type "float3" 4.8937738e-09 1.6049246 -0.38115421 ;
	setAttr ".tk[663]" -type "float3" -0.031992294 1.6049246 -0.47713113 ;
	setAttr ".tk[664]" -type "float3" 4.1895079e-09 1.6049246 -0.57310802 ;
	setAttr ".tk[665]" -type "float3" 0.031992294 1.6049246 -0.47713113 ;
	setAttr ".tk[666]" -type "float3" 2.7939684e-09 1.7585946 -0.47713113 ;
	setAttr ".tk[667]" -type "float3" 7.0780516e-08 1.604925 0.095976882 ;
	setAttr ".tk[668]" -type "float3" -0.031992238 1.604925 7.8666975e-09 ;
	setAttr ".tk[669]" -type "float3" 7.0780516e-08 1.604925 -0.095976882 ;
	setAttr ".tk[670]" -type "float3" 0.031992238 1.604925 6.1248158e-17 ;
	setAttr ".tk[671]" -type "float3" 7.0780516e-08 1.758595 2.6912262e-17 ;
	setAttr ".tk[698]" -type "float3" 0.033932991 1.7521906 -0.60787302 ;
	setAttr ".tk[699]" -type "float3" 0.033932947 1.7521895 -0.40427503 ;
	setAttr ".tk[700]" -type "float3" -0.033932991 1.7521917 -0.40427518 ;
	setAttr ".tk[701]" -type "float3" -0.033932954 1.7521926 -0.60787296 ;
	setAttr ".tk[702]" -type "float3" 7.4505806e-09 1.9058392 -0.50607389 ;
	setAttr ".tk[703]" -type "float3" 0.033932954 1.7521901 -0.60787237 ;
	setAttr ".tk[704]" -type "float3" 0.033932917 1.7521887 -0.40427506 ;
	setAttr ".tk[705]" -type "float3" -0.033932954 1.7521883 -0.40427491 ;
	setAttr ".tk[706]" -type "float3" -0.033932835 1.7521907 -0.60787207 ;
	setAttr ".tk[707]" -type "float3" 0 1.9058394 -0.50607365 ;
	setAttr ".tk[708]" -type "float3" 0.033932958 1.752225 0.40427512 ;
	setAttr ".tk[709]" -type "float3" 0.033932913 1.7522229 0.60787296 ;
	setAttr ".tk[710]" -type "float3" -0.033932928 1.7522229 0.60787302 ;
	setAttr ".tk[711]" -type "float3" -0.033932958 1.7522262 0.40427521 ;
	setAttr ".tk[712]" -type "float3" -3.228585e-08 1.9058669 0.50607401 ;
	setAttr ".tk[713]" -type "float3" 0.033932976 1.7521899 0.40427488 ;
	setAttr ".tk[714]" -type "float3" 0.033932857 1.7521917 0.60787237 ;
	setAttr ".tk[715]" -type "float3" -0.033932976 1.7521914 0.60787272 ;
	setAttr ".tk[716]" -type "float3" -0.033932894 1.7521892 0.40427512 ;
	setAttr ".tk[717]" -type "float3" 5.2154064e-08 1.9058404 0.50607395 ;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "F2D7695E-DD42-86ED-EE0F-5CB31BA12B4E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[572:573]" "e[575]" "e[577]" "e[579]" "e[581]" "e[583]" "e[585]" "e[587]" "e[589]" "e[591]" "e[593]";
	setAttr ".ix" -type "matrix" 1.7044239652665925 0 0 0 0 1.7044239652665925 0 0 0 0 1.7044239652665925 0
		 0 0 0 1;
	setAttr ".wt" 0.79611963033676147;
	setAttr ".dr" no;
	setAttr ".re" 579;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "ADD9E654-2247-16CF-448C-D48B35AC1A51";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[572:573]" "e[575]" "e[577]" "e[579]" "e[581]" "e[583]" "e[585]" "e[587]" "e[589]" "e[591]" "e[593]";
	setAttr ".ix" -type "matrix" 1.7044239652665925 0 0 0 0 1.7044239652665925 0 0 0 0 1.7044239652665925 0
		 0 0 0 1;
	setAttr ".wt" 0.54379904270172119;
	setAttr ".dr" no;
	setAttr ".re" 579;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "938DD9E1-8E4C-9453-050D-079CAC54E1F8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[572:573]" "e[575]" "e[577]" "e[579]" "e[581]" "e[583]" "e[585]" "e[587]" "e[589]" "e[591]" "e[593]";
	setAttr ".ix" -type "matrix" 1.7044239652665925 0 0 0 0 1.7044239652665925 0 0 0 0 1.7044239652665925 0
		 0 0 0 1;
	setAttr ".wt" 0.49717643857002258;
	setAttr ".re" 583;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	rename -uid "6415D076-D846-D4D8-C6CE-988E2A987851";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[24:35]";
	setAttr ".ix" -type "matrix" 1.7044239652665925 0 0 0 0 1.7044239652665925 0 0 0 0 1.7044239652665925 0
		 0 0 0 1;
	setAttr ".wt" 0.90458798408508301;
	setAttr ".dr" no;
	setAttr ".re" 25;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing7";
	rename -uid "E630D42D-A446-DDDA-126F-6FB08EA6E173";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[24:35]";
	setAttr ".ix" -type "matrix" 1.7044239652665925 0 0 0 0 1.7044239652665925 0 0 0 0 1.7044239652665925 0
		 0 0 0 1;
	setAttr ".wt" 0.84600538015365601;
	setAttr ".dr" no;
	setAttr ".re" 25;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing8";
	rename -uid "E91EDEBE-C54E-86F1-A6F5-9DB48A20F983";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[24:35]";
	setAttr ".ix" -type "matrix" 1.7044239652665925 0 0 0 0 1.7044239652665925 0 0 0 0 1.7044239652665925 0
		 0 0 0 1;
	setAttr ".wt" 0.82620662450790405;
	setAttr ".dr" no;
	setAttr ".re" 25;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing9";
	rename -uid "862F2AC8-A247-7F58-59D7-F89A444E40BA";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[24:35]";
	setAttr ".ix" -type "matrix" 1.7044239652665925 0 0 0 0 1.7044239652665925 0 0 0 0 1.7044239652665925 0
		 0 0 0 1;
	setAttr ".wt" 0.76494103670120239;
	setAttr ".dr" no;
	setAttr ".re" 25;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing10";
	rename -uid "69BD339B-2C48-3632-01CA-3692FCBB104E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[24:35]";
	setAttr ".ix" -type "matrix" 1.7044239652665925 0 0 0 0 1.7044239652665925 0 0 0 0 1.7044239652665925 0
		 0 0 0 1;
	setAttr ".wt" 0.75417482852935791;
	setAttr ".dr" no;
	setAttr ".re" 25;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing11";
	rename -uid "01D32831-0F4A-D7E1-66CE-C8830573CD35";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[24:35]";
	setAttr ".ix" -type "matrix" 1.7044239652665925 0 0 0 0 1.7044239652665925 0 0 0 0 1.7044239652665925 0
		 0 0 0 1;
	setAttr ".wt" 0.69261318445205688;
	setAttr ".dr" no;
	setAttr ".re" 25;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing12";
	rename -uid "A3725849-1044-658E-8E1A-1A82594D4218";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[24:35]";
	setAttr ".ix" -type "matrix" 1.7044239652665925 0 0 0 0 1.7044239652665925 0 0 0 0 1.7044239652665925 0
		 0 0 0 1;
	setAttr ".wt" 0.67802721261978149;
	setAttr ".dr" no;
	setAttr ".re" 25;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing13";
	rename -uid "3AE55AA7-E64F-A899-001C-F889BFC866E7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[24:35]";
	setAttr ".ix" -type "matrix" 1.7044239652665925 0 0 0 0 1.7044239652665925 0 0 0 0 1.7044239652665925 0
		 0 0 0 1;
	setAttr ".wt" 0.53040003776550293;
	setAttr ".dr" no;
	setAttr ".re" 25;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing14";
	rename -uid "21170AD7-014F-99AF-0522-BF8FD5B6FA27";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[1428:1429]" "e[1431]" "e[1433]" "e[1435]" "e[1437]" "e[1439]" "e[1441]" "e[1443]" "e[1445]" "e[1447]" "e[1449]";
	setAttr ".ix" -type "matrix" 1.7044239652665925 0 0 0 0 1.7044239652665925 0 0 0 0 1.7044239652665925 0
		 0 0 0 1;
	setAttr ".wt" 0.51509779691696167;
	setAttr ".re" 1439;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode skinCluster -n "skinCluster1";
	rename -uid "CA9138CA-EF47-2011-622E-D9B9A97274D3";
	setAttr -s 874 ".wl";
	setAttr -s 8 ".wl[0].w[0:7]"  0.90982610518971807 0.057207073095373692 
		0.015483467350543107 0.0065259282549581495 0.0039790956504578276 0.0029131100325117377 
		0.0022438042404624376 0.0018214161859750944;
	setAttr -s 8 ".wl[1].w[0:7]"  0.90979746211652679 0.057297142135966941 
		0.015463565383309371 0.0065106413835795563 0.0039697746897323707 0.002906286124234719 
		0.0022382048500582509 0.0018169233165919616;
	setAttr -s 8 ".wl[2].w[0:7]"  0.90977361465923201 0.057410917193164122 
		0.015433510277315229 0.0064885817106260209 0.0039563240772819098 0.0028964388745750286 
		0.0022301540063440202 0.0018104592014616674;
	setAttr -s 8 ".wl[3].w[0:7]"  0.90976694226093102 0.057514238695489592 
		0.015400242143512509 0.0064652101263430201 0.0039420736009340863 0.0028860060589179452 
		0.0022216557724877724 0.0018036313413839651;
	setAttr -s 8 ".wl[4].w[0:7]"  0.90977345765665041 0.057582896905596016 
		0.015373771855794055 0.0064472389839846898 0.0039311159418806913 0.0028779839177632866 
		0.0022151407182331821 0.0017983940200976926;
	setAttr -s 8 ".wl[5].w[0:7]"  0.90977843493761901 0.057606432626600819 
		0.015363605516748995 0.0064404666848668505 0.0039269865974782252 0.0028749608016655336 
		0.0022126897283662648 0.0017964231066543344;
	setAttr -s 8 ".wl[6].w[0:7]"  0.90977345765665041 0.057582896905596016 
		0.015373771855794055 0.0064472389839846898 0.0039311159418806913 0.0028779839177632866 
		0.0022151407182331821 0.0017983940200976926;
	setAttr -s 8 ".wl[7].w[0:7]"  0.90976694226093102 0.057514238695489592 
		0.015400242143512509 0.0064652101263430201 0.0039420736009340863 0.0028860060589179452 
		0.0022216557724877724 0.0018036313413839651;
	setAttr -s 8 ".wl[8].w[0:7]"  0.90977361465923201 0.057410917193164122 
		0.015433510277315229 0.0064885817106260209 0.0039563240772819098 0.0028964388745750286 
		0.0022301540063440202 0.0018104592014616674;
	setAttr -s 8 ".wl[9].w[0:7]"  0.90979746211652679 0.057297142135966941 
		0.015463565383309371 0.0065106413835795563 0.0039697746897323707 0.002906286124234719 
		0.0022382048500582509 0.0018169233165919616;
	setAttr -s 8 ".wl[10].w[0:7]"  0.90982610518971807 0.057207073095373692 
		0.015483467350543107 0.0065259282549581495 0.0039790956504578276 0.0029131100325117377 
		0.0022438042404624376 0.0018214161859750944;
	setAttr -s 8 ".wl[11].w[0:7]"  0.90983910037021176 0.0571725868946589 
		0.015490280336776064 0.006531329018277925 0.0039823886642817536 0.0029155208510666906 
		0.0022457872411523775 0.0018230066235745861;
	setAttr -s 8 ".wl[12].w[0:7]"  0.0012370171691593549 0.0019824211169495523 
		0.0040019291759354082 0.0090037257762164806 0.023482776973364282 0.12960686125368978 
		0.51878693247269703 0.31189833606198814;
	setAttr -s 8 ".wl[13].w[0:7]"  0.0012983114156880915 0.002080851740419463 
		0.0041995497912399983 0.0094483418756989776 0.024642388702290133 0.13375444661968952 
		0.51002400739564002 0.31455210245933379;
	setAttr -s 8 ".wl[14].w[0:7]"  0.001110686256002 0.0017690966138362693 
		0.0035246924087725508 0.0077729005662672988 0.01960813102917577 0.096520178721336267 
		0.49416291381079325 0.37553140059381651;
	setAttr -s 8 ".wl[15].w[0:7]"  0.0014962400420213675 0.0023988543801408864 
		0.0048371814370818372 0.010882915122870656 0.028383924735150484 0.14600363893284229 
		0.48531393229527042 0.32068331305462205;
	setAttr -s 8 ".wl[16].w[0:7]"  0.001553990497967034 0.0024916849048159358 
		0.0050230742616571861 0.011301145326981251 0.029474717672776221 0.14927156144568496 
		0.47897455324196853 0.321909272648149;
	setAttr -s 8 ".wl[17].w[0:7]"  0.0012840038785316712 0.0020456971652869482 
		0.0040728881120396417 0.0089818204373303054 0.022657785277739144 0.10737167416438576 
		0.47649542157529701 0.37709070938938954;
	setAttr -s 8 ".wl[18].w[0:7]"  0.001553990497967034 0.0024916849048159358 
		0.0050230742616571861 0.011301145326981251 0.029474717672776221 0.14927156144568496 
		0.47897455324196853 0.321909272648149;
	setAttr -s 8 ".wl[19].w[0:7]"  0.0014962400420213675 0.0023988543801408864 
		0.0048371814370818372 0.010882915122870656 0.028383924735150484 0.14600363893284229 
		0.48531393229527042 0.32068331305462205;
	setAttr -s 8 ".wl[20].w[0:7]"  0.0011106859778433997 0.001769096171533247 
		0.0035246915314762367 0.00777289865267597 0.01960812635007695 0.096520160403649871 
		0.49416294496763064 0.37553139594511359;
	setAttr -s 8 ".wl[21].w[0:7]"  0.0012983114156880915 0.002080851740419463 
		0.0041995497912399983 0.0094483418756989776 0.024642388702290133 0.13375444661968952 
		0.51002400739564002 0.31455210245933379;
	setAttr -s 8 ".wl[22].w[0:7]"  0.0012370171691593549 0.0019824211169495523 
		0.0040019291759354082 0.0090037257762164806 0.023482776973364282 0.12960686125368978 
		0.51878693247269703 0.31189833606198814;
	setAttr -s 8 ".wl[23].w[0:7]"  0.00093071422479720225 0.0014820463393357857 
		0.0029548794708229614 0.0065163088076118907 0.016438218127936971 0.084178031264925124 
		0.51679349457665524 0.37070630718791486;
	setAttr -s 8 ".wl[24].w[0:7]"  0.99999873929991523 8.1799489567895287e-07 
		2.0957652539126982e-07 8.7237975262231136e-08 5.3043461147632349e-08 3.8787919936543584e-08 
		2.9843380189081682e-08 2.4215927126165961e-08;
	setAttr -s 8 ".wl[25].w[0:7]"  1.4975349223339442e-05 2.3625207562676206e-05 
		4.6231414501072481e-05 9.9238057974224258e-05 0.00024060658760243311 0.001127991076151159 
		0.69773925675079806 0.30070807555618712;
	setAttr -s 8 ".wl[26].w[0:7]"  0.0032636250608184753 0.0049404892227980467 
		0.0089371826322375211 0.016946263204709971 0.033494552369488943 0.089769811070106217 
		0.42132403821992043 0.42132403821992043;
	setAttr -s 8 ".wl[27].w[0:7]"  0.0037045087191145557 0.0055930669214617037 
		0.010062975564127153 0.018937297077754201 0.037010280445966527 0.096222253564912569 
		0.4142348088533318 0.41423480885333158;
	setAttr -s 8 ".wl[28].w[0:7]"  0.0034403892665207589 0.0052076677144236045 
		0.0094093990344852833 0.017828116825855854 0.03520022693747988 0.093066140138501466 
		0.41792403004136658 0.41792403004136658;
	setAttr -s 8 ".wl[29].w[0:7]"  0.0034750886956416436 0.0052621784864219029 
		0.0095107199967546276 0.018033777676773645 0.035644041754719046 0.094025279459904632 
		0.41702445696489227 0.41702445696489227;
	setAttr -s 8 ".wl[30].w[0:7]"  0.0038598343843896247 0.0058288821587031778 
		0.010480305616925745 0.01972266400388676 0.038545176438561209 0.099083703151211594 
		0.41123971712316099 0.41123971712316088;
	setAttr -s 8 ".wl[31].w[0:7]"  0.0034944634986746356 0.0052899266119531144 
		0.0095558579605064774 0.018105614524006188 0.035748124393994891 0.094132912223193713 
		0.41683655039383549 0.41683655039383549;
	setAttr -s 8 ".wl[32].w[0:7]"  0.0034165297599921657 0.0051730736206651532 
		0.0093519713849531116 0.017732766041478325 0.035049087491949286 0.092863527104108681 
		0.4182065222984267 0.41820652229842659;
	setAttr -s 8 ".wl[33].w[0:7]"  0.0037045031399125651 0.0055930587725396353 
		0.010062961805526217 0.018937273650041365 0.03701024162734886 0.096222189937998887 
		0.41423488553331639 0.41423488553331617;
	setAttr -s 8 ".wl[34].w[0:7]"  0.0032636249538785865 0.004940489061663245 
		0.0089371823439890006 0.01694626267045431 0.033494551363786644 0.089769808832794437 
		0.42132404038671684 0.42132404038671684;
	setAttr -s 8 ".wl[35].w[0:7]"  0.0032288211672327977 0.0048859636829483013 
		0.0088358916967834975 0.016741484615929742 0.033054756235801314 0.088788278351572561 
		0.4222324021248659 0.4222324021248659;
	setAttr -s 8 ".wl[36].w[0:7]"  0.0035473493771273246 0.0053545909164237461 
		0.0096402948059244719 0.018141865528203332 0.035455727805386188 0.093243211203073148 
		0.41730848018193095 0.41730848018193095;
	setAttr -s 8 ".wl[37].w[0:7]"  0.0032288205990443327 0.0048859628279485047 
		0.0088358901670969707 0.016741481789019418 0.033054750945219001 0.088788266387683529 
		0.42223241364199399 0.42223241364199421;
	setAttr -s 8 ".wl[38].w[0:7]"  0.0014070901583811421 0.0022325296934541596 
		0.0044151820166829694 0.0096001672708962964 0.023532797343776914 0.10503836434202456 
		0.45421925288785098 0.39955461628693306;
	setAttr -s 8 ".wl[39].w[0:7]"  0.0016602264461505953 0.0026048230193829944 
		0.0050385791922480678 0.010565272921211922 0.024320491640618117 0.090849328524600315 
		0.43248063912789397 0.43248063912789397;
	setAttr -s 8 ".wl[40].w[0:7]"  0.0024589061413179919 0.0038183501183010156 
		0.0072369886417736019 0.01467909664554099 0.031921575044459492 0.10198423876244875 
		0.41895042232307894 0.41895042232307916;
	setAttr -s 8 ".wl[41].w[0:7]"  0.0037889509832494685 0.0058416770992713689 
		0.010910971540364916 0.021587619483697397 0.044906709323921157 0.12647305580268053 
		0.39324550788340756 0.39324550788340756;
	setAttr -s 8 ".wl[42].w[0:7]"  0.0053712655164956016 0.0082648715437813672 
		0.015353442300990701 0.030004992179842416 0.060684300471411837 0.15492278110762023 
		0.36269917343992897 0.36269917343992897;
	setAttr -s 8 ".wl[43].w[0:7]"  0.0071083350853510044 0.010969558706892367 
		0.020437222976941439 0.039858704485095098 0.079187293665968508 0.18449929010907196 
		0.32896979748533978 0.32896979748533978;
	setAttr -s 8 ".wl[44].w[0:7]"  0.0088977402814978505 0.013812339622711344 
		0.025936151868766511 0.050744530073319506 0.099273007261292498 0.20984413818176112 
		0.29604507533123553 0.2954470173794157;
	setAttr -s 8 ".wl[45].w[0:7]"  0.010490556816068605 0.016407341254814665 
		0.031134736807562621 0.061272759696576987 0.11805849434470465 0.22608950890074925 
		0.27198904385157047 0.26455755832795264;
	setAttr -s 8 ".wl[46].w[0:7]"  0.011897182922360939 0.018763334873347304 
		0.036034417143915254 0.07140143203872687 0.13522156451010506 0.23425469535211438 
		0.25522218808694552 0.2372051850724847;
	setAttr -s 8 ".wl[47].w[0:7]"  0.016102030006505945 0.026491405785396011 
		0.054223815112064581 0.11152791994045565 0.19123241573991448 0.22463140535843712 
		0.21957350999005126 0.15621749806717491;
	setAttr -s 8 ".wl[48].w[0:7]"  0.001230613050148651 0.0019386593230039091 
		0.0037792613705944079 0.0080389253275599728 0.019023002642502902 0.077340212661289195 
		0.44685475138053676 0.44179457424436419;
	setAttr -s 8 ".wl[49].w[0:7]"  0.0017242107217437096 0.0026864814839478511 
		0.0051251607510087822 0.010525786672457708 0.023454625762785297 0.08071119644484627 
		0.43788626908160516 0.43788626908160516;
	setAttr -s 8 ".wl[50].w[0:7]"  0.0027050722119116685 0.0041810763069125975 
		0.007850743072709037 0.015707376744579438 0.033453524148980708 0.10154571281741982 
		0.41727824734874341 0.4172782473487433;
	setAttr -s 8 ".wl[51].w[0:7]"  0.003999234256548371 0.0061532957277832751 
		0.011442977085308798 0.022501773659477399 0.046381106796436262 0.12749776708076699 
		0.39101192269683932 0.39101192269683954;
	setAttr -s 8 ".wl[52].w[0:7]"  0.0054882916058885843 0.0084381816964046157 
		0.015644317247243984 0.030496472737566782 0.061456409389762864 0.15513010773950223 
		0.36167310979181549 0.36167310979181549;
	setAttr -s 8 ".wl[53].w[0:7]"  0.007112219522415998 0.010964302233286904 
		0.020381808132709477 0.039652806190156022 0.078589791599215225 0.18240802751158752 
		0.33044552240531433 0.33044552240531455;
	setAttr -s 8 ".wl[54].w[0:7]"  0.0087824489090245518 0.013609002124864674 
		0.025467511694970892 0.049657277050810987 0.09697779536465409 0.20598322559743451 
		0.29980386785417534 0.29971887140406489;
	setAttr -s 8 ".wl[55].w[0:7]"  0.010313349507247459 0.016086261868633028 
		0.030375802136818755 0.059493701228181921 0.11449702481163306 0.2221807780951289 
		0.27589457036115689 0.2711585119912;
	setAttr -s 8 ".wl[56].w[0:7]"  0.011572303261512462 0.018177519419233044 
		0.034670522744769679 0.068292077870603402 0.12957664243791941 0.23100615569706018 
		0.2598340521267723 0.24687072644212948;
	setAttr -s 8 ".wl[57].w[0:7]"  0.004610298168655675 0.0069371527680988747 
		0.012398467665729201 0.023082789809305778 0.044311535539923362 0.11001017631209332 
		0.39932478986809689 0.39932478986809689;
	setAttr -s 8 ".wl[58].w[0:7]"  0.0055205710028249913 0.0082922560985698914 
		0.014762583485782212 0.027286071914900237 0.051670240758999036 0.12330388568129981 
		0.3845821955288119 0.3845821955288119;
	setAttr -s 8 ".wl[59].w[0:7]"  0.0064273695424791428 0.009658358561201447 
		0.017189782650783355 0.031684264618495932 0.059473276949055166 0.13711969619190495 
		0.36922362574303991 0.36922362574304013;
	setAttr -s 8 ".wl[60].w[0:7]"  0.0074111844673409545 0.011165470458312163 
		0.0199355939434438 0.036786084223930302 0.068663561666975792 0.15280428432192486 
		0.35161691045903609 0.35161691045903598;
	setAttr -s 8 ".wl[61].w[0:7]"  0.0085431149575925583 0.012929649335497739 
		0.0232304388186425 0.043042279984845902 0.079980973411910461 0.17059231680006132 
		0.33084061334572479 0.33084061334572479;
	setAttr -s 8 ".wl[62].w[0:7]"  0.0097990417113620054 0.014924285575628233 
		0.027054932458592029 0.05045358792268579 0.09331162049631013 0.18892089597183473 
		0.30776781793179353 0.30776781793179353;
	setAttr -s 8 ".wl[63].w[0:7]"  0.011113884114465624 0.017059675631336754 
		0.031277493101438472 0.05882094961305856 0.10816254005800968 0.20580870900609993 
		0.28387837423779549 0.28387837423779549;
	setAttr -s 8 ".wl[64].w[0:7]"  0.012353259805365309 0.019132940393257421 
		0.035546056661588284 0.067524750775062065 0.12331135485772318 0.21891231667592709 
		0.26299851240883687 0.26022080842223971;
	setAttr -s 8 ".wl[65].w[0:7]"  0.013262956411567141 0.020721329967421369 
		0.039008094138637317 0.074881581261729488 0.13587486902092541 0.22623517597615134 
		0.25010755459490969 0.23990843862865821;
	setAttr -s 8 ".wl[66].w[0:7]"  0.0040793095688429317 0.0061542402965279342 
		0.011058723425317768 0.020747056238057816 0.040294702869166532 0.10319163328095481 
		0.40723716716056635 0.4072371671605659;
	setAttr -s 8 ".wl[67].w[0:7]"  0.0050056737806595392 0.0075328142738079942 
		0.013465207902837081 0.025035981221650287 0.047857645205134844 0.11726716055226621 
		0.39191775853182209 0.39191775853182209;
	setAttr -s 8 ".wl[68].w[0:7]"  0.0060565253335489897 0.0091065109314860497 
		0.016236632769399982 0.030009619058075771 0.056613185963317242 0.13282978754114397 
		0.37457386920151403 0.37457386920151403;
	setAttr -s 8 ".wl[69].w[0:7]"  0.0071482683330963519 0.010770352012081732 
		0.019246224462931019 0.035561457469291603 0.066571218365753776 0.15000999032416817 
		0.35534624451633867 0.35534624451633867;
	setAttr -s 8 ".wl[70].w[0:7]"  0.0083974365468256745 0.012710443964668288 
		0.022853219758181598 0.042381508206468903 0.078887769535704144 0.16958619317386131 
		0.33259171440714508 0.33259171440714497;
	setAttr -s 8 ".wl[71].w[0:7]"  0.0097779121232288903 0.014901971429326618 
		0.027055810125218547 0.050529333110629723 0.093562742338346064 0.18988813846488456 
		0.30714204620418267 0.30714204620418289;
	setAttr -s 8 ".wl[72].w[0:7]"  0.011213125856250622 0.017237698104645958 
		0.031691667180723797 0.059745761227464951 0.10992762606698793 0.20824403926125984 
		0.28097004115133345 0.28097004115133345;
	setAttr -s 8 ".wl[73].w[0:7]"  0.012523599974003015 0.019443716984939002 
		0.036276254861554551 0.069161234545173839 0.12627176424229986 0.22153178005635571 
		0.25966088030177042 0.25513076903390358;
	setAttr -s 8 ".wl[74].w[0:7]"  0.013601748447451791 0.021330426619295281 
		0.040401699883886227 0.077907592057231537 0.14085543329086858 0.22841095477300621 
		0.24588122261470405 0.23161092231355629;
	setAttr -s 8 ".wl[75].w[0:7]"  0.0015856863426381967 0.0025160327135187979 
		0.0049696659513342864 0.010797881478212106 0.026436608976168952 0.11349248712884416 
		0.44255438384049933 0.39764725356878411;
	setAttr -s 8 ".wl[76].w[0:7]"  0.0018322262994032428 0.0028738299561331757 
		0.005549025172555103 0.011616137765764067 0.026667726804264685 0.096623400938529308 
		0.42741882653167523 0.42741882653167523;
	setAttr -s 8 ".wl[77].w[0:7]"  0.0026113677140220757 0.0040560496593032369 
		0.0076824643742366885 0.015582674314894112 0.033886520372993403 0.10639860431013971 
		0.41489115962720541 0.41489115962720541;
	setAttr -s 8 ".wl[78].w[0:7]"  0.0039180538095551116 0.0060420151267595581 
		0.011278296238443977 0.022314380224109562 0.046418521817129264 0.12903201086634228 
		0.39049836095883017 0.39049836095883006;
	setAttr -s 8 ".wl[79].w[0:7]"  0.0054809847582498504 0.0084354108555770215 
		0.015661167562626616 0.030606374858715722 0.061900581034096396 0.15632964253156326 
		0.36079291919958562 0.36079291919958562;
	setAttr -s 8 ".wl[80].w[0:7]"  0.0072026251825975827 0.011117285405037905 
		0.020700712131567035 0.040372587235266127 0.080208224596196948 0.18511348446099743 
		0.32764254049416852 0.32764254049416852;
	setAttr -s 8 ".wl[81].w[0:7]"  0.0089800335666559913 0.013942878130002449 
		0.026166546252505613 0.051195300673118935 0.10015486296007242 0.20991461124552402 
		0.2951174321469468 0.29452833502517378;
	setAttr -s 8 ".wl[82].w[0:7]"  0.010564031611841343 0.016525600873212608 
		0.031341555918820138 0.061679777072807598 0.1188427232137917 0.22584555712964649 
		0.27127311831721385 0.26392763586266643;
	setAttr -s 8 ".wl[83].w[0:7]"  0.011963700261955205 0.018872108376867303 
		0.036223023913829783 0.071775152210938845 0.1359293233303924 0.23384642375140963 
		0.2546191951028503 0.2367710730517566;
	setAttr -s 8 ".wl[84].w[0:7]"  0.004172419333769513 0.0062979328758350564 
		0.011316465748588061 0.021248683115509814 0.041321839492096051 0.10504100353376347 
		0.40530082795021899 0.40530082795021899;
	setAttr -s 8 ".wl[85].w[0:7]"  0.0051307449811531713 0.0077225313775517966 
		0.013796329287051266 0.025651638166354906 0.049034507073135912 0.11907583589987757 
		0.38979420660743752 0.38979420660743774;
	setAttr -s 8 ".wl[86].w[0:7]"  0.0061687770084224176 0.0092770214293736511 
		0.016531439567450821 0.030554500489520724 0.057641105502937336 0.13415221526169283 
		0.37283747037030129 0.37283747037030107;
	setAttr -s 8 ".wl[87].w[0:7]"  0.0072496499471081813 0.010925100697569801 
		0.019512151415436621 0.036052813462753373 0.067491038714516047 0.15094087351709404 
		0.35391418612276099 0.35391418612276099;
	setAttr -s 8 ".wl[88].w[0:7]"  0.0084888557772453081 0.012851160522844934 
		0.02309381335888366 0.042827691272595843 0.079718282379180161 0.17015196257094445 
		0.33143411705915288 0.33143411705915288;
	setAttr -s 8 ".wl[89].w[0:7]"  0.009860364151075331 0.015030411279211784 
		0.027274333795256164 0.050937447220578677 0.094318427979617786 0.1901194899372485 
		0.306229762818506 0.30622976281850578;
	setAttr -s 8 ".wl[90].w[0:7]"  0.011287742425805231 0.017355692231752842 
		0.031891312061131688 0.060122135684224039 0.11062012611055916 0.20819316891850204 
		0.28026491128401249 0.28026491128401249;
	setAttr -s 8 ".wl[91].w[0:7]"  0.012591763421701206 0.019553356475059014 
		0.036460837911899246 0.069513144952868172 0.12691426792701596 0.22127875313202411 
		0.25908787581491444 0.25460000036451791;
	setAttr -s 8 ".wl[92].w[0:7]"  0.013664599833179469 0.021433268793823797 
		0.040574137253215709 0.078240107279703666 0.14145661444023225 0.2280411685865345 
		0.24537313694296622 0.23121696687034443;
	setAttr -s 8 ".wl[93].w[0:7]"  0.0016774159781567468 0.0026625765347772423 
		0.0052595740054565939 0.0114361741364202 0.028033383486816166 0.11866537251738113 
		0.43796505477301761 0.3943004485679743;
	setAttr -s 8 ".wl[94].w[0:7]"  0.0019518242748784269 0.0030636547175590086 
		0.0059189214540105528 0.012410980800558189 0.02856768673249421 0.10239051386026631 
		0.42284820908011678 0.42284820908011655;
	setAttr -s 8 ".wl[95].w[0:7]"  0.0027660273035576967 0.0042973061336046984 
		0.008133921560602355 0.016498384270610324 0.035877848130891177 0.11068876148351837 
		0.41086887555860774 0.41086887555860774;
	setAttr -s 8 ".wl[96].w[0:7]"  0.0041181079786541917 0.0063526526321953649 
		0.011846817577680789 0.023439213591770973 0.048758408704245429 0.13282638085272575 
		0.38632920933136389 0.38632920933136367;
	setAttr -s 8 ".wl[97].w[0:7]"  0.0057268322352247852 0.0088178408964991739 
		0.016349667195292929 0.031951898011633062 0.064621862044198591 0.15932112420118927 
		0.35660538770798106 0.35660538770798106;
	setAttr -s 8 ".wl[98].w[0:7]"  0.0074881142265823403 0.011565011889615945 
		0.02149703372439251 0.041925654152273409 0.083293708332989241 0.18683741571365736 
		0.32369653098024448 0.3236965309802447;
	setAttr -s 8 ".wl[99].w[0:7]"  0.009294681404204929 0.014442599396429955 
		0.027045494443099477 0.052914976507495222 0.10351910925831194 0.21009488580181698 
		0.29162241721068627 0.2910658359779551;
	setAttr -s 8 ".wl[100].w[0:7]"  0.010898814232434448 0.017065229855283554 
		0.032281435537675256 0.063529454389839021 0.12240664848408198 0.22469108294414292 
		0.26804905810401375 0.26107827645252907;
	setAttr -s 8 ".wl[101].w[0:7]"  0.012312500507429115 0.019443469898660106 
		0.037209018397924655 0.073728880888372164 0.13962934194441107 0.23169762919379203 
		0.2514877028204191 0.23449145634899185;
	setAttr -s 8 ".wl[102].w[0:7]"  0.016445712727925242 0.027106200189943717 
		0.05522531215692502 0.11358780964481736 0.19476443397498577 0.22263250138586474 0.21536389781404675 
		0.15487413210549142;
	setAttr -s 8 ".wl[103].w[0:7]"  0.0014224359666581944 0.0022414738576118911 
		0.0043662435963264393 0.0092875042388341524 0.021977591213337404 0.086715660860830754 
		0.43911285630672997 0.43487623395967112;
	setAttr -s 8 ".wl[104].w[0:7]"  0.0019371236448373368 0.0030191475899140688 
		0.0057548685455733094 0.011819047683762296 0.026336401848157338 0.08835165748125752 
		0.43139087660324904 0.43139087660324904;
	setAttr -s 8 ".wl[105].w[0:7]"  0.0029442510439241284 0.0045524259306884834 
		0.0085391731611324899 0.017084753466887578 0.0363870569846199 0.10774185197302767 
		0.41137524371985984 0.41137524371985984;
	setAttr -s 8 ".wl[106].w[0:7]"  0.0042709473618323468 0.0065743436122127656 
		0.012210131872691331 0.02401032433211157 0.049490554278191858 0.13248737585113363 
		0.38547816134591312 0.38547816134591334;
	setAttr -s 8 ".wl[107].w[0:7]"  0.0057937654099265721 0.0089129272282888472 
		0.016497562265050423 0.032159759244504801 0.064808264791489406 0.1588323153820482 
		0.35649770283934584 0.35649770283934584;
	setAttr -s 8 ".wl[108].w[0:7]"  0.0074468681777480868 0.011488338457717981 
		0.021312954089782631 0.041464349646094821 0.082180172409912405 0.18455939685064243 
		0.3257739601840508 0.3257739601840508;
	setAttr -s 8 ".wl[109].w[0:7]"  0.0091387636912726149 0.014173292287266539 
		0.02645946885651514 0.051591428205926826 0.10075509974870688 0.20646115928219197 
		0.29575020083858 0.29567058708954003;
	setAttr -s 8 ".wl[110].w[0:7]"  0.010684912874559922 0.016682584054382148 
		0.031413722060829617 0.061526552024214469 0.11840928210663475 0.22122561305356472 
		0.27226025953099997 0.26779707429481436;
	setAttr -s 8 ".wl[111].w[0:7]"  0.011953826800462588 0.018798253823265668 
		0.035742119686857872 0.070402848701367635 0.13358160927223886 0.2290263051123852 
		0.25638198873317319 0.24411304787024896;
	setAttr -s 8 ".wl[112].w[0:7]"  0.0047984223157617398 0.0072222824269424727 
		0.01289710908533831 0.024011133264936056 0.046093656902218103 0.11291442811636059 
		0.39603148394422139 0.39603148394422139;
	setAttr -s 8 ".wl[113].w[0:7]"  0.0057443729040220423 0.0086315096329457885 
		0.015350113145314686 0.028372018533520206 0.053726642675173943 0.12620367062625359 
		0.38098583624138493 0.38098583624138482;
	setAttr -s 8 ".wl[114].w[0:7]"  0.0066893305211403976 0.010056490595178602 
		0.017874529258960502 0.032946391637159705 0.061842364783022193 0.13993539560445806 
		0.36532774880004043 0.36532774880004021;
	setAttr -s 8 ".wl[115].w[0:7]"  0.0077109917859771197 0.01162356262888093 
		0.020719495109395511 0.038232575078215598 0.071363528680842517 0.15532942003279696 
		0.3475102133419456 0.34751021334194582;
	setAttr -s 8 ".wl[116].w[0:7]"  0.0088765649442761781 0.013443377783860497 
		0.024105498290368912 0.044663627965273317 0.082993765505894546 0.17250039999556926 
		0.32670838275737862 0.32670838275737862;
	setAttr -s 8 ".wl[117].w[0:7]"  0.010158661650204107 0.015484534212394405 
		0.028004492622322012 0.052224382725723661 0.096586627175062306 0.18989406280662702 
		0.30382361940383323 0.30382361940383323;
	setAttr -s 8 ".wl[118].w[0:7]"  0.011491557598050149 0.017656217022226518 
		0.032282897781223591 0.0607117372560858 0.11163942846116136 0.20565638736700134 0.28028088725712563 
		0.28028088725712563;
	setAttr -s 8 ".wl[119].w[0:7]"  0.012742261488150036 0.019757100207666505 
		0.036592273528894596 0.06951218735330468 0.12694074251697246 0.21766309197712483 
		0.25971237656218649 0.25707996636570035;
	setAttr -s 8 ".wl[120].w[0:7]"  0.013658022026544378 0.021364633689957502 
		0.040083032872195383 0.076945071336440671 0.13961912764697229 0.22418768911463902 
		0.24691588283842805 0.23722654047482278;
	setAttr -s 8 ".wl[121].w[0:7]"  0.0043179365604599897 0.0065165491446843443 
		0.011697490692810774 0.021945435118512307 0.042622181122094552 0.10726663235873732 
		0.40281688750135053 0.40281688750135031;
	setAttr -s 8 ".wl[122].w[0:7]"  0.0052748632750622623 0.0079412510711946126 
		0.014177507187018712 0.026360379057849673 0.050389340007097327 0.12110634623806743 
		0.38737515658185506 0.38737515658185495;
	setAttr -s 8 ".wl[123].w[0:7]"  0.0063611987873641749 0.0095694894467663692 
		0.017036181155263976 0.031487398257352125 0.059401021895581711 0.13634850677304117 
		0.36989810184231525 0.36989810184231525;
	setAttr -s 8 ".wl[124].w[0:7]"  0.0074900939355980554 0.011292391864201052 
		0.020141896058125434 0.037216400107370942 0.06966928077067748 0.15306160894238527 
		0.35056416416082092 0.35056416416082092;
	setAttr -s 8 ".wl[125].w[0:7]"  0.0087723039763538367 0.013287864098748863 
		0.023838414711257909 0.044208561400565213 0.082288595945020845 0.17181175838425503 
		0.32789625074189915 0.32789625074189915;
	setAttr -s 8 ".wl[126].w[0:7]"  0.010177421555427058 0.015524870167028259 
		0.02811279000689491 0.052503344276663623 0.097217921962520493 0.19092398136320965 
		0.30276983533412805 0.30276983533412793;
	setAttr -s 8 ".wl[127].w[0:7]"  0.011627932491679262 0.017894381904770003 
		0.032799177950348327 0.061833657172915855 0.11376917702589853 0.20790173464494985 
		0.27708696940471922 0.277086969404719;
	setAttr -s 8 ".wl[128].w[0:7]"  0.012946777470178125 0.020125308717057908 
		0.037419336602963545 0.071340543343005061 0.13025067641793855 0.21993222484266692 
		0.25613076049051547 0.2518543721156743;
	setAttr -s 8 ".wl[129].w[0:7]"  0.014028845521845003 0.022030382093744728 
		0.041570113723154022 0.080160684064084553 0.14492901337845529 0.22589425778464695 
		0.24245222934400262 0.22893447409006698;
	setAttr -s 8 ".wl[130].w[0:7]"  0.0016713877547507841 0.0026523807938321291 
		0.0052370348299362844 0.011378809389690844 0.027858903425436593 0.11762778744177288 
		0.43776603587938268 0.39580766048519778;
	setAttr -s 8 ".wl[131].w[0:7]"  0.0019484580469433959 0.0030566787905508381 
		0.0058992065835618956 0.012349195643494848 0.028350644204372191 0.10106405274275458 
		0.42366588199416128 0.42366588199416105;
	setAttr -s 8 ".wl[132].w[0:7]"  0.0027660257776149755 0.0042973037720684774 
		0.0081339171403779272 0.016498375510123512 0.035877830114189539 0.11068871936025143 
		0.41086891416268706 0.41086891416268706;
	setAttr -s 8 ".wl[133].w[0:7]"  0.0041181092682900629 0.0063526546088144599 
		0.011846821198704772 0.023439220498726893 0.048758421902995244 0.13282640542324556 
		0.38632918354961149 0.38632918354961149;
	setAttr -s 8 ".wl[134].w[0:7]"  0.0057268322352247852 0.0088178408964991739 
		0.016349667195292929 0.031951898011633062 0.064621862044198591 0.15932112420118927 
		0.35660538770798106 0.35660538770798106;
	setAttr -s 8 ".wl[135].w[0:7]"  0.0074881131683570308 0.011565010280652968 
		0.021497030856668486 0.041925649035688545 0.083293700084204933 0.18683740856965972 
		0.32369654400238418 0.32369654400238418;
	setAttr -s 8 ".wl[136].w[0:7]"  0.009294681404204929 0.014442599396429955 
		0.027045494443099477 0.052914976507495222 0.10351910925831194 0.21009488580181698 
		0.29162241721068627 0.2910658359779551;
	setAttr -s 8 ".wl[137].w[0:7]"  0.010898814232434448 0.017065229855283554 
		0.032281435537675256 0.063529454389839021 0.12240664848408198 0.22469108294414292 
		0.26804905810401375 0.26107827645252907;
	setAttr -s 8 ".wl[138].w[0:7]"  0.012312500507429115 0.019443469898660106 
		0.037209018397924655 0.073728880888372164 0.13962934194441107 0.23169762919379203 
		0.2514877028204191 0.23449145634899185;
	setAttr -s 8 ".wl[139].w[0:7]"  0.0042705926608347881 0.0064470593631270473 
		0.011579411992174656 0.021742411689094823 0.042281982799400625 0.10671163010982027 
		0.40348345569277394 0.40348345569277394;
	setAttr -s 8 ".wl[140].w[0:7]"  0.0052748632750622623 0.0079412510711946126 
		0.014177507187018712 0.026360379057849673 0.050389340007097327 0.12110634623806743 
		0.38737515658185506 0.38737515658185495;
	setAttr -s 8 ".wl[141].w[0:7]"  0.0063611987873641749 0.0095694894467663692 
		0.017036181155263976 0.031487398257352125 0.059401021895581711 0.13634850677304117 
		0.36989810184231525 0.36989810184231525;
	setAttr -s 8 ".wl[142].w[0:7]"  0.0074900939355980554 0.011292391864201052 
		0.020141896058125434 0.037216400107370942 0.06966928077067748 0.15306160894238527 
		0.35056416416082092 0.35056416416082092;
	setAttr -s 8 ".wl[143].w[0:7]"  0.0087723039763538367 0.013287864098748863 
		0.023838414711257909 0.044208561400565213 0.082288595945020845 0.17181175838425503 
		0.32789625074189915 0.32789625074189915;
	setAttr -s 8 ".wl[144].w[0:7]"  0.010177419303260039 0.015524866809826661 
		0.02811278428058285 0.0525033348212081 0.097217908660145666 0.19092397343385004 0.30276985634556336 
		0.30276985634556336;
	setAttr -s 8 ".wl[145].w[0:7]"  0.011627932491679262 0.017894381904770003 
		0.032799177950348327 0.061833657172915855 0.11376917702589853 0.20790173464494985 
		0.27708696940471922 0.277086969404719;
	setAttr -s 8 ".wl[146].w[0:7]"  0.012946777470178125 0.020125308717057908 
		0.037419336602963545 0.071340543343005061 0.13025067641793855 0.21993222484266692 
		0.25613076049051547 0.2518543721156743;
	setAttr -s 8 ".wl[147].w[0:7]"  0.014028846812681607 0.022030384033308946 
		0.041570116962024478 0.080160688742150488 0.1449290170797741 0.2258942537631298 0.24245222295232147 
		0.22893446965460898;
	setAttr -s 8 ".wl[148].w[0:7]"  0.0015923717527815602 0.0025272396199086992 
		0.0049940784763299051 0.010858892918930958 0.026618299372102344 0.11456225564947496 
		0.44277334596421181 0.39607351624625975;
	setAttr -s 8 ".wl[149].w[0:7]"  0.0018363345936852605 0.0028818692476896873 
		0.0055704240731430108 0.011680240440717025 0.026885662732448488 0.097954546540880566 
		0.42659546118571812 0.42659546118571789;
	setAttr -s 8 ".wl[150].w[0:7]"  0.0026113666208716908 0.0040560479683117399 
		0.0076824612042738398 0.015582668030511638 0.03388650743932594 0.10639857281208312 
		0.414891187962311 0.414891187962311;
	setAttr -s 8 ".wl[151].w[0:7]"  0.0039180542260023295 0.006042015764705806 
		0.011278297409680326 0.022314382459769445 0.046418526096750692 0.12903201922791405 
		0.39049835240758862 0.39049835240758862;
	setAttr -s 8 ".wl[152].w[0:7]"  0.0054809847582498504 0.0084354108555770215 
		0.015661167562626616 0.030606374858715722 0.061900581034096396 0.15632964253156326 
		0.36079291919958562 0.36079291919958562;
	setAttr -s 8 ".wl[153].w[0:7]"  0.0072026262467593388 0.011117287022097116 
		0.020700715025477632 0.040372592412513127 0.080208233004082502 0.18511349237668073 
		0.32764252695619461 0.32764252695619484;
	setAttr -s 8 ".wl[154].w[0:7]"  0.0089800335666559913 0.013942878130002449 
		0.026166546252505613 0.051195300673118935 0.10015486296007242 0.20991461124552402 
		0.2951174321469468 0.29452833502517378;
	setAttr -s 8 ".wl[155].w[0:7]"  0.010564024522956121 0.016525590109566949 
		0.031341537040173548 0.061679746106004352 0.11884268600601521 0.2258455663111327 
		0.27127317008473689 0.26392767981941423;
	setAttr -s 8 ".wl[156].w[0:7]"  0.011963697787136842 0.018872104615629149 
		0.03622301738223737 0.071775142060864189 0.13592931364986829 0.23384643215202813 
		0.25461921003709287 0.23677108231514316;
	setAttr -s 8 ".wl[157].w[0:7]"  0.016102030006505945 0.026491405785396011 
		0.054223815112064581 0.11152791994045565 0.19123241573991448 0.22463140535843712 
		0.21957350999005126 0.15621749806717491;
	setAttr -s 8 ".wl[158].w[0:7]"  0.0012306122830670369 0.0019386581167269543 
		0.003779259029890499 0.0080389204021475546 0.019022991313865933 0.077340173623258984 
		0.44685478310487836 0.44179460212616478;
	setAttr -s 8 ".wl[159].w[0:7]"  0.0017242107192834125 0.0026864814801050617 
		0.005125160743727819 0.010525786657504447 0.023454625729464926 0.080711196353915118 
		0.43788626915799966 0.43788626915799966;
	setAttr -s 8 ".wl[160].w[0:7]"  0.0027050718314935865 0.0041810757213529056 
		0.0078507419845512596 0.015707374616039032 0.033453519849380081 0.10154570248727306 
		0.41727825675495506 0.41727825675495506;
	setAttr -s 8 ".wl[161].w[0:7]"  0.0039992346820819881 0.0061532963780317283 
		0.011442978274501839 0.022501775914568332 0.046381111073612091 0.12749777542829716 
		0.39101191412445346 0.39101191412445346;
	setAttr -s 8 ".wl[162].w[0:7]"  0.0054882858335859276 0.008438172913295983 
		0.01564430137912344 0.030496443474482916 0.061456357432734698 0.15513003017658705 
		0.36167320439509487 0.36167320439509509;
	setAttr -s 8 ".wl[163].w[0:7]"  0.0071122195153543056 0.010964302222238334 
		0.020381808113029035 0.039652806151867732 0.07858979152332983 0.18240802746320567 
		0.33044552250548759 0.33044552250548759;
	setAttr -s 8 ".wl[164].w[0:7]"  0.0087824399439780307 0.013608988529579041 
		0.025467487616318341 0.049657235525253668 0.096977734988206249 0.20598319868450812 
		0.29980395565107576 0.29971895906108076;
	setAttr -s 8 ".wl[165].w[0:7]"  0.010313347148079147 0.016086258291590928 
		0.030375795862813693 0.059493690856514791 0.11449701181846106 0.22218077938551514 
		0.27589458836888642 0.27115852826813891;
	setAttr -s 8 ".wl[166].w[0:7]"  0.011572302285534769 0.018177516874864779 
		0.034670514533239973 0.06829205389759721 0.12957658810038275 0.23100610788247006 
		0.25983409139559471 0.24687082503031577;
	setAttr -s 8 ".wl[167].w[0:7]"  0.0046102975749257322 0.0069371518809613697 
		0.012398466106714801 0.02308278700282955 0.044311530518600782 0.11001016668307352 
		0.39932480011644711 0.39932480011644711;
	setAttr -s 8 ".wl[168].w[0:7]"  0.0055205710030136537 0.00829225609885576 
		0.014762583486277915 0.027286071915816456 0.051670240760734037 0.12330388568379816 
		0.38458219552575207 0.38458219552575207;
	setAttr -s 8 ".wl[169].w[0:7]"  0.0064273695502305595 0.0096583585729758392 
		0.017189782671066748 0.031684264655882352 0.059473277019231732 0.13711969627754644 
		0.36922362562653321 0.36922362562653321;
	setAttr -s 8 ".wl[170].w[0:7]"  0.0074111872644625114 0.011165474613578991 
		0.019935601118093327 0.0367860965947324 0.068663581692152337 0.15280431092367069 
		0.35161687389665502 0.3516168738966548;
	setAttr -s 8 ".wl[171].w[0:7]"  0.0085431087355950387 0.012929640084946971 
		0.023230422899705006 0.04304225298853432 0.079980931905173094 0.17059227357799603 
		0.33084068490402485 0.33084068490402474;
	setAttr -s 8 ".wl[172].w[0:7]"  0.0097990405892932602 0.014924283904950625 
		0.027054929595143492 0.050453583175010142 0.093311613721963338 0.18892089136478019 
		0.30776782882442955 0.30776782882442955;
	setAttr -s 8 ".wl[173].w[0:7]"  0.011113873480678405 0.017059659772934482 
		0.031277466062542843 0.058820906180537695 0.10816248462573137 0.20580869555670114 
		0.28387845716043719 0.28387845716043697;
	setAttr -s 8 ".wl[174].w[0:7]"  0.012353258572607188 0.019132938550451482 
		0.035546053538118981 0.067524745950557005 0.12331134958024746 0.21891231809409337 
		0.26299852007665503 0.26022081563726951;
	setAttr -s 8 ".wl[175].w[0:7]"  0.013262957681766559 0.020721331871696533 
		0.039008097352584571 0.074881586035986186 0.13587487337906232 0.22623517259277248 
		0.25010754775063537 0.23990843333549602;
	setAttr -s 8 ".wl[176].w[0:7]"  0.0042179688805523514 0.0063647313619070106 
		0.011430018652759879 0.021443636058587113 0.04164759270020759 0.1055817195894224 
		0.40465716637828192 0.4046571663782817;
	setAttr -s 8 ".wl[177].w[0:7]"  0.0051307430465533412 0.0077225284895549662 
		0.013796324227538603 0.025651629121722922 0.049034491150793627 0.11907580717734516 
		0.38979423839324573 0.38979423839324573;
	setAttr -s 8 ".wl[178].w[0:7]"  0.0061687750741403549 0.0092770185511720556 
		0.01653143456625036 0.030554491702173541 0.057641090587960686 0.13415219147755111 
		0.372837499020376 0.372837499020376;
	setAttr -s 8 ".wl[179].w[0:7]"  0.0072496490426985733 0.010925099353026038 
		0.019512149090811032 0.036052809440572986 0.067491032156520442 0.15094086461796102 
		0.35391419814920494 0.35391419814920494;
	setAttr -s 8 ".wl[180].w[0:7]"  0.0084888557772453081 0.012851160522844934 
		0.02309381335888366 0.042827691272595843 0.079718282379180161 0.17015196257094445 
		0.33143411705915288 0.33143411705915288;
	setAttr -s 8 ".wl[181].w[0:7]"  0.0098603652641868402 0.015030412937209428 
		0.027274336637360803 0.050937451927466994 0.094318434654936376 0.19011949431097666 
		0.3062297521339315 0.3062297521339315;
	setAttr -s 8 ".wl[182].w[0:7]"  0.011287742425805231 0.017355692231752842 
		0.031891312061131688 0.060122135684224039 0.11062012611055916 0.20819316891850204 
		0.28026491128401249 0.28026491128401249;
	setAttr -s 8 ".wl[183].w[0:7]"  0.012591763421701206 0.019553356475059014 
		0.036460837911899246 0.069513144952868172 0.12691426792701596 0.22127875313202411 
		0.25908787581491444 0.25460000036451791;
	setAttr -s 8 ".wl[184].w[0:7]"  0.01366459215311517 0.021433257266119273 
		0.040574117849927212 0.078240079043692429 0.14145659124549184 0.22804119269939641 
		0.2453731761359145 0.23121699360634321;
	setAttr -s 8 ".wl[185].w[0:7]"  0.0014070901583811421 0.0022325296934541596 
		0.0044151820166829694 0.0096001672708962964 0.023532797343776914 0.10503836434202456 
		0.45421925288785098 0.39955461628693306;
	setAttr -s 8 ".wl[186].w[0:7]"  0.0016602255800234732 0.002604821663632934 
		0.0050385765865886469 0.0105652675349572 0.02432047968579747 0.090849292222154238 
		0.43248066836342297 0.43248066836342297;
	setAttr -s 8 ".wl[187].w[0:7]"  0.0024589050306375888 0.0038183484000717119 
		0.0072369854161998337 0.014679090239929884 0.031921561804688497 0.10198420542164886 
		0.41895045184341179 0.41895045184341179;
	setAttr -s 8 ".wl[188].w[0:7]"  0.003788951424448518 0.0058416777750890771 
		0.010910972782805941 0.021587621858126519 0.044906713882620485 0.12647306495865052 
		0.39324549865912961 0.39324549865912939;
	setAttr -s 8 ".wl[189].w[0:7]"  0.0053712654827559134 0.0082648714926722208 
		0.015353442208338539 0.030004992011031507 0.06068430018190682 0.15492278063516005 
		0.36269917399406743 0.36269917399406743;
	setAttr -s 8 ".wl[190].w[0:7]"  0.0071083361182558407 0.010969560276620424 
		0.020437225789767671 0.039858709526047593 0.079187301890958892 0.18449929802883003 
		0.32896978418475992 0.32896978418475969;
	setAttr -s 8 ".wl[191].w[0:7]"  0.0088977402814978505 0.013812339622711344 
		0.025936151868766511 0.050744530073319506 0.099273007261292498 0.20984413818176112 
		0.29604507533123553 0.2954470173794157;
	setAttr -s 8 ".wl[192].w[0:7]"  0.01049054905772176 0.016407328540651668 
		0.031134711182023454 0.061272708054106235 0.11805840610199068 0.22608945411173775 
		0.27198914276391001 0.26455770018785846;
	setAttr -s 8 ".wl[193].w[0:7]"  0.011897180441798282 0.018763331102897747 
		0.036034410587424681 0.071401421824778877 0.13522155465893332 0.2342547038033799 
		0.25522220318078304 0.2372051944000042;
	setAttr -s 8 ".wl[194].w[0:7]"  0.004079309167874922 0.0061542396947546051 
		0.01105872235990259 0.02074705429299115 0.040294699302060463 0.10319162610444327 
		0.40723717453898661 0.40723717453898639;
	setAttr -s 8 ".wl[195].w[0:7]"  0.0050056718293223102 0.0075328113605818564 
		0.013465202792906316 0.02503597207457366 0.047857629054155901 0.11726713091968276 
		0.39191779098438861 0.39191779098438861;
	setAttr -s 8 ".wl[196].w[0:7]"  0.0060565233856031036 0.0091065080326900617 
		0.016236627726435672 0.03000961018540237 0.056613170857727428 0.13282976307423142 
		0.37457389836895499 0.37457389836895499;
	setAttr -s 8 ".wl[197].w[0:7]"  0.0071482674234412454 0.010770350659606761 
		0.019246222121834394 0.0355614534129561 0.066571211730578617 0.15000998118303119 
		0.35534625673427589 0.35534625673427578;
	setAttr -s 8 ".wl[198].w[0:7]"  0.0083974365468256745 0.012710443964668288 
		0.022853219758181598 0.042381508206468903 0.078887769535704144 0.16958619317386131 
		0.33259171440714508 0.33259171440714497;
	setAttr -s 8 ".wl[199].w[0:7]"  0.0097779132404348414 0.014901973093615921 
		0.027055812981589589 0.050529337848977306 0.093562749088262481 0.18988814296992465 
		0.30714203538859758 0.30714203538859758;
	setAttr -s 8 ".wl[200].w[0:7]"  0.011213125889497787 0.017237698153359481 
		0.03169166726406146 0.059745761353150829 0.10992762619481877 0.20824403930733995 
		0.28097004091888572 0.28097004091888594;
	setAttr -s 8 ".wl[201].w[0:7]"  0.012523599974003015 0.019443716984939002 
		0.036276254861554551 0.069161234545173839 0.12627176424229986 0.22153178005635571 
		0.25966088030177042 0.25513076903390358;
	setAttr -s 8 ".wl[202].w[0:7]"  0.013601740752134196 0.021330415067120599 
		0.0404016804134298 0.077907563652685016 0.14085540967303581 0.22841097903575455 0.24588126217110259 
		0.23161094923473727;
	setAttr -s 8 ".wl[203].w[0:7]"  0.0013119782505374785 0.0020808482763532291 
		0.0041148349488268916 0.0089405406563896755 0.021889255188737883 0.099133090000845941 
		0.45979972455269524 0.40272972812561381;
	setAttr -s 8 ".wl[204].w[0:7]"  0.0015391646049103347 0.0024131179245777869 
		0.004665029495971763 0.0097656118856657113 0.022419386330990582 0.084641572584956415 
		0.43727805858646374 0.43727805858646374;
	setAttr -s 8 ".wl[205].w[0:7]"  0.0022993455370715994 0.0035697160052122786 
		0.0067703172521192539 0.0137325267802477 0.029863137031714729 0.09716049427142627 
		0.42330223156110414 0.42330223156110403;
	setAttr -s 8 ".wl[206].w[0:7]"  0.0035834840270115124 0.0055230432324155894 
		0.01032568250175272 0.02042961087430804 0.042497811326710634 0.12221502750604911 
		0.39771267026587631 0.39771267026587609;
	setAttr -s 8 ".wl[207].w[0:7]"  0.0051195464705597171 0.0078739280999965099 
		0.014646411938577988 0.028623253252779798 0.057889767841228103 0.15151963916634625 
		0.36716372661525581 0.36716372661525581;
	setAttr -s 8 ".wl[208].w[0:7]"  0.0068167632017109682 0.010513196886284298 
		0.019620942924576421 0.038266713896689029 0.076024485499988942 0.18245087914852914 
		0.33315350922111064 0.33315350922111053;
	setAttr -s 8 ".wl[209].w[0:7]"  0.008576971910707035 0.013304134427066912 
		0.025036102782712233 0.048983564309631779 0.09582796259965462 0.20947084374321806 
		0.29971769153190825 0.29908272869510116;
	setAttr -s 8 ".wl[210].w[0:7]"  0.010149384331223782 0.015859012329613193 
		0.030171869763114572 0.059377850824855138 0.11440744515874159 0.22717444715010782 
		0.27535501539538754 0.26750497504695642;
	setAttr -s 8 ".wl[211].w[0:7]"  0.011541552940257499 0.018182778303903177 
		0.035022974317477959 0.069397280900962255 0.13142606463271314 0.23642817287906584 
		0.25847921426833803 0.23952196175728219;
	setAttr -s 8 ".wl[212].w[0:7]"  0.015743150150104145 0.025854153249023758 
		0.053164485416051288 0.10934908674021607 0.18749646684125079 0.22705201645694575 
		0.22387563292244705 0.15746500822396123;
	setAttr -s 8 ".wl[213].w[0:7]"  0.0010331698411721461 0.0016271623255831424 
		0.0031744405791271817 0.00675240160233856 0.01597862216682553 0.067000200545643929 
		0.45533705314426509 0.44909694979504444;
	setAttr -s 8 ".wl[214].w[0:7]"  0.0015057819143940894 0.0023454288327393606 
		0.004478350822070664 0.009197400803999025 0.020494576290475165 0.072390133425461065 
		0.44479416395543037 0.44479416395543026;
	setAttr -s 8 ".wl[215].w[0:7]"  0.002460305995820884 0.0038013670441195179 
		0.0071451565411554813 0.014295674130450573 0.030446883493058286 0.094802384391466502 
		0.42352411420196434 0.42352411420196434;
	setAttr -s 8 ".wl[216].w[0:7]"  0.0037216024073741757 0.0057235312887322209 
		0.010657559900950601 0.020957305988074292 0.043197612626178598 0.12202356217946837 
		0.3968594128046109 0.3968594128046109;
	setAttr -s 8 ".wl[217].w[0:7]"  0.0051765780985183899 0.0079543991511034293 
		0.014771422397159834 0.028794884825916894 0.058027382861799787 0.1509985027561197 
		0.36713841495469102 0.36713841495469102;
	setAttr -s 8 ".wl[218].w[0:7]"  0.006771261770332237 0.01043130771134204 
		0.019430052980960188 0.037801166613967943 0.07491993863315688 0.17991666823222821 
		0.33536480202900626 0.33536480202900626;
	setAttr -s 8 ".wl[219].w[0:7]"  0.0084198375073747615 0.013035965634732777 
		0.024454050182783935 0.047681204939000188 0.093118655530988789 0.20528879146015228 
		0.3040462676097897 0.30395522713517753;
	setAttr -s 8 ".wl[220].w[0:7]"  0.0099353624408128442 0.015481183304579016 
		0.029314998756249544 0.057416023769619191 0.1104984857627473 0.22303858847215793 
		0.27967695896665823 0.27463839852717603;
	setAttr -s 8 ".wl[221].w[0:7]"  0.011184025201105945 0.017547680248377457 
		0.033574082469456056 0.06613236901149637 0.12547884695707798 0.23297810238851877 
		0.26341548080996274 0.24968941291400457;
	setAttr -s 8 ".wl[222].w[0:7]"  0.0044197405563567395 0.0066485270778743255 
		0.011892707454801948 0.022141193214893062 0.042503973319766845 0.10696264306858694 
		0.40271560765386011 0.40271560765386011;
	setAttr -s 8 ".wl[223].w[0:7]"  0.0052936026369827648 0.0079484947792329112 
		0.014165727917204662 0.02618288804585045 0.049581197810896302 0.1202312047618256 
		0.38829844202400371 0.38829844202400371;
	setAttr -s 8 ".wl[224].w[0:7]"  0.0061613818935977544 0.0092545406439498261 
		0.016493015023834646 0.030399980015161296 0.057062596541642523 0.13409769312896158 
		0.3732653963764262 0.3732653963764262;
	setAttr -s 8 ".wl[225].w[0:7]"  0.0071064848138564403 0.010700529596605394 
		0.01913676407217111 0.035312046228945321 0.065912176166089159 0.15004624217449011 
		0.3558928784739212 0.3558928784739212;
	setAttr -s 8 ".wl[226].w[0:7]"  0.0082040876255599065 0.012408200134153963 
		0.022337817002792245 0.041388396823139363 0.076907742007284854 0.16844931033246843 
		0.33515222303730063 0.33515222303730063;
	setAttr -s 8 ".wl[227].w[0:7]"  0.0094334669309812866 0.014355917023772778 
		0.026085837267454809 0.048646363694485356 0.089969241326131211 0.18774737859764848 
		0.31188089757976317 0.31188089757976295;
	setAttr -s 8 ".wl[228].w[0:7]"  0.010730027673247669 0.016454844214228898 
		0.030250884624185764 0.056890299804609294 0.10461239758252104 0.20582744821542698 
		0.2876170489428902 0.2876170489428902;
	setAttr -s 8 ".wl[229].w[0:7]"  0.011957868870249728 0.018500343826463917 
		0.034476953722978994 0.065493838874769922 0.11960257407516325 0.22010696496172857 
		0.26639922974914526 0.2634622259195003;
	setAttr -s 8 ".wl[230].w[0:7]"  0.012861197229084275 0.020069253906727758 
		0.037908385067002365 0.072770526607260438 0.13204427628789636 0.22829047540635625 
		0.25340539589012884 0.24265048960554378;
	setAttr -s 8 ".wl[231].w[0:7]"  0.0039318639857715597 0.0059327381629067592 
		0.010671429587897465 0.020037512748320434 0.038966503876485425 0.10081482567324827 
		0.40982256298268499 0.40982256298268499;
	setAttr -s 8 ".wl[232].w[0:7]"  0.0048589453398033425 0.0073103578716026728 
		0.013076373093931273 0.024313029512092403 0.046475716540591593 0.11508908721770351 
		0.39443824521213761 0.39443824521213761;
	setAttr -s 8 ".wl[233].w[0:7]"  0.0058605597484026571 0.0088090204886323784 
		0.015721340795395212 0.029057222793156003 0.054816490821990686 0.13044650503639457 
		0.3776444301580143 0.37764443015801419;
	setAttr -s 8 ".wl[234].w[0:7]"  0.0069032717630935821 0.010396671948472481 
		0.018602625769076661 0.034372272895325892 0.064345058112713793 0.14766756824529664 
		0.35885626563301054 0.35885626563301054;
	setAttr -s 8 ".wl[235].w[0:7]"  0.0081086307737409068 0.012266315076716662 
		0.022091758202406133 0.040969370688743088 0.076259255762270925 0.16769709472670805 
		0.33630378738470712 0.33630378738470712;
	setAttr -s 8 ".wl[236].w[0:7]"  0.0094550368248111933 0.01439958130797918 
		0.026198208789657271 0.04892767647857111 0.090597019766616757 0.18888958549466178 
		0.31076644566885125 0.31076644566885148;
	setAttr -s 8 ".wl[237].w[0:7]"  0.010866873592124168 0.016690898539690077 
		0.030762838060234596 0.057994709049172144 0.10670580751724937 0.20841485334723625 
		0.28428200994714681 0.28428200994714659;
	setAttr -s 8 ".wl[238].w[0:7]"  0.012162208457381619 0.01886335576260726 
		0.035294712259716914 0.067289909645953674 0.12285517890353966 0.22284145998098789 
		0.26272830225420962 0.25796487273560348;
	setAttr -s 8 ".wl[239].w[0:7]"  0.013230716961585138 0.020724436576197235 
		0.039380326022804127 0.075938060500580204 0.1372945846647457 0.23058914186542262 
		0.24890604062241869 0.23393669278624626;
	setAttr -s 8 ".wl[240].w[0:7]"  0.0013119782505374785 0.0020808482763532291 
		0.0041148349488268916 0.0089405406563896755 0.021889255188737883 0.099133090000845941 
		0.45979972455269524 0.40272972812561381;
	setAttr -s 8 ".wl[241].w[0:7]"  0.0015391646984504711 0.0024131182116100876 
		0.0046650305743839923 0.0097656158565333946 0.022419401750674535 0.08464168804116802 
		0.43727799043358972 0.43727799043358972;
	setAttr -s 8 ".wl[242].w[0:7]"  0.0022993455370715994 0.0035697160052122786 
		0.0067703172521192539 0.0137325267802477 0.029863137031714729 0.09716049427142627 
		0.42330223156110414 0.42330223156110403;
	setAttr -s 8 ".wl[243].w[0:7]"  0.0035834832123447105 0.0055230419849465898 
		0.010325680203448746 0.020429606476582537 0.042497802857884279 0.12221500968415588 
		0.39771268779031849 0.39771268779031871;
	setAttr -s 8 ".wl[244].w[0:7]"  0.0051195464705597171 0.0078739280999965099 
		0.014646411938577988 0.028623253252779798 0.057889767841228103 0.15151963916634625 
		0.36716372661525581 0.36716372661525581;
	setAttr -s 8 ".wl[245].w[0:7]"  0.0068167632017109682 0.010513196886284298 
		0.019620942924576421 0.038266713896689029 0.076024485499988942 0.18245087914852914 
		0.33315350922111064 0.33315350922111053;
	setAttr -s 8 ".wl[246].w[0:7]"  0.008576971910707035 0.013304134427066912 
		0.025036102782712233 0.048983564309631779 0.09582796259965462 0.20947084374321806 
		0.29971769153190825 0.29908272869510116;
	setAttr -s 8 ".wl[247].w[0:7]"  0.010149384331223782 0.015859012329613193 
		0.030171869763114572 0.059377850824855138 0.11440744515874159 0.22717444715010782 
		0.27535501539538754 0.26750497504695642;
	setAttr -s 8 ".wl[248].w[0:7]"  0.011541552940257499 0.018182778303903177 
		0.035022974317477959 0.069397280900962255 0.13142606463271314 0.23642817287906584 
		0.25847921426833803 0.23952196175728219;
	setAttr -s 8 ".wl[249].w[0:7]"  0.0039318639857715597 0.0059327381629067592 
		0.010671429587897465 0.020037512748320434 0.038966503876485425 0.10081482567324827 
		0.40982256298268499 0.40982256298268499;
	setAttr -s 8 ".wl[250].w[0:7]"  0.0048589453398033425 0.0073103578716026728 
		0.013076373093931273 0.024313029512092403 0.046475716540591593 0.11508908721770351 
		0.39443824521213761 0.39443824521213761;
	setAttr -s 8 ".wl[251].w[0:7]"  0.0058605597484026571 0.0088090204886323784 
		0.015721340795395212 0.029057222793156003 0.054816490821990686 0.13044650503639457 
		0.3776444301580143 0.37764443015801419;
	setAttr -s 8 ".wl[252].w[0:7]"  0.0069032699836224336 0.010396669304596909 
		0.018602621178612676 0.034372264934130869 0.064345045061835429 0.14766754938662674 
		0.35885629007528758 0.35885629007528735;
	setAttr -s 8 ".wl[253].w[0:7]"  0.0081086307737409068 0.012266315076716662 
		0.022091758202406133 0.040969370688743088 0.076259255762270925 0.16769709472670805 
		0.33630378738470712 0.33630378738470712;
	setAttr -s 8 ".wl[254].w[0:7]"  0.0094550368248111933 0.01439958130797918 
		0.026198208789657271 0.04892767647857111 0.090597019766616757 0.18888958549466178 
		0.31076644566885125 0.31076644566885148;
	setAttr -s 8 ".wl[255].w[0:7]"  0.010866873592124168 0.016690898539690077 
		0.030762838060234596 0.057994709049172144 0.10670580751724937 0.20841485334723625 
		0.28428200994714681 0.28428200994714659;
	setAttr -s 8 ".wl[256].w[0:7]"  0.012162208457381619 0.01886335576260726 
		0.035294712259716914 0.067289909645953674 0.12285517890353966 0.22284145998098789 
		0.26272830225420962 0.25796487273560348;
	setAttr -s 8 ".wl[257].w[0:7]"  0.013230716961585138 0.020724436576197235 
		0.039380326022804127 0.075938060500580204 0.1372945846647457 0.23058914186542262 
		0.24890604062241869 0.23393669278624626;
	setAttr -s 8 ".wl[258].w[0:7]"  0.032016427442498135 0.054028881930753885 
		0.1072632907653204 0.17336271480380552 0.19114520070050497 0.18870946207906986 0.1488287294711387 
		0.10464529280690847;
	setAttr -s 8 ".wl[259].w[0:7]"  0.023458919217004829 0.041618766572609892 
		0.093813465375481742 0.18302131749428086 0.21369902984455205 0.20928475749097025 
		0.14467660616967351 0.090427137835426954;
	setAttr -s 8 ".wl[260].w[0:7]"  0.011869281398841245 0.022323119564849555 
		0.061287794246228489 0.18883792664321264 0.27534936068304755 0.26034120159146712 
		0.12130451800206403 0.05868679787028936;
	setAttr -s 8 ".wl[261].w[0:7]"  0.023320828934312404 0.041286650343507383 
		0.093516172148919427 0.18244132614879774 0.21302182136662767 0.20862153776472123 
		0.146691146255268 0.091100517037846135;
	setAttr -s 8 ".wl[262].w[0:7]"  0.023581883173223378 0.041916784174399889 
		0.094073668549076006 0.18352896657842119 0.21429177699262797 0.20986525960187974 
		0.14291386884726356 0.089827792083108329;
	setAttr -s 8 ".wl[263].w[0:7]"  0.032311491235975959 0.054709946689970722 
		0.1077273792454192 0.17411282422026195 0.19197226160869607 0.18952598252347158 0.14618041791812383 
		0.1034596965580807;
	setAttr -s 8 ".wl[264].w[0:7]"  0.023581884888135434 0.041916786833226957 
		0.094073671940233514 0.18352896470863481 0.21429177140217889 0.20986525460705796 
		0.14291387018408019 0.089827795436452237;
	setAttr -s 8 ".wl[265].w[0:7]"  0.011945953117994089 0.022519722802286965 
		0.061521156346184852 0.18955698838656002 0.27639787658688636 0.26133256167374158 
		0.11857315491429235 0.058152586172053926;
	setAttr -s 8 ".wl[266].w[0:7]"  0.011869281391303565 0.022323119545630404 
		0.06128779422302625 0.1888379265717223 0.27534936057880538 0.26034120149290668 0.12130451827410982 
		0.058686797922495613;
	setAttr -s 8 ".wl[267].w[0:7]"  0.023458919217004829 0.041618766572609892 
		0.093813465375481742 0.18302131749428086 0.21369902984455205 0.20928475749097025 
		0.14467660616967351 0.090427137835426954;
	setAttr -s 8 ".wl[268].w[0:7]"  0.032016427456148203 0.0540288819620778 
		0.10726329078711704 0.17336271483903412 0.1911452007393471 0.18870946211741702 0.14882872934700647 
		0.10464529275185221;
	setAttr -s 8 ".wl[269].w[0:7]"  0.023320828934312404 0.041286650343507383 
		0.093516172148919427 0.18244132614879774 0.21302182136662767 0.20862153776472123 
		0.146691146255268 0.091100517037846135;
	setAttr -s 8 ".wl[270].w[0:7]"  0.023195687206356261 0.040987975053219293 
		0.093242106896748833 0.18190665041402018 0.21239752422262456 0.20801013640983412 
		0.14854916792386205 0.091710751873334648;
	setAttr -s 8 ".wl[271].w[0:7]"  0.0117910297810274 0.022124735332903364 
		0.061044174851422675 0.18808732849989471 0.27425492804440954 0.25930641646938651 
		0.12416622524585452 0.059225161775101287;
	setAttr -s 8 ".wl[272].w[0:7]"  0.023195685529209496 0.040987972477373333 
		0.09324210353866394 0.18190665227331879 0.21239752977070886 0.20801014136741044 0.14854916663226819 
		0.09171074841104683;
	setAttr -s 8 ".wl[273].w[0:7]"  0.03171866546314929 0.053349546479032339 
		0.10678058660322055 0.17258258425676468 0.19028505891175426 0.18786027964444874 0.1515726911755402 
		0.10585058746609011;
	setAttr -s 8 ".wl[274].w[0:7]"  0.0046835675493166898 0.014600344974929744 
		0.34007111927658928 0.57453545842930243 0.044503575258031516 0.012358875330445588 
		0.0057569805943861151 0.0034900785869987228;
	setAttr -s 8 ".wl[275].w[0:7]"  0.0049915527334340529 0.01588397424470063 
		0.38239336813853503 0.53340927018267081 0.041873514864544693 0.012167726525756699 
		0.0057614172726044282 0.0035191760377537907;
	setAttr -s 8 ".wl[276].w[0:7]"  0.0049884106929088375 0.015851140500856849 
		0.38240506814917463 0.5334255649895745 0.041874800627729643 0.012168100262319905 
		0.0057659907839776861 0.0035209239934579275;
	setAttr -s 8 ".wl[277].w[0:7]"  0.0046755371340184114 0.014520381704234786 
		0.34009562557881357 0.57457681982405551 0.044506786285418536 0.012359767170273563 
		0.0057700904535452407 0.0034949918496404177;
	setAttr -s 8 ".wl[278].w[0:7]"  0.0049788656628957512 0.015752026508577325 
		0.38244030121958295 0.53347473821270219 0.041878654213787239 0.012169219932658555 
		0.0057799453225870446 0.0035262489272090097;
	setAttr -s 8 ".wl[279].w[0:7]"  0.0049757366603455531 0.015719731814810328 
		0.38245176468404479 0.53349072886191806 0.041879909506346 0.012169584699184941 0.0057845428982630917 
		0.0035280008750872118;
	setAttr -s 8 ".wl[280].w[0:7]"  0.0046675295195976766 0.014441282909551396 
		0.34011977546271888 0.5746176609528888 0.044509942673899676 0.012360643595094787 
		0.0057832510165180184 0.0034999138697308259;
	setAttr -s 8 ".wl[281].w[0:7]"  0.0049757366603455531 0.015719731814810328 
		0.38245176468404479 0.53349072886191806 0.041879909506346 0.012169584699184941 0.0057845428982630917 
		0.0035280008750872118;
	setAttr -s 8 ".wl[282].w[0:7]"  0.0049788656628957512 0.015752026508577325 
		0.38244030121958295 0.53347473821270219 0.041878654213787239 0.012169219932658555 
		0.0057799453225870446 0.0035262489272090097;
	setAttr -s 8 ".wl[283].w[0:7]"  0.0046755371340468678 0.014520381704516985 
		0.34009562557872725 0.57457681982390962 0.044506786285407239 0.012359767170270427 
		0.005770090453498633 0.0034949918496229677;
	setAttr -s 8 ".wl[284].w[0:7]"  0.0049884106929088375 0.015851140500856849 
		0.38240506814917463 0.5334255649895745 0.041874800627729643 0.012168100262319905 
		0.0057659907839776861 0.0035209239934579275;
	setAttr -s 8 ".wl[285].w[0:7]"  0.0049915527334340529 0.01588397424470063 
		0.38239336813853503 0.53340927018267081 0.041873514864544693 0.012167726525756699 
		0.0057614172726044282 0.0035191760377537907;
	setAttr -s 8 ".wl[286].w[0:7]"  0.90982610547717935 0.057207072861507231 
		0.015483467316716567 0.0065259282456519132 0.0039790956460238735 0.0029131100297341388 
		0.0022438042385847655 0.001821416184602195;
	setAttr -s 8 ".wl[287].w[0:7]"  0.90979746239435277 0.057297141907715933 
		0.015463565351353757 0.0065106413750796316 0.0039697746857871481 0.002906286121813823 
		0.0022382048484552485 0.0018169233154415533;
	setAttr -s 8 ".wl[288].w[0:7]"  0.90977361492378084 0.057410916972687007 
		0.015433510247926233 0.0064885817032284436 0.0039563240740046373 0.0028964388726415578 
		0.0022301540051161608 0.0018104592006151288;
	setAttr -s 8 ".wl[289].w[0:7]"  0.90976694251206736 0.05751423848290739 
		0.015400242116702829 0.0064652101200489143 0.0039420735983251966 0.0028860060574721217 
		0.0022216557716350136 0.0018036313408412584;
	setAttr -s 8 ".wl[290].w[0:7]"  0.90977345789787833 0.05758289669887301 
		0.015373771830880944 0.0064472389784991776 0.0039311159397614152 0.0028779839166746223 
		0.0022151407176550153 0.0017983940197774007;
	setAttr -s 8 ".wl[291].w[0:7]"  0.90977843517520085 0.057606432422039923 
		0.015363605492531927 0.006440466679677492 0.0039269865955382389 0.0028749608007076406 
		0.0022126897278886091 0.001796423106415453;
	setAttr -s 8 ".wl[292].w[0:7]"  0.90977345789787833 0.05758289669887301 
		0.015373771830880944 0.0064472389784991776 0.0039311159397614152 0.0028779839166746223 
		0.0022151407176550153 0.0017983940197774007;
	setAttr -s 8 ".wl[293].w[0:7]"  0.90976694251206736 0.05751423848290739 
		0.015400242116702829 0.0064652101200489143 0.0039420735983251966 0.0028860060574721217 
		0.0022216557716350136 0.0018036313408412584;
	setAttr -s 8 ".wl[294].w[0:7]"  0.90977361492378084 0.057410916972687007 
		0.015433510247926233 0.0064885817032284436 0.0039563240740046373 0.0028964388726415578 
		0.0022301540051161608 0.0018104592006151288;
	setAttr -s 8 ".wl[295].w[0:7]"  0.90979746239435277 0.057297141907715933 
		0.015463565351353757 0.0065106413750796316 0.0039697746857871481 0.002906286121813823 
		0.0022382048484552485 0.0018169233154415533;
	setAttr -s 8 ".wl[296].w[0:7]"  0.90982610547717935 0.057207072861507231 
		0.015483467316716567 0.0065259282456519132 0.0039790956460238735 0.0029131100297341388 
		0.0022438042385847655 0.001821416184602195;
	setAttr -s 8 ".wl[297].w[0:7]"  0.90983910066118201 0.057172586658752994 
		0.015490280302266422 0.0065313290086767032 0.0039823886596689635 0.0029155208481585521 
		0.0022457872391741574 0.0018230066221202395;
	setAttr -s 8 ".wl[298].w[0:7]"  0.99999873935191808 8.1796084986576435e-07 
		2.0956797819496204e-07 8.7234444010964902e-08 5.3041320510423623e-08 3.8786357028959235e-08 
		2.9842179045019329e-08 2.4214953256149748e-08;
	setAttr -s 8 ".wl[299].w[0:7]"  0.021435240378780966 0.038277374744623144 
		0.088755335234284416 0.18281820833398033 0.2195135414999449 0.21523307278205078 0.14584679884324636 
		0.088120428183088934;
	setAttr -s 8 ".wl[300].w[0:7]"  0.02124762145141226 0.037828799146095077 
		0.088315838427247301 0.18191293296524971 0.2184265589502653 0.21416728616756958 0.14901248349959939 
		0.089088479392561176;
	setAttr -s 8 ".wl[301].w[0:7]"  0.021435246933257893 0.038277389608169579 
		0.088755379575506291 0.18281827817506793 0.21951354350414634 0.21523304500443496 
		0.14584673137520163 0.088120385824215275;
	setAttr -s 8 ".wl[302].w[0:7]"  0.021620008506629606 0.038724442626185213 
		0.08917711531291854 0.18368699079177078 0.22055670626914697 0.21625589605372283 0.14281373307038447 
		0.087165107369241601;
	setAttr -s 8 ".wl[303].w[0:7]"  0.038073699665460335 0.068834494270385752 
		0.14422326078698461 0.19934628367388513 0.19938912209022763 0.16583582296252894 0.11027712599448983 
		0.074020190556037813;
	setAttr -s 8 ".wl[304].w[0:7]"  0.030041421770664715 0.057541186650557817 
		0.14023889910128787 0.22065271781472093 0.22072386303231004 0.16932176619785477 0.099323598892789092 
		0.062156546539814832;
	setAttr -s 8 ".wl[305].w[0:7]"  0.019351803208803822 0.039664155199060053 
		0.12360520201847422 0.265428861003082 0.26560016776771417 0.16520954919300021 0.077504504569979107 
		0.0436357570398863;
	setAttr -s 8 ".wl[306].w[0:7]"  0.029935585387841208 0.057198802295285053 
		0.14011859349346506 0.22046342825594248 0.22053451244076039 0.1691765115065344 0.10012376351814425 
		0.062448803102027141;
	setAttr -s 8 ".wl[307].w[0:7]"  0.029791059512104527 0.056735303849964634 
		0.13994955540342952 0.22019746830770559 0.22026846674380807 0.16897241969847876 0.10123513660392407 
		0.062850589880584895;
	setAttr -s 8 ".wl[308].w[0:7]"  0.01925274745162776 0.039300469798487919 
		0.12345330808330038 0.26510268513387808 0.26527378138586077 0.16500652918942887 0.078640698915315471 
		0.043969780042100844;
	setAttr -s 8 ".wl[309].w[0:7]"  0.029791061041419088 0.05673530615469724 
		0.13994955666202094 0.22019746344639024 0.22026846187487029 0.16897241931933088 0.10123513913826777 
		0.062850592363003596;
	setAttr -s 8 ".wl[310].w[0:7]"  0.037780710947017834 0.067981965508033315 
		0.14395974560278005 0.19898214889277199 0.19902490913437612 0.16553285055074463 0.11199357589871782 
		0.07474409346555827;
	setAttr -s 8 ".wl[311].w[0:7]"  0.019351819272779305 0.039664198585114739 
		0.12360538525811741 0.26542891127925955 0.26560019965916626 0.16520935023188263 0.077504417608740467 
		0.043635718104939554;
	setAttr -s 8 ".wl[312].w[0:7]"  0.030041444084932999 0.057541240120964329 
		0.14023904067733284 0.22065274318169187 0.22072388075864544 0.16932164163407382 0.099323511874583145 
		0.062156497667775715;
	setAttr -s 8 ".wl[313].w[0:7]"  0.038073725494625586 0.068834549897901678 
		0.14422337098950813 0.19934630005059359 0.19938913386490206 0.16583573497429394 0.11027704614387095 
		0.074020138584304174;
	setAttr -s 8 ".wl[314].w[0:7]"  0.029935607655464855 0.057198855362198125 
		0.14011873534529817 0.22046345422617264 0.22053453077711108 0.16917638752923214 0.10012367522842298 
		0.062448753876099987;
	setAttr -s 8 ".wl[315].w[0:7]"  0.030185688006900264 0.058011986877249073 
		0.14039820375428144 0.22090336870308946 0.22097459473822831 0.16951410759087246 0.098251156186917279 
		0.061760894142461595;
	setAttr -s 8 ".wl[316].w[0:7]"  0.038366406850877707 0.06969864160811097 
		0.14447286378091917 0.1996913843619969 0.1997342970146597 0.16612286211502697 0.1086079533702114 
		0.073305590898197132;
	setAttr -s 8 ".wl[317].w[0:7]"  0.030185688006900264 0.058011986877249073 
		0.14039820375428144 0.22090336870308946 0.22097459473822831 0.16951410759087246 0.098251156186917279 
		0.061760894142461595;
	setAttr -s 8 ".wl[318].w[0:7]"  0.019450712160016481 0.04003181405810715 
		0.12375121447503737 0.2657424070303116 0.26591391615634258 0.16540470806763846 0.07639971402584754 
		0.043305514026698931;
	setAttr -s 8 ".wl[319].w[0:7]"  0.90982621643716843 0.05720698258914797 
		0.015483454259676139 0.0065259246534445248 0.0039790939345170778 0.0029131089575804483 
		0.0022438035138028179 0.0018214156546625898;
	setAttr -s 8 ".wl[320].w[0:7]"  0.90979756963511516 0.057297053802925615 
		0.015463553016493069 0.006510638094107974 0.0039697731629305512 0.0029062851873479906 
		0.0022382042296960952 0.0018169228713835004;
	setAttr -s 8 ".wl[321].w[0:7]"  0.90977371703952503 0.057410831868619991 
		0.015433498903778115 0.0064885788477644438 0.0039563228089771144 0.0028964381263220057 
		0.0022301535311622231 0.001810458873851259;
	setAttr -s 8 ".wl[322].w[0:7]"  0.90976703945052673 0.0575141564262747 
		0.015400231768171286 0.0064652076905235981 0.0039420725912932527 0.0028860054993843785 
		0.0022216554424700028 0.0018036311313562273;
	setAttr -s 8 ".wl[323].w[0:7]"  0.9097735510117988 0.057582816903884025 
		0.015373762214426273 0.0064472368610922932 0.0039311151217209421 0.0028779834964501967 
		0.002215140494482674 0.0017983938961446916;
	setAttr -s 8 ".wl[324].w[0:7]"  0.90977852688165695 0.05760635346162582 
		0.015363596144746507 0.0064404646765858116 0.0039269858467030662 0.0028749604309609967 
		0.0022126895435135171 0.0017964230142074355;
	setAttr -s 8 ".wl[325].w[0:7]"  0.9097735510117988 0.057582816903884025 
		0.015373762214426273 0.0064472368610922932 0.0039311151217209421 0.0028779834964501967 
		0.002215140494482674 0.0017983938961446916;
	setAttr -s 8 ".wl[326].w[0:7]"  0.90976703945052673 0.0575141564262747 
		0.015400231768171286 0.0064652076905235981 0.0039420725912932527 0.0028860054993843785 
		0.0022216554424700028 0.0018036311313562273;
	setAttr -s 8 ".wl[327].w[0:7]"  0.90977371703952503 0.057410831868619991 
		0.015433498903778115 0.0064885788477644438 0.0039563228089771144 0.0028964381263220057 
		0.0022301535311622231 0.001810458873851259;
	setAttr -s 8 ".wl[328].w[0:7]"  0.90979756963511516 0.057297053802925615 
		0.015463553016493069 0.006510638094107974 0.0039697731629305512 0.0029062851873479906 
		0.0022382042296960952 0.0018169228713835004;
	setAttr -s 8 ".wl[329].w[0:7]"  0.90982621643716843 0.05720698258914797 
		0.015483454259676139 0.0065259246534445248 0.0039790939345170778 0.0029131089575804483 
		0.0022438035138028179 0.0018214156546625898;
	setAttr -s 8 ".wl[330].w[0:7]"  0.90983921297560055 0.057172495599173666 
		0.015490266981548654 0.0065313253026055024 0.0039823868791315307 0.0029155197256169581 
		0.0022457864755810954 0.0018230060607420378;
	setAttr -s 8 ".wl[331].w[0:7]"  0.99999873940405504 8.1792671639117969e-07 
		2.0955940898048953e-07 8.7230903661332065e-08 5.3039174357410342e-08 3.8784790094065529e-08 
		2.9840974805759818e-08 2.4213976876545828e-08;
	setAttr -s 8 ".wl[332].w[0:7]"  0.0008972251057409533 0.0014411180362893647 
		0.0029210462334702705 0.0066338984470400621 0.017698556258664663 0.10794675258008363 
		0.591491195848319 0.27097020749039219;
	setAttr -s 8 ".wl[333].w[0:7]"  0.0009708245990099648 0.0015594961977940169 
		0.0031601226065670726 0.007176870072627196 0.019147210457085319 0.1144213002344225 
		0.57486749362402689 0.27869668220846705;
	setAttr -s 8 ".wl[334].w[0:7]"  0.001794158831685823 0.002734616187187656 
		0.0050107252499712995 0.0097048163590258765 0.019879637844822509 0.058424897196434025 
		0.4512255741654364 0.4512255741654364;
	setAttr -s 8 ".wl[335].w[0:7]"  0.0081473280039604194 0.011972069786201649 
		0.020499252035732843 0.035943168877148407 0.063517922044381461 0.13454701477732217 
		0.3626866222376266 0.36268662223762649;
	setAttr -s 8 ".wl[336].w[0:7]"  0.0086922929604933852 0.0127429968237735 
		0.021715443415103911 0.037842755407299304 0.066316046540638829 0.13773429615268562 
		0.35747808435000267 0.35747808435000267;
	setAttr -s 8 ".wl[337].w[0:7]"  0.0082820189251317632 0.012169443482565857 
		0.020817306707978156 0.036482928817671435 0.064433821227887156 0.13550410478764977 
		0.36115518802555791 0.36115518802555791;
	setAttr -s 8 ".wl[338].w[0:7]"  0.0010888470578555682 0.0017493874163565435 
		0.0035432883299957403 0.008047081613824298 0.021468921643694776 0.12411321037885249 
		0.55121747604747284 0.28877178751194787;
	setAttr -s 8 ".wl[339].w[0:7]"  0.0010888330232097557 0.0017493626978695713 
		0.0035432294831733474 0.00804691414921236 0.021468308041208722 0.12410674034991594 
		0.55121231089444245 0.28878430136096789;
	setAttr -s 8 ".wl[340].w[0:7]"  0.0082598390226583992 0.012139626717927414 
		0.02077423806421028 0.036425345087692143 0.064370056048242766 0.13547891656312186 
		0.36127598924807358 0.36127598924807358;
	setAttr -s 8 ".wl[341].w[0:7]"  0.0086903891949901037 0.012740357410491072 
		0.021711395071330963 0.037836760675435413 0.066307969289249633 0.13772606169210855 
		0.35749353333319717 0.35749353333319717;
	setAttr -s 8 ".wl[342].w[0:7]"  0.0081666091605027778 0.011997613393921596 
		0.020535458548630134 0.035989015319045754 0.063561581210879362 0.13455148070963438 
		0.362599120828693 0.362599120828693;
	setAttr -s 8 ".wl[343].w[0:7]"  0.00097082203645286913 0.0015594913641419025 
		0.0031601098942747544 0.0071768299220253034 0.019147047191013324 0.11441920692699549 
		0.57486478359820092 0.27870170906689545;
	setAttr -s 8 ".wl[344].w[0:7]"  0.00089723347719638266 0.0014411322276460543 
		0.0029210780183618681 0.006633982180636086 0.017698836037222498 0.10794956419914863 
		0.59149322989933351 0.27096494396045495;
	setAttr -s 8 ".wl[345].w[0:7]"  0.0080600100850418948 0.011842083769381926 
		0.02028565968832417 0.035568646512806799 0.062856046575434532 0.13381102863232203 
		0.36378826236834433 0.36378826236834433;
	setAttr -s 8 ".wl[346].w[0:7]"  0.0084582543258186534 0.012395321628321609 
		0.02114865210714072 0.036855998617414891 0.064589067355779878 0.13591321145317456 
		0.36031974725617483 0.36031974725617483;
	setAttr -s 8 ".wl[347].w[0:7]"  0.0079463355101374103 0.011672933702021659 
		0.0200073718777131 0.035080711600524811 0.061993808230145886 0.13283610658694903 
		0.36523136624625407 0.36523136624625407;
	setAttr -s 8 ".wl[348].w[0:7]"  0.00076870865297345211 0.0012344823319056276 
		0.002503361837426435 0.0056853181939120973 0.01516789088185241 0.095808898137089815 
		0.62466546898183939 0.25416587098300075;
	setAttr -s 8 ".wl[349].w[0:7]"  0.00076870470152736543 0.0012344756674806943 
		0.0025033470269463219 0.0056852796097798574 0.015167763780223085 0.095807571649995732 
		0.62466432639328895 0.25416853117075805;
	setAttr -s 8 ".wl[350].w[0:7]"  0.0079695340743644646 0.01170435835646119 
		0.020053477672760507 0.035144287201530448 0.062069577451942255 0.13287902542343327 
		0.36508986990975395 0.36508986990975395;
	setAttr -s 8 ".wl[351].w[0:7]"  0.0084583366405572725 0.012395435999941036 
		0.021148828531872679 0.036856262094437098 0.064589428341522412 0.13591359566640582 
		0.36031905636263184 0.36031905636263184;
	setAttr -s 8 ".wl[352].w[0:7]"  0.0080859415184300603 0.011877549320719712 
		0.020338269104766861 0.035643417312338513 0.062951167032235772 0.13387383125112412 
		0.36361491223019249 0.36361491223019249;
	setAttr -s 8 ".wl[353].w[0:7]"  0.00082803747766350001 0.0013215140774321022 
		0.00264262401891803 0.00587401112185234 0.015087245643951884 0.079810264157738342 
		0.54488721088243564 0.34954909262000827;
	setAttr -s 8 ".wl[354].w[0:7]"  0.0039239587865412965 0.0059662663478873166 
		0.010854107875588784 0.020742896005564476 0.041291848664723033 0.10822364772440536 
		0.40449863729764485 0.40449863729764485;
	setAttr -s 8 ".wl[355].w[0:7]"  0.0036965247150301437 0.0056528687823405033 
		0.010396257844337949 0.020160613488453216 0.040918368687220472 0.11111170194410286 
		0.40403183226925726 0.40403183226925748;
	setAttr -s 8 ".wl[356].w[0:7]"  0.0054562987494819167 0.0082146358579623328 
		0.014667487401436989 0.027253057521061736 0.051983509970567617 0.12424419993809283 
		0.38409040528069816 0.38409040528069838;
	setAttr -s 8 ".wl[357].w[0:7]"  0.0049625368433680005 0.0075142988511826261 
		0.013562687274059241 0.025569451882418378 0.049726488397840114 0.12323193180042082 
		0.38771630247535538 0.38771630247535538;
	setAttr -s 8 ".wl[358].w[0:7]"  0.0072893613563236254 0.010889282650183778 
		0.019148839566708677 0.034753880323552352 0.063905071031912633 0.14070165703225271 
		0.36165595401953327 0.36165595401953304;
	setAttr -s 8 ".wl[359].w[0:7]"  0.0067880774220286906 0.010180491530970209 
		0.018037997760624837 0.033066500759105985 0.061610481557427758 0.13912379661998597 
		0.36559632717492829 0.36559632717492829;
	setAttr -s 8 ".wl[360].w[0:7]"  0.0093834690484044681 0.013940824316312071 
		0.02422823420299175 0.043124993873639786 0.076757619415670844 0.15645252050021555 
		0.33805616932138277 0.33805616932138277;
	setAttr -s 8 ".wl[361].w[0:7]"  0.0090602967958340573 0.013484723497106443 
		0.023522063619019103 0.04206525594117954 0.075336672218119446 0.15558644371427233 
		0.34047227210723469 0.34047227210723446;
	setAttr -s 8 ".wl[362].w[0:7]"  0.011684461553237411 0.017305926234394125 
		0.029827259431735871 0.05224472274599367 0.090235923383172337 0.17058500261603729 
		0.3140583520177147 0.3140583520177147;
	setAttr -s 8 ".wl[363].w[0:7]"  0.011526797201554058 0.017084414417975154 
		0.02949530001280299 0.051762407375138167 0.089617484578805057 0.17043686281709364 
		0.31503836679831554 0.31503836679831554;
	setAttr -s 8 ".wl[364].w[0:7]"  0.014110866573054687 0.020879326340781098 
		0.035789634052124084 0.061834357222048053 0.10374144120355554 0.18207065969236247 
		0.29078685745803712 0.29078685745803712;
	setAttr -s 8 ".wl[365].w[0:7]"  0.014110283708861679 0.020892773505546375 
		0.035862172437175696 0.062025170707227573 0.10410640036367678 0.1827776304525357 
		0.29011278441248795 0.29011278441248817;
	setAttr -s 8 ".wl[366].w[0:7]"  0.016507285365266494 0.024439328515187504 
		0.041750506266876132 0.071267219018160397 0.11624803767137667 0.19013720799434131 
		0.26982520758439593 0.26982520758439571;
	setAttr -s 8 ".wl[367].w[0:7]"  0.016656580982467688 0.024686122161632181 
		0.042240429267949964 0.072152215389874097 0.11754088689581649 0.19131380575446616 
		0.26770497977389668 0.26770497977389668;
	setAttr -s 8 ".wl[368].w[0:7]"  0.018663990397502939 0.027679354455025472 
		0.047210147490687221 0.079774951537430264 0.1268337215049628 0.1949990805711696 0.25241937702161071 
		0.25241937702161094;
	setAttr -s 8 ".wl[369].w[0:7]"  0.018892171249852641 0.028063095058067169 
		0.047973410056709853 0.081133347369862746 0.12870441561772242 0.19624400900027578 
		0.24949477582375473 0.24949477582375473;
	setAttr -s 8 ".wl[370].w[0:7]"  0.020423073956064932 0.030363963232147996 
		0.051794016731370511 0.086864468195553352 0.13519417248531632 0.19762609682615986 
		0.2388671042866935 0.2388671042866935;
	setAttr -s 8 ".wl[371].w[0:7]"  0.020853956277884181 0.031074486695263016 
		0.05315026239069616 0.089153420194768615 0.13805701926106845 0.19883097017010343 
		0.23443994250510813 0.23443994250510802;
	setAttr -s 8 ".wl[372].w[0:7]"  0.02613508108084877 0.039815018575994406 
		0.069388075785591127 0.11472805573399115 0.16441757667483972 0.19717411504409296 
		0.19930882448563328 0.18903325261900866;
	setAttr -s 8 ".wl[373].w[0:7]"  0.0093342207049932971 0.013667139716294595 
		0.023234380049869257 0.040301387412857985 0.070048767868520559 0.14286423892218345 
		0.35027493266264043 0.35027493266264043;
	setAttr -s 8 ".wl[374].w[0:7]"  0.010019903000049167 0.014634738972057398 
		0.024752402666075396 0.042642458425989384 0.073408021438251328 0.14644229992165783 
		0.34405008778795976 0.34405008778795976;
	setAttr -s 8 ".wl[375].w[0:7]"  0.01073752872069394 0.015671265615449605 
		0.026458043595825563 0.045392266468761121 0.077515407188639002 0.15166501415374656 
		0.33628023712844207 0.33628023712844207;
	setAttr -s 8 ".wl[376].w[0:7]"  0.011435667646930625 0.016657134830577194 
		0.028000775554117788 0.04775150621594202 0.080826873337043498 0.15489638459020694 
		0.33021582891259099 0.33021582891259099;
	setAttr -s 8 ".wl[377].w[0:7]"  0.012414611652158451 0.01807545162775152 
		0.030331775053559263 0.051477863201558692 0.086253444265872933 0.16106289902651866 
		0.3201919775862902 0.3201919775862902;
	setAttr -s 8 ".wl[378].w[0:7]"  0.012943087003199698 0.018826961391313891 
		0.031512623665236807 0.053284925058112199 0.088756927246836079 0.16325001000931161 
		0.31571273281299495 0.31571273281299483;
	setAttr -s 8 ".wl[379].w[0:7]"  0.014239850966909284 0.020719455301516643 
		0.034636566510063305 0.058254077496004565 0.095802460478130888 0.17029247277511878 
		0.30302755823612809 0.30302755823612831;
	setAttr -s 8 ".wl[380].w[0:7]"  0.014613947039486416 0.021253899340751614 
		0.035473409364041246 0.059521867012042151 0.09750506776811585 0.17150227482261071 
		0.30006476732647597 0.30006476732647597;
	setAttr -s 8 ".wl[381].w[0:7]"  0.01627976653183319 0.023703255124212581 
		0.039529890866145057 0.065908413981248831 0.10620738888882052 0.17881324623088854 
		0.28477901918842569 0.28477901918842569;
	setAttr -s 8 ".wl[382].w[0:7]"  0.016469225942991807 0.023972903810974978 
		0.039939535059900499 0.066509126046198644 0.10697190564004778 0.17912427502295739 
		0.28350651423846446 0.28350651423846446;
	setAttr -s 8 ".wl[383].w[0:7]"  0.018387792210368847 0.026826344124875525 
		0.044702437639233754 0.073939414399550457 0.11664675718576267 0.18568613828501113 
		0.26690555807759891 0.26690555807759869;
	setAttr -s 8 ".wl[384].w[0:7]"  0.018396228987521187 0.02682723238471536 
		0.044662520587205871 0.073832486294981722 0.11647022958479251 0.18533937729811051 
		0.2672359624313364 0.2672359624313364;
	setAttr -s 8 ".wl[385].w[0:7]"  0.020396202661066593 0.029852893232432377 
		0.049788371391926156 0.081791538328542593 0.12636987469879013 0.19056552324235007 
		0.25061779822244606 0.25061779822244606;
	setAttr -s 8 ".wl[386].w[0:7]"  0.020257464210959076 0.029626243857129201 
		0.049352939780005392 0.081062992160352954 0.1254343378030483 0.18991130171928455 
		0.25217736023461035 0.25217736023461035;
	setAttr -s 8 ".wl[387].w[0:7]"  0.022130655681337243 0.032535717225706848 
		0.054417120278835024 0.0889741917622279 0.13491646296698973 0.19374437623009952 0.23664073792740192 
		0.23664073792740192;
	setAttr -s 8 ".wl[388].w[0:7]"  0.021905655245901601 0.032161770410015986 
		0.053698301575270294 0.087780903838191704 0.13344904545883318 0.19301342178599196 
		0.23899545084289753 0.23899545084289775;
	setAttr -s 8 ".wl[389].w[0:7]"  0.023538872211879537 0.034778811634264807 
		0.058405916390682523 0.095215550676493385 0.14207486374445086 0.19560988660917072 
		0.225188049366529 0.225188049366529;
	setAttr -s 8 ".wl[390].w[0:7]"  0.0230869691939143 0.03404540482344106 
		0.05705753691014883 0.093083571019099545 0.13966640472299111 0.19492380743149917 
		0.22906815294945301 0.22906815294945301;
	setAttr -s 8 ".wl[391].w[0:7]"  0.0038586918500495455 0.0059011359432219711 
		0.010841503796163431 0.021013464313528792 0.042619645792844649 0.1140468471015572 
		0.40085935560131725 0.40085935560131714;
	setAttr -s 8 ".wl[392].w[0:7]"  0.0051344363165704123 0.007772640201802186 
		0.014008278977043334 0.026377892385295764 0.051214151363723884 0.12526855083492811 
		0.38511202496031816 0.38511202496031816;
	setAttr -s 8 ".wl[393].w[0:7]"  0.0069016614408094262 0.010352852764837675 
		0.018332707032265822 0.033606760892281151 0.062617138055984081 0.14028002251790489 
		0.36395442864795846 0.36395442864795846;
	setAttr -s 8 ".wl[394].w[0:7]"  0.0091561125821385259 0.01362973418350079 
		0.023762165955900444 0.042494582881185648 0.076105453768708961 0.15620177301472699 
		0.33932508880691947 0.33932508880691925;
	setAttr -s 8 ".wl[395].w[0:7]"  0.011608771782444315 0.017208782236036172 
		0.02969488812145063 0.0521127478325219 0.090224180879624166 0.17072184987286457 0.31421438963752912 
		0.31421438963752912;
	setAttr -s 8 ".wl[396].w[0:7]"  0.014181860966069595 0.021002103994948354 
		0.036032033541360031 0.062318875639409799 0.10459924759829133 0.18285449045762184 
		0.2895056939011495 0.2895056939011495;
	setAttr -s 8 ".wl[397].w[0:7]"  0.016720087350600051 0.024784133107323813 
		0.042387738890374262 0.072403877114615545 0.1179509013736709 0.19126742757928833 
		0.2672429172920634 0.26724291729206362;
	setAttr -s 8 ".wl[398].w[0:7]"  0.018949630188660641 0.02815278777256881 
		0.048103973938044255 0.081354125008560554 0.12905461720534425 0.19612992602641649 
		0.24912746993020266 0.24912746993020243;
	setAttr -s 8 ".wl[399].w[0:7]"  0.020906556906713676 0.031157644878193724 
		0.053267801931573419 0.08935064475966846 0.13836243930622238 0.19868031996942906 
		0.23413729612409961 0.23413729612409961;
	setAttr -s 8 ".wl[400].w[0:7]"  0.0093757947653320649 0.013734213314337976 
		0.023347421363868782 0.040526443215155535 0.070510035337614185 0.14325343401874202 
		0.34962632899247453 0.34962632899247476;
	setAttr -s 8 ".wl[401].w[0:7]"  0.010830033398369108 0.015808879443771916 
		0.026676480723816464 0.045767074845734786 0.078155566473858393 0.15214983352337977 
		0.3353060657955349 0.33530606579553468;
	setAttr -s 8 ".wl[402].w[0:7]"  0.012497593528692584 0.018199108566297639 
		0.030524062178357278 0.051804189260318073 0.086800188474770681 0.1613676675421411 
		0.3194035952247114 0.31940359522471129;
	setAttr -s 8 ".wl[403].w[0:7]"  0.014314545611241895 0.020831292491992785 
		0.034806800721284038 0.05854047938573697 0.096273625074664818 0.17045568827994279 
		0.30238878421756832 0.30238878421756832;
	setAttr -s 8 ".wl[404].w[0:7]"  0.016347427893584905 0.02380526534570801 
		0.039681317689023103 0.066160833017788787 0.10661406256123787 0.17886342256790067 
		0.28426383546237827 0.28426383546237827;
	setAttr -s 8 ".wl[405].w[0:7]"  0.018449438277125054 0.026920198992303201 
		0.044838041049728966 0.074163680239441379 0.11700052194978311 0.1856540349054614 
		0.26648704229307846 0.26648704229307846;
	setAttr -s 8 ".wl[406].w[0:7]"  0.02045293888125754 0.029940272267096741 
		0.049911141476619063 0.081993154646593056 0.12668131741924615 0.19047725274135457 
		0.25027196128391643 0.25027196128391643;
	setAttr -s 8 ".wl[407].w[0:7]"  0.022183395764021591 0.032618003112247246 
		0.054529840798093761 0.089158461124601102 0.1351958679476763 0.19361986731959413 
		0.2363472819668829 0.2363472819668829;
	setAttr -s 8 ".wl[408].w[0:7]"  0.023588242083646078 0.034856858504167886 
		0.05851055171102016 0.095386155013945206 0.1423294123925784 0.19546332884844828 0.22493272572309694 
		0.22493272572309694;
	setAttr -s 8 ".wl[409].w[0:7]"  0.00082804846302269989 0.0013215325290300152 
		0.0026426645566389115 0.0058741147080089628 0.015087574018740604 0.079813012453157625 
		0.54489205074439973 0.34954100252700143;
	setAttr -s 8 ".wl[410].w[0:7]"  0.0039239994632261424 0.0059663257207622231 
		0.010854207577316812 0.020743063135006748 0.041292113106431647 0.10822398814700369 
		0.40449815142512652 0.4044981514251263;
	setAttr -s 8 ".wl[411].w[0:7]"  0.0038516080007440193 0.0058914493219343689 
		0.010827484978864023 0.02099685646926042 0.042615621052757222 0.11415713471724975 
		0.40082992272959517 0.40082992272959506;
	setAttr -s 8 ".wl[412].w[0:7]"  0.005456272900225159 0.0082145989388788185 
		0.014667427917473332 0.027252964012224507 0.051983376563461324 0.12424407009325544 
		0.3840906447872407 0.3840906447872407;
	setAttr -s 8 ".wl[413].w[0:7]"  0.0051007325377522257 0.0077251844093774022 
		0.01393423569047878 0.026269184233363024 0.051084356063023965 0.12526515981129918 
		0.38531057362735277 0.38531057362735266;
	setAttr -s 8 ".wl[414].w[0:7]"  0.0072893672046752201 0.010889291277449991 
		0.019148854282754695 0.034753905498887766 0.063905112057152436 0.14070171606197482 
		0.3616558768085526 0.3616558768085526;
	setAttr -s 8 ".wl[415].w[0:7]"  0.0069017003588412893 0.010352907195465133 
		0.018332790991497438 0.033606883063853309 0.062617287252168682 0.14028008614190038 
		0.36395417249813689 0.36395417249813689;
	setAttr -s 8 ".wl[416].w[0:7]"  0.0093841399903642625 0.013941727395841602 
		0.024229522168923392 0.043126622458485427 0.076759078895112687 0.15645175219187807 
		0.3380535784496973 0.3380535784496973;
	setAttr -s 8 ".wl[417].w[0:7]"  0.0091561448306248221 0.013629777848524571 
		0.023762228925971744 0.042494664007173999 0.076105529396043578 0.15620174244248364 
		0.33932495627458881 0.33932495627458881;
	setAttr -s 8 ".wl[418].w[0:7]"  0.01168443911886005 0.017305896895847012 
		0.02982722035664509 0.052244680215296393 0.09023590122810228 0.17058506452565342 
		0.31405839882979791 0.31405839882979791;
	setAttr -s 8 ".wl[419].w[0:7]"  0.011608788799005457 0.017208803750441301 
		0.029694914491853519 0.052112770287051934 0.090224174499786439 0.17072176260810315 
		0.31421439278187913 0.31421439278187913;
	setAttr -s 8 ".wl[420].w[0:7]"  0.014110875220694326 0.020879338728928814 
		0.035789653678895993 0.06183438640110181 0.10374147738811539 0.18207067950985256 
		0.2907867945362056 0.2907867945362056;
	setAttr -s 8 ".wl[421].w[0:7]"  0.014181864265465074 0.021002108717427082 
		0.036032041024743146 0.06231888671075627 0.10459926112867876 0.18285449776345722 
		0.28950567019473628 0.28950567019473628;
	setAttr -s 8 ".wl[422].w[0:7]"  0.016507266243187307 0.02443930871619341 
		0.041750495932023825 0.07126724683684349 0.11624814540135939 0.19013738860819354 
		0.26982507413109957 0.26982507413109946;
	setAttr -s 8 ".wl[423].w[0:7]"  0.016720090312738793 0.024784137325611008 
		0.04238774537619705 0.072403886215289648 0.11795091130979476 0.19126742920500922 
		0.26724290012767982 0.26724290012767971;
	setAttr -s 8 ".wl[424].w[0:7]"  0.018663861576891084 0.027679436505685526 
		0.047210996331675158 0.079777576222614555 0.12683890152770785 0.19500420739553709 
		0.25241251021994437 0.25241251021994437;
	setAttr -s 8 ".wl[425].w[0:7]"  0.018949626241412259 0.028152782211968971 
		0.048103965618371533 0.08135411417505839 0.12905460738604951 0.19612992778770388 
		0.24912748828971773 0.24912748828971773;
	setAttr -s 8 ".wl[426].w[0:7]"  0.020423039360429104 0.030363791936802241 
		0.051793424875742705 0.086863028113507032 0.13519175086519994 0.1976243355710485 
		0.23887031463863531 0.2388703146386352;
	setAttr -s 8 ".wl[427].w[0:7]"  0.020906562145300643 0.031157646875576532 
		0.053267790031286649 0.089350599197179262 0.13836234867386463 0.19868024398461417 
		0.23413740454608914 0.23413740454608903;
	setAttr -s 8 ".wl[428].w[0:7]"  0.026135056322568233 0.039814967576640659 
		0.069387958662767937 0.11472784896407053 0.16441737087436631 0.19717417350401514 
		0.19930899192411733 0.18903363217145386;
	setAttr -s 8 ".wl[429].w[0:7]"  0.0094367706141619441 0.013819687038417714 
		0.023480842055802399 0.040728858479530686 0.070791694570637637 0.14355794557316859 
		0.3490921008341405 0.3490921008341405;
	setAttr -s 8 ".wl[430].w[0:7]"  0.010019958118503791 0.014634814552016482 
		0.024752516087038282 0.042642620561606552 0.07340822720942411 0.1464424749638831 
		0.34404969425376386 0.34404969425376386;
	setAttr -s 8 ".wl[431].w[0:7]"  0.010828603733498858 0.015806946499284782 
		0.026673662252177922 0.045763237442943597 0.078151116930284564 0.15214715148133767 
		0.33531464083023632 0.33531464083023632;
	setAttr -s 8 ".wl[432].w[0:7]"  0.011435736885676112 0.016657227655846443 
		0.028000908754266435 0.047751682845188631 0.080827068795719506 0.15489648006532014 
		0.33021544749899145 0.33021544749899145;
	setAttr -s 8 ".wl[433].w[0:7]"  0.012497679173998919 0.018199221611581634 
		0.03052421892567821 0.051804384191639144 0.086800375895192267 0.16136768755220765 
		0.31940321632485114 0.31940321632485114;
	setAttr -s 8 ".wl[434].w[0:7]"  0.012943154693175788 0.018827050681160702 
		0.031512747295711407 0.053285078409295673 0.088757074319530754 0.16325002605529146 
		0.31571243427291712 0.31571243427291712;
	setAttr -s 8 ".wl[435].w[0:7]"  0.014314559872823011 0.020831310738415435 
		0.034806824294436108 0.058540504644038011 0.096273640734216667 0.17045566857261482 
		0.30238874557172796 0.30238874557172796;
	setAttr -s 8 ".wl[436].w[0:7]"  0.014613979066808688 0.021253939352189225 
		0.035473458367516669 0.059521913134868175 0.097505081378852082 0.17150220088601356 
		0.30006471390687584 0.30006471390687572;
	setAttr -s 8 ".wl[437].w[0:7]"  0.016347423675940637 0.023805261659228808 
		0.039681317779856902 0.066160844291039869 0.10661409483255473 0.1788634745332105 
		0.28426379161408433 0.28426379161408433;
	setAttr -s 8 ".wl[438].w[0:7]"  0.016469183680274363 0.023972853556429669 
		0.039939481457873113 0.066509095073790631 0.1069719455761729 0.17912443648827342 
		0.2835065020835929 0.2835065020835929;
	setAttr -s 8 ".wl[439].w[0:7]"  0.018449462036348042 0.026920222324015509 
		0.044838050756613144 0.074163644490112923 0.11700040202773873 0.18565385228170292 
		0.26648718304173441 0.26648718304173441;
	setAttr -s 8 ".wl[440].w[0:7]"  0.018396212013831147 0.026827219256788323 
		0.044662528086785891 0.073832548717591942 0.11647038324928552 0.18533958222722224 
		0.26723576322424758 0.26723576322424736;
	setAttr -s 8 ".wl[441].w[0:7]"  0.020452953480206156 0.029940292441295341 
		0.049911170855436018 0.081993191772093174 0.12668135080978707 0.19047725072644214 
		0.25027189495737001 0.25027189495737001;
	setAttr -s 8 ".wl[442].w[0:7]"  0.020257452852604815 0.029626231215032387 
		0.049352929342599654 0.081062994297302349 0.12543436570028449 0.18991135186568989 
		0.25217733736324321 0.25217733736324321;
	setAttr -s 8 ".wl[443].w[0:7]"  0.022183387463091172 0.032617981829708362 
		0.05452978443094661 0.089158342937685056 0.13519569049490032 0.1936197567423483 0.23634752805065992 
		0.23634752805066014;
	setAttr -s 8 ".wl[444].w[0:7]"  0.021905656988346345 0.032161778783680241 
		0.053698329231973499 0.087780967810195829 0.13344914825142576 0.19301349496924988 
		0.23899531198256416 0.23899531198256416;
	setAttr -s 8 ".wl[445].w[0:7]"  0.02358823424386718 0.034856847763008389 
		0.058510536756853762 0.095386138297179013 0.14232940200312133 0.19546333834871282 
		0.22493275129362864 0.22493275129362886;
	setAttr -s 8 ".wl[446].w[0:7]"  0.02308690075949011 0.034045140971440749 
		0.057056712770291222 0.093081731222350986 0.13966361174890901 0.19492216589114073 
		0.2290718683181886 0.2290718683181886;
	setAttr -s 8 ".wl[447].w[0:7]"  0.0037046822963482016 0.0056642510923505113 
		0.010413505135341195 0.020183898956786357 0.040937115361281855 0.11102993428878558 
		0.4040333064345531 0.4040333064345531;
	setAttr -s 8 ".wl[448].w[0:7]"  0.0050015472875772782 0.0075698549460700192 
		0.013651432364450539 0.025705991662713455 0.049909750669322961 0.1233324101789386 
		0.38741450644546355 0.38741450644546355;
	setAttr -s 8 ".wl[449].w[0:7]"  0.006788104549251813 0.0101805297553277 
		0.018038057636518064 0.033066590405173596 0.061610598237255364 0.13912387194941345 
		0.36559612373352984 0.36559612373353007;
	setAttr -s 8 ".wl[450].w[0:7]"  0.0090604019472729988 0.013484864943915195 
		0.023522264865456652 0.042065508036582981 0.075336888702366961 0.15558627138887748 
		0.3404719000577639 0.3404719000577639;
	setAttr -s 8 ".wl[451].w[0:7]"  0.011526772649772057 0.017084383810491769 
		0.029495263901264876 0.051762380609149471 0.089617506468579924 0.17043701420808666 
		0.31503833917632762 0.31503833917632762;
	setAttr -s 8 ".wl[452].w[0:7]"  0.014110297149675075 0.020892787404259434 
		0.035862179658572725 0.062025149818595665 0.10410631481008593 0.18277746112919577 
		0.29011290501480769 0.29011290501480769;
	setAttr -s 8 ".wl[453].w[0:7]"  0.016656586508714898 0.02468613280348507 
		0.042240453470887243 0.072152265330465815 0.11754096994931366 0.19131388296292381 
		0.26770485448710474 0.26770485448710474;
	setAttr -s 8 ".wl[454].w[0:7]"  0.018892177707219595 0.02806309625441164 
		0.047973389978396688 0.081133275436966773 0.12870426717734554 0.19624385966298585 
		0.24949496689133696 0.24949496689133696;
	setAttr -s 8 ".wl[455].w[0:7]"  0.020853965413649863 0.031074503424110774 
		0.053150297866190382 0.089153486373665769 0.13805711050407796 0.19883101329586744 
		0.23443981156121896 0.23443981156121896;
	setAttr -s 8 ".wl[456].w[0:7]"  0.0092719917263563104 0.013579757937487244 
		0.023097614600800499 0.040092750370723261 0.069755298403173613 0.14254338927315477 
		0.35082959884415221 0.3508295988441521;
	setAttr -s 8 ".wl[457].w[0:7]"  0.010736019666874952 0.015669223266384529 
		0.026455057982556852 0.045388183775774797 0.077510625939760588 0.15166204725706023 
		0.33628942105579407 0.33628942105579407;
	setAttr -s 8 ".wl[458].w[0:7]"  0.012414699803358254 0.018075567768808188 
		0.030331935637014844 0.051478061808762417 0.086253633198878549 0.1610629111445484 
		0.32019159531931474 0.32019159531931463;
	setAttr -s 8 ".wl[459].w[0:7]"  0.014239768564718673 0.020719351408476167 
		0.034636436724601795 0.058253948607555513 0.095802404349577985 0.17029264330290769 
		0.3030277235210812 0.30302772352108098;
	setAttr -s 8 ".wl[460].w[0:7]"  0.016279768733777598 0.02370325820192391 
		0.039529895571910424 0.065908420592022177 0.10620739650088944 0.17881325042183149 
		0.28477900498882247 0.28477900498882247;
	setAttr -s 8 ".wl[461].w[0:7]"  0.018387845570645545 0.026826396389539629 
		0.044702458758517936 0.073939332514589395 0.11664648537059287 0.18568572034597702 
		0.26690588052506875 0.26690588052506875;
	setAttr -s 8 ".wl[462].w[0:7]"  0.020396238872816233 0.029852927607551021 
		0.049788380502642018 0.081791470360782909 0.12636967891673262 0.19056527120949412 
		0.25061801626499042 0.25061801626499064;
	setAttr -s 8 ".wl[463].w[0:7]"  0.022130649651893954 0.032535689233142387 
		0.054417028314591963 0.088973980089836521 0.13491612662933727 0.19374414529115891 
		0.23664119039501955 0.23664119039501955;
	setAttr -s 8 ".wl[464].w[0:7]"  0.023538874571752372 0.034778819096635674 
		0.058405938240557481 0.095215597733704554 0.14207493244218558 0.19560992317741796 
		0.22518795736887304 0.22518795736887326;
	setAttr -s 8 ".wl[465].w[0:7]"  0.00061762936939403084 0.00098543202963684642 
		0.0019720589868621632 0.0043834826030104308 0.011258861669900278 0.06242091294068898 
		0.59195285019160304 0.32640877220890424;
	setAttr -s 8 ".wl[466].w[0:7]"  0.0036152765579514547 0.0054943839480839423 
		0.01000916788056639 0.019128182340375624 0.038077578531400702 0.1023102510970324 
		0.41068257982229461 0.41068257982229484;
	setAttr -s 8 ".wl[467].w[0:7]"  0.0035494797757780298 0.0054267790025642193 
		0.009986974545561602 0.019366945033401566 0.039307585271167546 0.10812504646806237 
		0.40711859495173242 0.4071185949517323;
	setAttr -s 8 ".wl[468].w[0:7]"  0.0051327059363863838 0.0077234998005410631 
		0.013811599673344823 0.025662758676148603 0.048950091176882364 0.11975943676793133 
		0.38947995398438273 0.38947995398438273;
	setAttr -s 8 ".wl[469].w[0:7]"  0.0047828362386334962 0.0072400346190882167 
		0.013078729846756383 0.024656339866829444 0.047947878147215774 0.12050465040663344 
		0.39089476543742158 0.39089476543742158;
	setAttr -s 8 ".wl[470].w[0:7]"  0.0069298742964562371 0.010345964626087716 
		0.018226957723701368 0.033080743547609003 0.060828567106291254 0.13719599634811666 
		0.36669594817586876 0.36669594817586898;
	setAttr -s 8 ".wl[471].w[0:7]"  0.0065517140656425141 0.0098220811731027299 
		0.017423860752588883 0.031940720527315301 0.059512968401159605 0.13662887379657104 
		0.36905989064180994 0.36905989064180994;
	setAttr -s 8 ".wl[472].w[0:7]"  0.0089736615325365279 0.013321977050934975 
		0.023205987533047857 0.041305445836521869 0.073519022233118597 0.15382323886119831 
		0.34292533347632087 0.34292533347632087;
	setAttr -s 8 ".wl[473].w[0:7]"  0.0087568187609683348 0.013025810114573187 
		0.022760016868539391 0.040702409287829359 0.072895767171268736 0.15354551562510541 
		0.34415683108585776 0.34415683108585776;
	setAttr -s 8 ".wl[474].w[0:7]"  0.011219666087837006 0.016602053262140627 
		0.02869622696733724 0.05026356832890818 0.086813999042923889 0.16889505000572094 
		0.31875471815256601 0.31875471815256601;
	setAttr -s 8 ".wl[475].w[0:7]"  0.011151439221093535 0.016515676442041983 
		0.028579391523134073 0.050155094577199889 0.086834798340514815 0.16904630239678251 
		0.31885864874961667 0.31885864874961656;
	setAttr -s 8 ".wl[476].w[0:7]"  0.013595116730715319 0.02009341631030085 
		0.034563232156064966 0.059715504307852003 0.10018660883064262 0.18137579071588278 
		0.29523516547427076 0.29523516547427076;
	setAttr -s 8 ".wl[477].w[0:7]"  0.013668595509969027 0.020219017644346637 
		0.034810314066287436 0.060205901105565056 0.10105278310824778 0.18222344919396757 
		0.29390996968580829 0.29390996968580829;
	setAttr -s 8 ".wl[478].w[0:7]"  0.015949931910831758 0.023582525616486386 
		0.040453702994123847 0.069053571130763811 0.11263719824816197 0.19036778775879926 
		0.2739776411704164 0.27397764117041662;
	setAttr -s 8 ".wl[479].w[0:7]"  0.016161892341815698 0.02392411235621689 
		0.041088724953448841 0.070184967720096497 0.11433612402120373 0.1916174480831522 
		0.27134336526203306 0.27134336526203306;
	setAttr -s 8 ".wl[480].w[0:7]"  0.018075457913626261 0.026765459772254786 
		0.045867267419630341 0.077505805840848221 0.12322604418423268 0.19598045629560895 
		0.25628975428689937 0.25628975428689937;
	setAttr -s 8 ".wl[481].w[0:7]"  0.018359034685719096 0.027232564117430226 
		0.046755964603924581 0.079074316788592766 0.12543806231667803 0.19726043298150661 
		0.25293981225307438 0.25293981225307438;
	setAttr -s 8 ".wl[482].w[0:7]"  0.019812620407447468 0.029406117634987222 
		0.050421820394814694 0.084562605417796172 0.13161136806582177 0.19916217633965819 
		0.24251164586973728 0.24251164586973728;
	setAttr -s 8 ".wl[483].w[0:7]"  0.020292345925805734 0.030188988324804083 
		0.051889560961688147 0.087038774198747865 0.13478242761252476 0.20041900650843458 
		0.23769444823399741 0.23769444823399741;
	setAttr -s 8 ".wl[484].w[0:7]"  0.025470914750652208 0.038707106289980725 
		0.067947012978639323 0.11234536191819694 0.16100291691195831 0.20028029904987776 
		0.20253041702099175 0.19171597107970309;
	setAttr -s 8 ".wl[485].w[0:7]"  0.0091843416862933906 0.013444295313100294 
		0.022873725154012117 0.039675798869830678 0.068961392180826447 0.14182632059183881 
		0.35201706310204917 0.35201706310204917;
	setAttr -s 8 ".wl[486].w[0:7]"  0.0097372548046066407 0.01421505986467126 
		0.024079412560483085 0.041483089666123199 0.07141226457857916 0.14467820245798388 
		0.34719735803377644 0.34719735803377644;
	setAttr -s 8 ".wl[487].w[0:7]"  0.010520875634122425 0.015349210162581913 
		0.025945745266248588 0.044513364693718097 0.07601455518253894 0.15049488871108704 
		0.33858068017485154 0.33858068017485143;
	setAttr -s 8 ".wl[488].w[0:7]"  0.011099242172602488 0.016157371168561394 
		0.027212905542246073 0.046407901212813858 0.078552612033028851 0.15327932236346414 
		0.3336453227536415 0.33364532275364173;
	setAttr -s 8 ".wl[489].w[0:7]"  0.012125603155366167 0.017645147976065576 
		0.029660706380463222 0.050338937638717669 0.084345096598584926 0.15995504776148298 
		0.32296473024465971 0.32296473024465971;
	setAttr -s 8 ".wl[490].w[0:7]"  0.012550106873711176 0.01824178536323268 
		0.030605836276642411 0.051751630973157339 0.086202910896036822 0.1618940713885994 
		0.31937682911431009 0.31937682911431009;
	setAttr -s 8 ".wl[491].w[0:7]"  0.013879098971069434 0.020180037599745786 
		0.03381262822489476 0.056868398627980356 0.093523757351500619 0.16945276974343718 
		0.30614165474068594 0.30614165474068594;
	setAttr -s 8 ".wl[492].w[0:7]"  0.014164732901958015 0.020581966370122586 
		0.0344516296156651 0.057807425047716146 0.094696626562295966 0.17055612268510861 
		0.30387074840856693 0.3038707484085667;
	setAttr -s 8 ".wl[493].w[0:7]"  0.015853298124578644 0.023061098063681625 
		0.03857211230321201 0.064311449627117531 0.10363389530036875 0.17844167934417118 
		0.28806323361843494 0.28806323361843517;
	setAttr -s 8 ".wl[494].w[0:7]"  0.015967972933003144 0.023218091685164803 
		0.038816339833836012 0.064638733952268615 0.10396361432357316 0.17872483116095983 
		0.28733520805559737 0.28733520805559715;
	setAttr -s 8 ".wl[495].w[0:7]"  0.017905820286204882 0.026093737627096374 
		0.043637900948076735 0.072178558781535451 0.11386874084299406 0.18588885086922838 
		0.27021319532243199 0.27021319532243199;
	setAttr -s 8 ".wl[496].w[0:7]"  0.017850606093897249 0.025998471572544941 
		0.043458435206593898 0.071841948683116275 0.11333011604636287 0.18554526426003551 
		0.27098757906872462 0.27098757906872462;
	setAttr -s 8 ".wl[497].w[0:7]"  0.019870406599230003 0.02904455620701845 
		0.048644666407640647 0.079912571863862053 0.1234667295000122 0.19134422678448129 
		0.2538584213188777 0.2538584213188777;
	setAttr -s 8 ".wl[498].w[0:7]"  0.019675837548456435 0.028733676813634743 
		0.048087756886907584 0.07898493281168377 0.1222188485323339 0.19070479135422219 0.25579707802638069 
		0.25579707802638069;
	setAttr -s 8 ".wl[499].w[0:7]"  0.021572063910747646 0.031666103671379106 
		0.053216492546266328 0.087011082757020811 0.13193967689152633 0.19503646661109422 
		0.23977905680598274 0.23977905680598274;
	setAttr -s 8 ".wl[500].w[0:7]"  0.021296457224699548 0.031216261144271694 
		0.052389055821311127 0.085641120495455469 0.13019625382108044 0.19432870013622222 
		0.24246607567847978 0.24246607567847978;
	setAttr -s 8 ".wl[501].w[0:7]"  0.022957021075806886 0.033861487199440134 
		0.057166046469056028 0.093194295497240009 0.13905886204011497 0.19732439661834894 
		0.2282189455499965 0.2282189455499965;
	setAttr -s 8 ".wl[502].w[0:7]"  0.022459847566346471 0.033061428413101716 
		0.055717877434970219 0.090898080976350798 0.13638719584556372 0.19663326487022725 
		0.23242115244671996 0.23242115244671996;
	setAttr -s 8 ".wl[503].w[0:7]"  0.0033905947973174155 0.0051826108495361929 
		0.0095442622049626245 0.018508408163231224 0.037565021914265077 0.10478505523728487 
		0.41051202341670129 0.41051202341670129;
	setAttr -s 8 ".wl[504].w[0:7]"  0.0046418766299860387 0.0070251843448616803 
		0.012698865383328461 0.023940907046978242 0.046559359217490187 0.11828833269124238 
		0.39342273734305649 0.39342273734305649;
	setAttr -s 8 ".wl[505].w[0:7]"  0.0064358810268897041 0.0096465565134094388 
		0.017122436876802406 0.031388133591714565 0.058483300490789404 0.13536053791639283 
		0.37078157679200069 0.37078157679200091;
	setAttr -s 8 ".wl[506].w[0:7]"  0.0086591694642840552 0.012878292032930817 
		0.022514397658561367 0.040263215654241971 0.072109315127913673 0.15285954099181714 
		0.34535803453512542 0.34535803453512542;
	setAttr -s 8 ".wl[507].w[0:7]"  0.011067908157563054 0.016389249230723161 
		0.028375038448512364 0.049796430494483221 0.086213763561722737 0.16871631444383314 
		0.31972064783158116 0.31972064783158116;
	setAttr -s 8 ".wl[508].w[0:7]"  0.013595712686616412 0.020108017604842005 
		0.034636248315737098 0.05990490686976066 0.10054767422392466 0.18211916172958126 
		0.29454413928476897 0.29454413928476897;
	setAttr -s 8 ".wl[509].w[0:7]"  0.016097246046901506 0.023824710931210379 
		0.040937633707247678 0.069926882046961999 0.11391568013383427 0.19164910968560864 
		0.27182436872411775 0.27182436872411775;
	setAttr -s 8 ".wl[510].w[0:7]"  0.018300607829545047 0.027141620185316507 
		0.046621432771054433 0.078846284693231683 0.12507594093685559 0.19736485881767904 
		0.25332462738315897 0.25332462738315875;
	setAttr -s 8 ".wl[511].w[0:7]"  0.02023885469887602 0.030104840880619103 
		0.051768804204007417 0.086836175936801305 0.13446867335443216 0.20056773321681062 
		0.23800745885422667 0.23800745885422667;
	setAttr -s 8 ".wl[512].w[0:7]"  0.0090806148967302307 0.013290159708294662 
		0.022623861664027807 0.039242427438693953 0.068208209858305918 0.14109149012919406 
		0.35323161815237669 0.35323161815237669;
	setAttr -s 8 ".wl[513].w[0:7]"  0.010427155586723389 0.01520998274404122 
		0.025723779362569612 0.044132520311904976 0.075364126599022113 0.14997295724838966 
		0.33958473907367454 0.33958473907367454;
	setAttr -s 8 ".wl[514].w[0:7]"  0.012040831581443022 0.01751914580024698 
		0.029463775686304025 0.050005212084651363 0.083786897927158807 0.15961847844091759 
		0.32378282923963925 0.32378282923963903;
	setAttr -s 8 ".wl[515].w[0:7]"  0.013803269900834922 0.020066760826610214 
		0.033638942394830555 0.05657620592965773 0.09304309329564317 0.16926438229178645 
		0.30680367268031855 0.30680367268031855;
	setAttr -s 8 ".wl[516].w[0:7]"  0.015784583193628455 0.022957788906403098 
		0.038417346727016063 0.064053460656238889 0.10321823959598456 0.17837313220820969 
		0.28859772435625958 0.28859772435625958;
	setAttr -s 8 ".wl[517].w[0:7]"  0.017843167252035046 0.025998690695438469 
		0.043499069430086974 0.07194902071053616 0.11350674001990274 0.18590919827362487 
		0.27064705680918782 0.27064705680918782;
	setAttr -s 8 ".wl[518].w[0:7]"  0.019812757322469527 0.02895614211735351 
		0.048518830563877069 0.079705974968369203 0.12314763979405242 0.19142590387112057 
		0.25421637568137884 0.25421637568137884;
	setAttr -s 8 ".wl[519].w[0:7]"  0.021518484789713261 0.031582904667422189 
		0.053100813488058923 0.086822012225131903 0.13165301303448612 0.19515813667064791 
		0.24008231756226972 0.24008231756226994;
	setAttr -s 8 ".wl[520].w[0:7]"  0.02290687768359494 0.033782630759328601 
		0.057058544513623834 0.093019027352235287 0.13879734823536191 0.19747074458079311 
		0.22848241343753123 0.22848241343753123;
	setAttr -s 8 ".wl[521].w[0:7]"  0.00061764083179404665 0.00098545131743958529 
		0.0019721015655811344 0.004383591994671367 0.011259211137332914 0.062424139437978039 
		0.59196319124635632 0.32639467246884651;
	setAttr -s 8 ".wl[522].w[0:7]"  0.0036153347642655775 0.0054944687888967957 
		0.010009310290704974 0.019128420711920894 0.038077956110355374 0.10231073948646319 
		0.41068188492369656 0.41068188492369656;
	setAttr -s 8 ".wl[523].w[0:7]"  0.0033990345172344835 0.0051945118238784149 
		0.0095627780571385934 0.018534976487434646 0.037592740560516355 0.10472633660383798 
		0.41049481097497975 0.41049481097497975;
	setAttr -s 8 ".wl[524].w[0:7]"  0.0051319622519021514 0.0077224359513726245 
		0.013809876197778934 0.025660025313832463 0.048946107067113297 0.11975526933272465 
		0.38948716194263799 0.38948716194263799;
	setAttr -s 8 ".wl[525].w[0:7]"  0.0046817955322612801 0.0070823112272307429 
		0.012791265118895424 0.024086193187519908 0.046764594588375293 0.11844479146577165 
		0.39307452443997287 0.39307452443997287;
	setAttr -s 8 ".wl[526].w[0:7]"  0.0069298565580292485 0.010345939995066746 
		0.01822692013520999 0.033080689499009622 0.060828501060728887 0.13719596941603071 
		0.36669606166796226 0.36669606166796248;
	setAttr -s 8 ".wl[527].w[0:7]"  0.00643584390041469 0.0096465044728794944 
		0.017122355981151974 0.031388014204405894 0.058483148698199545 0.1353604610546463 
		0.37078183584415098 0.3707818358441512;
	setAttr -s 8 ".wl[528].w[0:7]"  0.0089743191452206512 0.013322866501221897 
		0.023207272364212383 0.041307115313909563 0.07352066106310251 0.15382272331655655 
		0.3429225211478884 0.34292252114788818;
	setAttr -s 8 ".wl[529].w[0:7]"  0.0086592364355665887 0.012878382548710678 
		0.022514528035253323 0.040263383524769443 0.072109474225348816 0.15285945313609506 
		0.345357771047128 0.345357771047128;
	setAttr -s 8 ".wl[530].w[0:7]"  0.011219586713546023 0.016601950232550823 
		0.028696091781082407 0.050263426204462294 0.086813936205021619 0.16889533239674173 
		0.3187548382332977 0.31875483823329748;
	setAttr -s 8 ".wl[531].w[0:7]"  0.011067903539649092 0.016389242548768574 
		0.028375027489057649 0.049796413171903593 0.08621373919419692 0.16871629168900118 
		0.31972069118371149 0.31972069118371149;
	setAttr -s 8 ".wl[532].w[0:7]"  0.013595156254940358 0.020093460723301478 
		0.034563268501623667 0.05971548712506513 0.10018645553099771 0.18137538941770776 
		0.29523539122318199 0.29523539122318199;
	setAttr -s 8 ".wl[533].w[0:7]"  0.013595793590800499 0.02010811035845687 
		0.034636330628383998 0.059904893080079839 0.10054740443474861 0.18211840601667792 
		0.29454453094542621 0.29454453094542621;
	setAttr -s 8 ".wl[534].w[0:7]"  0.015949924765703363 0.023582522426704385 
		0.04045371777291025 0.069053632161389322 0.11263733772189449 0.19036799023538656 
		0.27397743745800568 0.2739774374580059;
	setAttr -s 8 ".wl[535].w[0:7]"  0.016097247692048223 0.023824717694251336 
		0.040937656945693603 0.069926940509350402 0.11391579017403491 0.19164924300540434 
		0.27182420198960866 0.27182420198960866;
	setAttr -s 8 ".wl[536].w[0:7]"  0.018075457163936121 0.026765455622571866 
		0.045867252296804342 0.077505767939839418 0.12322597636611418 0.19598038761129885 
		0.25628985149971761 0.25628985149971761;
	setAttr -s 8 ".wl[537].w[0:7]"  0.018300565713704441 0.027141691451539031 
		0.046621914693183983 0.078847679968626641 0.1250785924995188 0.19736766103340517 
		0.25332094732001115 0.25332094732001093;
	setAttr -s 8 ".wl[538].w[0:7]"  0.019812614963816092 0.02940613391786101 
		0.050421912905763332 0.084562859722838113 0.13161182167791799 0.19916258401610842 
		0.24251103639784757 0.24251103639784757;
	setAttr -s 8 ".wl[539].w[0:7]"  0.020238857483933982 0.030104858598035803 
		0.051768870370537838 0.086836338656424913 0.13446894388699793 0.20056794687650964 
		0.23800709206377998 0.23800709206377987;
	setAttr -s 8 ".wl[540].w[0:7]"  0.025470894140373047 0.038707069859101648 
		0.067946939387490704 0.11234524563832403 0.16100281315553111 0.20028034162723099 
		0.20253051825778395 0.19171617793416454;
	setAttr -s 8 ".wl[541].w[0:7]"  0.0090195892625374221 0.013204519778481742 
		0.022489361134208921 0.039037024164365094 0.06791867036570938 0.14076125303308035 
		0.35378479113080857 0.35378479113080857;
	setAttr -s 8 ".wl[542].w[0:7]"  0.0097372539115529351 0.01421505858207032 
		0.024079410472587479 0.041483086316219109 0.071412259543142967 0.14467819609581431 
		0.3471973675393063 0.34719736753930652;
	setAttr -s 8 ".wl[543].w[0:7]"  0.010425571849015037 0.015207832146542123 
		0.025720608759933379 0.044128123010635387 0.075358813360147506 0.14996934397269432 
		0.33959485345051621 0.3395948534505161;
	setAttr -s 8 ".wl[544].w[0:7]"  0.011099216997424577 0.016157336682880233 
		0.027212853882015369 0.046407827851099474 0.078552519985533351 0.15327924911575311 
		0.33364549774264712 0.3336454977426469;
	setAttr -s 8 ".wl[545].w[0:7]"  0.012041496369596614 0.017520028628522481 
		0.029465018268735491 0.050006801746632974 0.083788544744792234 0.15961886437935346 
		0.3237796229311834 0.3237796229311834;
	setAttr -s 8 ".wl[546].w[0:7]"  0.012550130023341171 0.018241815533286798 
		0.030605877105768637 0.051751679615637945 0.086202953883636121 0.16189406057325176 
		0.31937674163253882 0.31937674163253882;
	setAttr -s 8 ".wl[547].w[0:7]"  0.01380327017671221 0.020066761201145852 
		0.033638942991530758 0.056576206734124328 0.093043094098060219 0.16926438342292954 
		0.30680367068774855 0.30680367068774855;
	setAttr -s 8 ".wl[548].w[0:7]"  0.01416475065437396 0.020581986550529934 
		0.034451648300189312 0.057807428280811632 0.094696589663104153 0.17055600417244293 
		0.30387079618927387 0.30387079618927409;
	setAttr -s 8 ".wl[549].w[0:7]"  0.015784629279717407 0.02295784161802808 
		0.038417396183252184 0.064053471472417661 0.10321815348211001 0.17837287027808946 
		0.28859781884319263 0.28859781884319263;
	setAttr -s 8 ".wl[550].w[0:7]"  0.015967886273809885 0.02321798798740702 
		0.038816227511887368 0.064638662816651607 0.10396367646474769 0.17872517633390611 
		0.28733519130579521 0.28733519130579521;
	setAttr -s 8 ".wl[551].w[0:7]"  0.017843179047994529 0.025998703762208353 
		0.043499080181294517 0.071949018447622554 0.1135067099608702 0.18590913103552678 
		0.27064708878224153 0.27064708878224153;
	setAttr -s 8 ".wl[552].w[0:7]"  0.017850624748401354 0.02599848754668432 
		0.043458432668488957 0.071841895306923337 0.11332997697745517 0.18554504946921199 
		0.2709877666414176 0.27098776664141738;
	setAttr -s 8 ".wl[553].w[0:7]"  0.019812662811442699 0.028956098061166773 
		0.048518999578659308 0.079706631832420605 0.12314897497514452 0.19142745817620033 
		0.25421458728248303 0.25421458728248281;
	setAttr -s 8 ".wl[554].w[0:7]"  0.01967582458055122 0.028733667665569507 
		0.048087767022276698 0.078984990248439621 0.12221897557711739 0.19070495093474363 
		0.25579691198565102 0.25579691198565102;
	setAttr -s 8 ".wl[555].w[0:7]"  0.021518474924098793 0.031582866474116636 
		0.053100691023926755 0.086821736152421419 0.1316525801326148 0.19515780330002289 
		0.24008292399639938 0.24008292399639938;
	setAttr -s 8 ".wl[556].w[0:7]"  0.021296487082625663 0.031216178259457238 
		0.052388598733792341 0.085639924033381692 0.13019421479138057 0.19432690331314448 
		0.24246884689310902 0.24246884689310902;
	setAttr -s 8 ".wl[557].w[0:7]"  0.022906872479824914 0.03378261957602291 
		0.057058517421038506 0.093018974757162726 0.13879727645384182 0.1974707068478489 
		0.22848251623212998 0.2284825162321302;
	setAttr -s 8 ".wl[558].w[0:7]"  0.02245985374328675 0.033061440723216921 
		0.055717905611341011 0.090898134065721697 0.13638726773278262 0.19663330410239474 
		0.23242104701062796 0.23242104701062818;
	setAttr -s 8 ".wl[559].w[0:7]"  0.003556855278488218 0.0054369959266031753 
		0.010002256906673937 0.019386778861928057 0.039320329632144706 0.10803416470504865 
		0.40713130934455666 0.40713130934455666;
	setAttr -s 8 ".wl[560].w[0:7]"  0.0048175938810832387 0.0072892859553040602 
		0.013156766719125383 0.024774370550554325 0.048100541778826958 0.12055849999902865 
		0.39065147055803884 0.39065147055803862;
	setAttr -s 8 ".wl[561].w[0:7]"  0.0065516932569374738 0.009822051845403787 
		0.017423814729345097 0.03194065136805678 0.059512877261731101 0.1366288140685295 
		0.3690600487349982 0.36906004873499809;
	setAttr -s 8 ".wl[562].w[0:7]"  0.008756809983615027 0.013025797276576465 
		0.022759995290563974 0.040702373544330026 0.072895712298927939 0.15354544755240968 
		0.34415693202678832 0.34415693202678854;
	setAttr -s 8 ".wl[563].w[0:7]"  0.0111514752230336 0.016515722086964561 
		0.02857944784541698 0.050155144140222881 0.086834791755078661 0.16904610584300669 
		0.31885865655313839 0.31885865655313828;
	setAttr -s 8 ".wl[564].w[0:7]"  0.013668631547741002 0.020219057617894286 
		0.034810344778745173 0.060205878095270039 0.10105262686196606 0.18222306175026692 
		0.29391019967405824 0.29391019967405824;
	setAttr -s 8 ".wl[565].w[0:7]"  0.016161908025262496 0.023924131913297876 
		0.041088747712119324 0.070184983931057141 0.11433611343130888 0.19161738258158212 
		0.27134336620268612 0.27134336620268612;
	setAttr -s 8 ".wl[566].w[0:7]"  0.018359033658934907 0.027232571277097207 
		0.046756000010200013 0.079074413478375766 0.12543824144548688 0.19726061467988007 
		0.25293956272501261 0.2529395627250125;
	setAttr -s 8 ".wl[567].w[0:7]"  0.020292349688765556 0.030188997374263313 
		0.051889585233079821 0.087038826305952721 0.13478250759635291 0.20041906101995327 
		0.23769433639081622 0.23769433639081622;
	setAttr -s 8 ".wl[568].w[0:7]"  0.0091247121615097276 0.01336076087603667 
		0.022742877750180638 0.039477078221445028 0.068684299634371823 0.14151361528382003 
		0.35254832803631808 0.35254832803631808;
	setAttr -s 8 ".wl[569].w[0:7]"  0.010519295819810894 0.015347067184704142 
		0.025942594307965514 0.044509013830597063 0.076009347817867043 0.15049144592582533 
		0.33859061755661513 0.3385906175566149;
	setAttr -s 8 ".wl[570].w[0:7]"  0.012125604952204581 0.01764515052726855 
		0.029660710443516262 0.050338943863593617 0.084345105180328589 0.15995505645060751 
		0.32296471429124052 0.32296471429124041;
	setAttr -s 8 ".wl[571].w[0:7]"  0.013879139432571012 0.020180089350435495 
		0.033812695086867212 0.056868470691417261 0.093523804479366215 0.16945270694611084 
		0.30614154700661589 0.30614154700661611;
	setAttr -s 8 ".wl[572].w[0:7]"  0.015853290930155622 0.023061087972744029 
		0.038572096791981321 0.064311427515638203 0.10363386890207069 0.17844166454203031 
		0.28806328167268991 0.28806328167268991;
	setAttr -s 8 ".wl[573].w[0:7]"  0.017905776533549099 0.026093693511593019 
		0.04363787937574086 0.072178613828444871 0.11386893792243984 0.18588919983054591 
		0.27021294949884322 0.27021294949884311;
	setAttr -s 8 ".wl[574].w[0:7]"  0.0198702894392352 0.029044509303188876 
		0.048644907089948064 0.079913464750524896 0.12346852265220896 0.19134626661996507 
		0.25385602007246461 0.25385602007246438;
	setAttr -s 8 ".wl[575].w[0:7]"  0.02157205343217844 0.031666079857946325 
		0.053216432531395574 0.087010961446395946 0.13193949912230438 0.19503634531114972 
		0.239779314149315 0.23977931414931478;
	setAttr -s 8 ".wl[576].w[0:7]"  0.022957005991479665 0.033861455683924874 
		0.057165971843394552 0.093194152457913751 0.13905866865467983 0.19732429845810948 
		0.22821922345524898 0.22821922345524898;
	setAttr -s 8 ".wl[577].w[0:7]"  0.045690803003612987 0.068165822294391276 
		0.1082026655628282 0.14791805148114257 0.16667566527154043 0.16711503599468505 0.15885682967071535 
		0.13737512672108418;
	setAttr -s 8 ".wl[578].w[0:7]"  0.033927681732675678 0.053674797047236336 
		0.096067606061415067 0.14968964238536869 0.18059706152220489 0.18181253346535045 
		0.16901772925035047 0.13521294853539842;
	setAttr -s 8 ".wl[579].w[0:7]"  0.017430361929347431 0.029904522973841861 
		0.065377705861222185 0.14151408417850281 0.22010614832192757 0.22413632841088321 
		0.18585701486020978 0.11567383346406519;
	setAttr -s 8 ".wl[580].w[0:7]"  0.03410986519078351 0.054031845614769571 
		0.096372365551518874 0.15016462591734514 0.18117049956008124 0.18194951312349419 
		0.16772929997585068 0.1344719850661569;
	setAttr -s 8 ".wl[581].w[0:7]"  0.034109907551923668 0.05403193033132378 
		0.096372540104774751 0.15016483309623038 0.18117052917511151 0.18194949142845521 
		0.16772907858939554 0.13447168972278523;
	setAttr -s 8 ".wl[582].w[0:7]"  0.017430333116927901 0.029904454806875497 
		0.065377490323867971 0.14151356044772753 0.22010589650456744 0.22413631515127264 
		0.18585760202952686 0.11567434761923427;
	setAttr -s 8 ".wl[583].w[0:7]"  0.033927709457261479 0.053674849948530882 
		0.096067710988437707 0.14968976229193556 0.18059707603458841 0.1818125110131398 0.16901759966117078 
		0.13521278060493538;
	setAttr -s 8 ".wl[584].w[0:7]"  0.045690707032532703 0.06816566890742827 
		0.10820244585314864 0.14791788581206949 0.16667569175309355 0.16711510470376625 0.15885705991916657 
		0.13737543601879468;
	setAttr -s 8 ".wl[585].w[0:7]"  0.017079821968931701 0.029210507797048743 
		0.064347968736632663 0.13928515884857146 0.21663936129685263 0.22407939280130146 
		0.1920415048330387 0.11731628371762268;
	setAttr -s 8 ".wl[586].w[0:7]"  0.033396799520740351 0.052648835365894563 
		0.095142082677922818 0.14824759040276067 0.17885745686132309 0.18181034220460013 
		0.172644318072152 0.13725257489460652;
	setAttr -s 8 ".wl[587].w[0:7]"  0.045015641837274273 0.06691569911677904 
		0.10739618604373917 0.14681553716039264 0.16543330171309317 0.16710003704570547 0.16185558433374039 
		0.13946801274927603;
	setAttr -s 8 ".wl[588].w[0:7]"  0.0335902003825665 0.053020233550268032 
		0.095485236858538505 0.14878229826210992 0.17950263026715438 0.18174631242987374 
		0.1713437431682257 0.13652934508126313;
	setAttr -s 8 ".wl[589].w[0:7]"  0.033590252333588325 0.053020326073849912 
		0.095485409530634391 0.14878248224924817 0.17950264423475029 0.18174624986034854 
		0.17134353937941071 0.13652909633816965;
	setAttr -s 8 ".wl[590].w[0:7]"  0.045015615115067693 0.066915668625990271 
		0.1073961640026426 0.14681554324026225 0.16543332783522893 0.16710006474722733 0.16185560515020561 
		0.13946801128337535;
	setAttr -s 8 ".wl[591].w[0:7]"  0.033396853243547339 0.052648938069001172 
		0.095142293772811123 0.14824783917177592 0.17885750349825824 0.18181027376881317 
		0.17264406287220768 0.1372522356035854;
	setAttr -s 8 ".wl[592].w[0:7]"  0.017079848749036688 0.02921057217438618 
		0.064348180950018097 0.13928569170757363 0.21663966382166569 0.22407937478730927 
		0.19204091036478221 0.11731575744522808;
	setAttr -s 8 ".wl[593].w[0:7]"  0.90979756935728984 0.057297054031176124 
		0.015463553048448646 0.0065106381026078996 0.0039697731668757747 0.0029062851897688866 
		0.0022382042312990981 0.0018169228725339096;
	setAttr -s 8 ".wl[594].w[0:7]"  0.99999873935205319 8.1796076143607819e-07 
		2.0956795599468853e-07 8.7234434838979277e-08 5.3041314950384406e-08 3.8786352969500756e-08 
		2.9842175925196595e-08 2.4214950726643098e-08;
	setAttr -s 8 ".wl[595].w[0:7]"  0.90982621614970771 0.057206982823013917 
		0.015483454293502645 0.006525924662750756 0.003979093938951031 0.0029131089603580481 
		0.00224380351568049 0.0018214156560354903;
	setAttr -s 8 ".wl[596].w[0:7]"  0.90977371677497643 0.057410832089096642 
		0.015433498933167091 0.0064885788551620185 0.0039563228122543878 0.0028964381282554769 
		0.0022301535323900833 0.0018104588746977982;
	setAttr -s 8 ".wl[597].w[0:7]"  0.90976703919939095 0.057514156638856409 
		0.015400231794980936 0.0064652076968177048 0.0039420725939021432 0.002886005500830202 
		0.0022216554433227621 0.0018036311318989349;
	setAttr -s 8 ".wl[598].w[0:7]"  0.90977355077057132 0.057582817110606588 
		0.015373762239339357 0.006447236866577802 0.0039311151238402182 0.0028779834975388623 
		0.0022151404950608413 0.0017983938964649835;
	setAttr -s 8 ".wl[599].w[0:7]"  0.90977852664407566 0.057606353666186279 
		0.015363596168963553 0.0064404646817751701 0.0039269858486430543 0.0028749604319188906 
		0.0022126895439911736 0.0017964230144463167;
	setAttr -s 8 ".wl[600].w[0:7]"  0.90977355077057132 0.057582817110606588 
		0.015373762239339357 0.006447236866577802 0.0039311151238402182 0.0028779834975388623 
		0.0022151404950608413 0.0017983938964649835;
	setAttr -s 8 ".wl[601].w[0:7]"  0.90976703919939095 0.057514156638856409 
		0.015400231794980936 0.0064652076968177048 0.0039420725939021432 0.002886005500830202 
		0.0022216554433227621 0.0018036311318989349;
	setAttr -s 8 ".wl[602].w[0:7]"  0.90977371677497643 0.057410832089096642 
		0.015433498933167091 0.0064885788551620185 0.0039563228122543878 0.0028964381282554769 
		0.0022301535323900833 0.0018104588746977982;
	setAttr -s 8 ".wl[603].w[0:7]"  0.90979756935728984 0.057297054031176124 
		0.015463553048448646 0.0065106381026078996 0.0039697731668757747 0.0029062851897688866 
		0.0022382042312990981 0.0018169228725339096;
	setAttr -s 8 ".wl[604].w[0:7]"  0.90982621614970771 0.057206982823013917 
		0.015483454293502645 0.006525924662750756 0.003979093938951031 0.0029131089603580481 
		0.00224380351568049 0.0018214156560354903;
	setAttr -s 8 ".wl[605].w[0:7]"  0.90983921268463086 0.057172495835079037 
		0.015490267016058261 0.0065313253122067207 0.00398238688374432 0.0029155197285250967 
		0.0022457864775593155 0.0018230060621963848;
	setAttr -s 8 ".wl[606].w[0:7]"  0.050240532248757255 0.077956076434317928 
		0.12615977722249685 0.16298511305454991 0.16780832630899437 0.16468925188032865 0.139188037200288 
		0.11097288565026701;
	setAttr -s 8 ".wl[607].w[0:7]"  0.040053617563922436 0.066112138648243085 
		0.12108240570879633 0.17336040092949193 0.1810581704730026 0.17605549619644931 0.13935564852373322 
		0.10292212195636104;
	setAttr -s 8 ".wl[608].w[0:7]"  0.026238166752001642 0.047125000772198583 
		0.1060160295470642 0.19389529683282525 0.21112843586799313 0.19976593098738063 0.13203734223252855 
		0.083793797008008042;
	setAttr -s 8 ".wl[609].w[0:7]"  0.040185027626782464 0.066417832260007192 
		0.12123081887172868 0.17357239568176699 0.18127917106124997 0.17627006229557471 0.13853732475477001 
		0.10250736744812003;
	setAttr -s 8 ".wl[610].w[0:7]"  0.031361157777784192 0.050216699925314502 
		0.092145097554395552 0.14911874875750336 0.18475309776419835 0.18615369986373168 
		0.17154311342832537 0.13470838492874695;
	setAttr -s 8 ".wl[611].w[0:7]"  0.039694548300508517 0.065283351995325534 
		0.12066803963650977 0.17276680890617066 0.18043791743607818 0.17545212302165603 0.1416330118862015 
		0.10406419881754986;
	setAttr -s 8 ".wl[612].w[0:7]"  0.049598781706628688 0.076594220641921479 
		0.12563702948380009 0.16230991458971034 0.16711318254901983 0.16400703752406479 0.14205114568620636 
		0.11268868781864851;
	setAttr -s 8 ".wl[613].w[0:7]"  0.039562610062679582 0.064981186935531232 
		0.12051204840843147 0.17254312686068848 0.18020406305490713 0.1752245497267983 0.1424851513644334 
		0.10448726358653046;
	setAttr -s 8 ".wl[614].w[0:7]"  0.025935837420610328 0.046351510953496974 
		0.10545358722623784 0.19286597795394189 0.21000681291481979 0.19870404390105995 0.13562625693981373 
		0.085055972690019521;
	setAttr -s 8 ".wl[615].w[0:7]"  0.03082643538545499 0.0491780809070059 
		0.091136188306024504 0.14748607290890187 0.18273035902287008 0.18613150107115881 
		0.17562812642953149 0.1368832359690523;
	setAttr -s 8 ".wl[616].w[0:7]"  0.025934510248802174 0.046348569471189205 
		0.10544558096594912 0.19285774102155023 0.21000623123064197 0.198710017763369 0.13563551120664905 
		0.085061838091849168;
	setAttr -s 8 ".wl[617].w[0:7]"  0.039560837546441019 0.064977817639555832 
		0.12050587141137668 0.17253929541828925 0.18020400141609524 0.17522760552377531 0.14249165170226727 
		0.10449291934219947;
	setAttr -s 8 ".wl[618].w[0:7]"  0.049597264647357454 0.076591630061211863 
		0.12563326633424851 0.16230806446540869 0.16711327632214565 0.16400873072291156 0.14205507309941284 
		0.11269269434730354;
	setAttr -s 8 ".wl[619].w[0:7]"  0.039693101413512594 0.06528057095194835 
		0.12066292368033904 0.17276359768156663 0.18043784210688468 0.17545465808906571 0.14163838591103683 
		0.10406892016564614;
	setAttr -s 8 ".wl[620].w[0:7]"  0.030825720901035497 0.049176690196198608 
		0.091133193092158421 0.14748224086472389 0.18272948557126223 0.18613244623545003 
		0.17563198755039222 0.13688823558877919;
	setAttr -s 8 ".wl[621].w[0:7]"  0.040185003775820495 0.066417791719897756 
		0.12123075910003665 0.17357237221446292 0.18127918447917715 0.17627010157492962 0.13853737880426875 
		0.10250740833140666;
	setAttr -s 8 ".wl[622].w[0:7]"  0.026238291387710919 0.047125274566257931 
		0.10601673945393929 0.19389599068012181 0.21112844488791835 0.19976537098962416 0.13203657757346676 
		0.08379331046096089;
	setAttr -s 8 ".wl[623].w[0:7]"  0.040053675853171489 0.066112265022591973 
		0.12108266403193345 0.17336059180613189 0.18105820059219263 0.176055381735226 0.13935536612099408 
		0.10292185483775848;
	setAttr -s 8 ".wl[624].w[0:7]"  0.05024040699009006 0.077955902195733354 
		0.12615960582003991 0.16298509940493239 0.16780840446758508 0.1646893857493385 0.13918819454782355 
		0.1109730008244571;
	setAttr -s 8 ".wl[625].w[0:7]"  0.031361125929544174 0.050216633008699059 
		0.092144947097626287 0.14911854754922765 0.18475305152277377 0.1861537167547741 0.17154331890566718 
		0.13470865923168776;
	setAttr -s 8 ".wl[626].w[0:7]"  0.9098264383565241 0.057206802045011551 
		0.015483428145633029 0.0065259174690337797 0.0039790905115038386 0.0029131068132726783 
		0.0022438020642383066 0.0018214145947827178;
	setAttr -s 8 ".wl[627].w[0:7]"  0.90979778411603607 0.057296877593911964 
		0.015463528346806798 0.0065106315321680824 0.0039697701172174693 0.0029062833184158123 
		0.0022382029921771064 0.0018169219832666963;
	setAttr -s 8 ".wl[628].w[0:7]"  0.90977392127043588 0.05741066166103153 
		0.015433476215513308 0.0064885731368389916 0.0039563202789218415 0.0028964366336822083 
		0.002230152583253567 0.0018104582203227622;
	setAttr -s 8 ".wl[629].w[0:7]"  0.90976723332689613 0.057513992313532478 
		0.015400211071135803 0.0064652028314746111 0.0039420705772287732 0.0028860043832080059 
		0.0022216547841390905 0.0018036307123853431;
	setAttr -s 8 ".wl[630].w[0:7]"  0.90977373723911159 0.057582657314412408 
		0.015373742981541705 0.0064472326262794916 0.0039311134856391348 0.0028779826560003147 
		0.0022151400481370174 0.0017983936488783982;
	setAttr -s 8 ".wl[631].w[0:7]"  0.90977871029404866 0.057606195541297624 
		0.015363577449199382 0.0064404606704031699 0.003926984349031758 0.0028749596914666186 
		0.0022126891747623265 0.001796422829790506;
	setAttr -s 8 ".wl[632].w[0:7]"  0.90977373723911159 0.057582657314412408 
		0.015373742981541705 0.0064472326262794916 0.0039311134856391348 0.0028779826560003147 
		0.0022151400481370174 0.0017983936488783982;
	setAttr -s 8 ".wl[633].w[0:7]"  0.90976723332689613 0.057513992313532478 
		0.015400211071135803 0.0064652028314746111 0.0039420705772287732 0.0028860043832080059 
		0.0022216547841390905 0.0018036307123853431;
	setAttr -s 8 ".wl[634].w[0:7]"  0.90977392127043588 0.05741066166103153 
		0.015433476215513308 0.0064885731368389916 0.0039563202789218415 0.0028964366336822083 
		0.002230152583253567 0.0018104582203227622;
	setAttr -s 8 ".wl[635].w[0:7]"  0.90979778411603607 0.057296877593911964 
		0.015463528346806798 0.0065106315321680824 0.0039697701172174693 0.0029062833184158123 
		0.0022382029921771064 0.0018169219832666963;
	setAttr -s 8 ".wl[636].w[0:7]"  0.9098264383565241 0.057206802045011551 
		0.015483428145633029 0.0065259174690337797 0.0039790905115038386 0.0029131068132726783 
		0.0022438020642383066 0.0018214145947827178;
	setAttr -s 8 ".wl[637].w[0:7]"  0.90983943760380837 0.057172313480602616 
		0.015490240340151833 0.0065313178904673683 0.0039823833180571066 0.0029155174805334258 
		0.0022457849483943824 0.001823004937984987;
	setAttr -s 8 ".wl[638].w[0:7]"  0.99999873950832496 8.1785845175285293e-07 
		2.0954227109928856e-07 8.7223823183496765e-08 5.3034882184432339e-08 3.8781656320975941e-08 
		2.9838566401309434e-08 2.4212024177250098e-08;
	setAttr -s 8 ".wl[639].w[0:7]"  0.90979778383821153 0.057296877822161488 
		0.015463528378762314 0.0065106315406679985 0.0039697701211626937 0.0029062833208367092 
		0.0022382029937801111 0.0018169219844171073;
	setAttr -s 8 ".wl[640].w[0:7]"  0.99999873945632567 8.1789249526118263e-07 
		2.0955081774927123e-07 8.7227354213906237e-08 5.30370226889372e-08 3.8783219132112997e-08 
		2.9839767471495076e-08 2.4212997987509469e-08;
	setAttr -s 8 ".wl[641].w[0:7]"  0.90982643806906438 0.057206802278876513 
		0.015483428179459472 0.0065259174783400074 0.0039790905159377927 0.0029131068160502794 
		0.0022438020661159808 0.0018214145961556196;
	setAttr -s 8 ".wl[642].w[0:7]"  0.90977392100588839 0.057410661881507216 
		0.01543347624490222 0.0064885731442365611 0.0039563202821991158 0.0028964366356156799 
		0.002230152584481429 0.001810458221169303;
	setAttr -s 8 ".wl[643].w[0:7]"  0.90976723307576113 0.057513992526113319 
		0.015400211097945413 0.0064652028377687144 0.0039420705798376672 0.002886004384653832 
		0.0022216547849918523 0.0018036307129280533;
	setAttr -s 8 ".wl[644].w[0:7]"  0.909773736997885 0.057582657521134076 
		0.015373743006454742 0.0064472326317649977 0.0039311134877584109 0.0028779826570889812 
		0.0022151400487151855 0.0017983936491986925;
	setAttr -s 8 ".wl[645].w[0:7]"  0.90977871005646826 0.057606195745857229 
		0.015363577473416393 0.0064404606755925258 0.0039269843509717479 0.0028749596924245134 
		0.0022126891752399843 0.0017964228300293885;
	setAttr -s 8 ".wl[646].w[0:7]"  0.909773736997885 0.057582657521134076 
		0.015373743006454742 0.0064472326317649977 0.0039311134877584109 0.0028779826570889812 
		0.0022151400487151855 0.0017983936491986925;
	setAttr -s 8 ".wl[647].w[0:7]"  0.90976723307576113 0.057513992526113319 
		0.015400211097945413 0.0064652028377687144 0.0039420705798376672 0.002886004384653832 
		0.0022216547849918523 0.0018036307129280533;
	setAttr -s 8 ".wl[648].w[0:7]"  0.90977392100588839 0.057410661881507216 
		0.01543347624490222 0.0064885731442365611 0.0039563202821991158 0.0028964366356156799 
		0.002230152584481429 0.001810458221169303;
	setAttr -s 8 ".wl[649].w[0:7]"  0.90979778383821153 0.057296877822161488 
		0.015463528378762314 0.0065106315406679985 0.0039697701211626937 0.0029062833208367092 
		0.0022382029937801111 0.0018169219844171073;
	setAttr -s 8 ".wl[650].w[0:7]"  0.90982643806906438 0.057206802278876513 
		0.015483428179459472 0.0065259174783400074 0.0039790905159377927 0.0029131068160502794 
		0.0022438020661159808 0.0018214145961556196;
	setAttr -s 8 ".wl[651].w[0:7]"  0.90983943731283967 0.057172313716507016 
		0.015490240374661374 0.0065313179000685787 0.0039823833226698968 0.0029155174834415648 
		0.0022457849503726033 0.001823004939439336;
	setAttr -s 8 ".wl[652].w[0:7]"  0.040774386685889855 0.079481005143360761 
		0.17787569526649677 0.21535994700182706 0.20574721806771373 0.13975156312345588 0.085055369121766727 
		0.055954815589489351;
	setAttr -s 8 ".wl[653].w[0:7]"  0.03576390130015062 0.07248464341141149 
		0.18118489294508938 0.22942610725869225 0.21663785808857608 0.13627430407995494 0.078290264352554026 
		0.049938028563571081;
	setAttr -s 8 ".wl[654].w[0:7]"  0.029968857418815779 0.063593359207199024 
		0.18368807055949782 0.25009069575611448 0.23153404298816341 0.12970971923053604 0.068932954796219748 
		0.042482300043453776;
	setAttr -s 8 ".wl[655].w[0:7]"  0.035824976489387143 0.072729058743033134 
		0.18120159255751248 0.2294472532108118 0.21665782536182634 0.13628686433276838 0.078022016687244386 
		0.049830412617416359;
	setAttr -s 8 ".wl[656].w[0:7]"  0.029840662354062009 0.058125556871231027 
		0.1464412614236984 0.22562383009947085 0.22541519774622987 0.16305407955919032 0.093472439410736088 
		0.058026972535381451;
	setAttr -s 8 ".wl[657].w[0:7]"  0.035567031582607628 0.071704281212514043 
		0.18112581602478761 0.22935132966480329 0.21656724140195813 0.13622985472660723 0.079167098207172035 
		0.050287347179550045;
	setAttr -s 8 ".wl[658].w[0:7]"  0.040491832105128953 0.078445233549991458 
		0.17780125085309856 0.21526986423184552 0.20566114406572206 0.13969304170809541 0.086198521478752982 
		0.056439112007365108;
	setAttr -s 8 ".wl[659].w[0:7]"  0.03556703124955668 0.071704280726997915 
		0.18112581622044011 0.22935133070617622 0.21656724218662901 0.13622985443491123 0.079167097713516682 
		0.050287346761772177;
	setAttr -s 8 ".wl[660].w[0:7]"  0.02979746028049916 0.062848521254775219 
		0.18363015323435786 0.25001188939545221 0.23146107164652785 0.1296688012311065 0.06978350751130119 
		0.042798595445979894;
	setAttr -s 8 ".wl[661].w[0:7]"  0.029644920243995551 0.057462858276230107 
		0.14623630021166203 0.22530809326011417 0.22509975273591412 0.16282587430593609 0.094885263815472146 
		0.058536937150675823;
	setAttr -s 8 ".wl[662].w[0:7]"  0.029968883602571713 0.063593431020114666 
		0.18368828057754702 0.25009072676016497 0.23153393161330538 0.12970958570930161 0.068932892234712537 
		0.042482268482282114;
	setAttr -s 8 ".wl[663].w[0:7]"  0.035763930810152944 0.072484717829230189 
		0.18118505857730613 0.22942613178217791 0.21663778278577647 0.13627418607018266 0.078290199094754126 
		0.04993799305041937;
	setAttr -s 8 ".wl[664].w[0:7]"  0.040774418682580929 0.07948108022123275 
		0.1778758309113927 0.21535996732102095 0.20574716259921413 0.13975145874755313 0.085055303887320813 
		0.055954777629684586;
	setAttr -s 8 ".wl[665].w[0:7]"  0.035825006047936675 0.072729133543030053 
		0.18120175798540711 0.22944727745850355 0.21665774978953076 0.13628674614696096 0.078021951816630103 
		0.049830377212000933;
	setAttr -s 8 ".wl[666].w[0:7]"  0.029840685292697441 0.058125613000171605 
		0.14644141453453596 0.22562385076611904 0.22541520469914322 0.16305394859398409 0.093472355953253497 
		0.058026927160095068;
	setAttr -s 8 ".wl[667].w[0:7]"  0.036022474046441218 0.073527100706392734 
		0.18125036138577894 0.22950903654844387 0.21671615747406808 0.1363235283799 0.077166510156794987 
		0.049484831302180128;
	setAttr -s 8 ".wl[668].w[0:7]"  0.03014074283020313 0.064352632188239167 
		0.1837377089029972 0.25015832610782296 0.23159664279258657 0.12974475071093003 0.068100290204795327 
		0.042168906262425608;
	setAttr -s 8 ".wl[669].w[0:7]"  0.036022474046441218 0.073527100706392734 
		0.18125036138577894 0.22950903654844387 0.21671615747406808 0.1363235283799 0.077166510156794987 
		0.049484831302180128;
	setAttr -s 8 ".wl[670].w[0:7]"  0.041057736179196808 0.080537874305494528 
		0.17793772246318118 0.21543509493091534 0.20581899957757824 0.1398002633065249 0.083937108038998176 
		0.055475201198111015;
	setAttr -s 8 ".wl[671].w[0:7]"  0.030036292470714425 0.058797590043532688 
		0.14663579236759577 0.22592359581177554 0.2257146861374735 0.16327068629498473 0.092098270915824371 
		0.057523085958098914;
	setAttr -s 8 ".wl[672].w[0:7]"  0.90979767659785116 0.057296965926574323 
		0.015463540713599634 0.0065106348216373809 0.0039697716440192151 0.0029062842553028837 
		0.0022382036125397184 0.0018169224284756251;
	setAttr -s 8 ".wl[673].w[0:7]"  0.99999873940418982 8.1792662796348956e-07 
		2.0955938678068923e-07 8.7230894489537657e-08 5.3039168797486036e-08 3.8784786034690563e-08 
		2.9840971686001055e-08 2.4213974347090927e-08;
	setAttr -s 8 ".wl[674].w[0:7]"  0.90982632710948985 0.057206892550848196 
		0.015483441236474767 0.0065259210705447077 0.0039790922274443525 0.0029131078882042288 
		0.0022438027908983382 0.0018214151260956646;
	setAttr -s 8 ".wl[675].w[0:7]"  0.90977381889052866 0.057410746985211009 
		0.015433487589029423 0.006488575999698867 0.0039563215472267895 0.0028964373819356944 
		0.0022301530584358858 0.0018104585479336761;
	setAttr -s 8 ".wl[676].w[0:7]"  0.90976713613766769 0.057514074582397677 
		0.015400221446458574 0.0064652052672929368 0.0039420715868700032 0.0028860049427421649 
		0.0022216551141574555 0.0018036309224136312;
	setAttr -s 8 ".wl[677].w[0:7]"  0.90977364388431625 0.057582737315785941 
		0.015373752622892917 0.0064472347491712368 0.0039311143057994572 0.0028779830773140937 
		0.0022151402718881752 0.0017983937728319834;
	setAttr -s 8 ".wl[678].w[0:7]"  0.90977861835035867 0.057606274705938397 
		0.015363586821186015 0.0064404626786837256 0.0039269850998075598 0.0028749600621718824 
		0.0022126893596157459 0.0017964229222380012;
	setAttr -s 8 ".wl[679].w[0:7]"  0.90977364388431625 0.057582737315785941 
		0.015373752622892917 0.0064472347491712368 0.0039311143057994572 0.0028779830773140937 
		0.0022151402718881752 0.0017983937728319834;
	setAttr -s 8 ".wl[680].w[0:7]"  0.90976713613766769 0.057514074582397677 
		0.015400221446458574 0.0064652052672929368 0.0039420715868700032 0.0028860049427421649 
		0.0022216551141574555 0.0018036309224136312;
	setAttr -s 8 ".wl[681].w[0:7]"  0.90977381889052866 0.057410746985211009 
		0.015433487589029423 0.006488575999698867 0.0039563215472267895 0.0028964373819356944 
		0.0022301530584358858 0.0018104585479336761;
	setAttr -s 8 ".wl[682].w[0:7]"  0.90979767659785116 0.057296965926574323 
		0.015463540713599634 0.0065106348216373809 0.0039697716440192151 0.0029062842553028837 
		0.0022382036125397184 0.0018169224284756251;
	setAttr -s 8 ".wl[683].w[0:7]"  0.90982632710948985 0.057206892550848196 
		0.015483441236474767 0.0065259210705447077 0.0039790922274443525 0.0029131078882042288 
		0.0022438027908983382 0.0018214151260956646;
	setAttr -s 8 ".wl[684].w[0:7]"  0.90983932499884024 0.057172404775695101 
		0.015490253695353366 0.0065313216061369406 0.0039823851032070347 0.0029155186059833887 
		0.0022457857139660579 0.0018230055008179684;
	setAttr -s 8 ".wl[685].w[0:7]"  0.90979767687567625 0.057296965698324272 
		0.015463540681644079 0.0065106348131374571 0.0039697716400739907 0.0029062842528819869 
		0.0022382036109367142 0.0018169224273252144;
	setAttr -s 8 ".wl[686].w[0:7]"  0.90982632739695002 0.057206892316982699 
		0.015483441202648288 0.0065259210612384783 0.0039790922230103975 0.0029131078854266273 
		0.0022438027890206631 0.0018214151247227628;
	setAttr -s 8 ".wl[687].w[0:7]"  0.99999873945619067 8.1789258368687715e-07 
		2.0955083994859862e-07 8.7227363385509388e-08 5.3037028248746593e-08 3.8783223191404444e-08 
		2.9839770591189862e-08 2.4213000516912629e-08;
	setAttr -s 8 ".wl[688].w[0:7]"  0.90977381915507638 0.057410746764734857 
		0.015433487559640481 0.0064885759923012957 0.003956321543949517 0.0028964373800022228 
		0.0022301530572080256 0.0018104585470871367;
	setAttr -s 8 ".wl[689].w[0:7]"  0.9097671363888028 0.057514074369816391 
		0.015400221419648941 0.0064652052609988301 0.003942071584261111 0.0028860049412963405 
		0.0022216551133046954 0.0018036309218709228;
	setAttr -s 8 ".wl[690].w[0:7]"  0.90977364412554329 0.057582737109063815 
		0.015373752597979854 0.0064472347436857315 0.0039311143036801811 0.0028779830762254276 
		0.0022151402713100079 0.0017983937725116904;
	setAttr -s 8 ".wl[691].w[0:7]"  0.90977861858793918 0.057606274501378396 
		0.015363586796968989 0.0064404626734943715 0.0039269850978675734 0.0028749600612139885 
		0.0022126893591380894 0.0017964229219991192;
	setAttr -s 8 ".wl[692].w[0:7]"  0.90977364412554329 0.057582737109063815 
		0.015373752597979854 0.0064472347436857315 0.0039311143036801811 0.0028779830762254276 
		0.0022151402713100079 0.0017983937725116904;
	setAttr -s 8 ".wl[693].w[0:7]"  0.9097671363888028 0.057514074369816391 
		0.015400221419648941 0.0064652052609988301 0.003942071584261111 0.0028860049412963405 
		0.0022216551133046954 0.0018036309218709228;
	setAttr -s 8 ".wl[694].w[0:7]"  0.90977381915507638 0.057410746764734857 
		0.015433487559640481 0.0064885759923012957 0.003956321543949517 0.0028964373800022228 
		0.0022301530572080256 0.0018104585470871367;
	setAttr -s 8 ".wl[695].w[0:7]"  0.90979767687567625 0.057296965698324272 
		0.015463540681644079 0.0065106348131374571 0.0039697716400739907 0.0029062842528819869 
		0.0022382036109367142 0.0018169224273252144;
	setAttr -s 8 ".wl[696].w[0:7]"  0.90982632739695002 0.057206892316982699 
		0.015483441202648288 0.0065259210612384783 0.0039790922230103975 0.0029131078854266273 
		0.0022438027890206631 0.0018214151247227628;
	setAttr -s 8 ".wl[697].w[0:7]"  0.90983932528980938 0.057172404539790209 
		0.01549025366084379 0.006531321596535725 0.0039823850985942445 0.0029155186030752488 
		0.0022457857119878369 0.0018230054993636196;
	setAttr -s 8 ".wl[698].w[0:7]"  0.051178862145068449 0.083643585387065872 
		0.14143114533673859 0.17479507577642903 0.17503865159302356 0.15978873479742411 0.12234140362123408 
		0.091782541343016444;
	setAttr -s 8 ".wl[699].w[0:7]"  0.045303577239620203 0.077221946933278787 
		0.14138351988776918 0.1835080058407263 0.18383108115799182 0.16404941881686272 0.11904409577410739 
		0.085658354349643667;
	setAttr -s 8 ".wl[700].w[0:7]"  0.038178982746886192 0.068355712619148634 
		0.13990515883390989 0.19646493125657907 0.19693459411378011 0.16922910817075124 0.11368535141145243 
		0.077246160847492487;
	setAttr -s 8 ".wl[701].w[0:7]"  0.045232798157212178 0.077036109957120569 
		0.14133228503214301 0.18344188136047135 0.18376488334936142 0.1639906360466 0.11937860022595698 
		0.085822805871134264;
	setAttr -s 8 ".wl[702].w[0:7]"  0.039584200539443601 0.066337111713872632 
		0.12380191984803099 0.17765641957900682 0.1837668947420657 0.17619970328240078 0.13481889629415106 
		0.097834854001028593;
	setAttr -s 8 ".wl[703].w[0:7]"  0.04477645657876695 0.07584874183786959 
		0.14099102114557821 0.18299865061463794 0.18332083456822529 0.16359409517693191 0.12157705122423897 
		0.086893148853751184;
	setAttr -s 8 ".wl[704].w[0:7]"  0.037756437693612553 0.067162808767200682 
		0.13950371808488518 0.19590063863252394 0.19636888265746696 0.16874254615086504 0.11622716768675795 
		0.078337800326687732;
	setAttr -s 8 ".wl[705].w[0:7]"  0.044705831279325613 0.075666637391961972 
		0.14093628973341132 0.18292736050110486 0.1832493934279005 0.16353018378558121 0.12192387159630021 
		0.087060432284414332;
	setAttr -s 8 ".wl[706].w[0:7]"  0.050559098129107638 0.082138082161697337 
		0.14105222785838614 0.17432682155520435 0.17456974345560211 0.15936063737011291 0.1248626146214955 
		0.093130774848394118;
	setAttr -s 8 ".wl[707].w[0:7]"  0.039093381260669371 0.065166120113962181 
		0.12324198265332435 0.17685294942857341 0.18293579432944659 0.17540282014082598 0.13795631546789658 
		0.099350636605301551;
	setAttr -s 8 ".wl[708].w[0:7]"  0.037754635034376122 0.067159010834832125 
		0.13949610096806359 0.19589877735025238 0.19636808598499214 0.16874841206744573 0.11623317590496902 
		0.078341801855068852;
	setAttr -s 8 ".wl[709].w[0:7]"  0.044774660044045109 0.075845268348579506 
		0.14098535893214684 0.18299743877421062 0.18332030505096325 0.16359816431788565 0.12158195301784665 
		0.086896851514322387;
	setAttr -s 8 ".wl[710].w[0:7]"  0.050557254457938579 0.082134782568264161 
		0.14104760656753648 0.1743259300558696 0.17456936094566045 0.15936383581863711 0.12486690889764132 
		0.093134320688452288;
	setAttr -s 8 ".wl[711].w[0:7]"  0.044703822888833164 0.075662777509168042 
		0.14093000930784397 0.18292603916820835 0.18324882773859105 0.16353469122200376 0.12192931176959523 
		0.087064520395756476;
	setAttr -s 8 ".wl[712].w[0:7]"  0.039092092621941722 0.065163612558117728 
		0.12323728242249025 0.17685025592868234 0.18293562571034297 0.17540545070919952 0.13796109770677295 
		0.099354582342452341;
	setAttr -s 8 ".wl[713].w[0:7]"  0.045303544250060029 0.077221892561146185 
		0.1413834565179658 0.18350801414291013 0.18383109726732386 0.16404947449307861 0.11904414026331106 
		0.085658380504204282;
	setAttr -s 8 ".wl[714].w[0:7]"  0.051178766271196184 0.083643447822941891 
		0.14143102787477158 0.17479511758920893 0.17503870731078122 0.15978885373959811 0.12234149186440069 
		0.091782587527101334;
	setAttr -s 8 ".wl[715].w[0:7]"  0.045232810862419051 0.077036151350012363 
		0.14133238726110769 0.1834419359156296 0.18376492557590576 0.16399057438668183 0.11937849899397276 
		0.085822715654270923;
	setAttr -s 8 ".wl[716].w[0:7]"  0.038179066130920369 0.06835589439470513 
		0.13990552222901514 0.19646502473044938 0.1969346361704675 0.16922882253518656 0.11368506780473873 
		0.077245966004517164;
	setAttr -s 8 ".wl[717].w[0:7]"  0.039584148621161393 0.066337015589958304 
		0.12380175891792586 0.17765634413865694 0.18376690667328494 0.1761998054643012 0.13481904747789072 
		0.097834973116820656;
	setAttr -s 8 ".wl[718].w[0:7]"  0.0019746473891070516 0.0034645101136090636 
		0.0084632960673408381 0.027417422687461199 0.15896114621384239 0.52678518491766679 
		0.23275961598491085 0.040174176626061875;
	setAttr -s 8 ".wl[719].w[0:7]"  0.0020208386236006222 0.0035461266862619866 
		0.0086594120354386434 0.028052753125445581 0.16264465179531093 0.52187192641860769 
		0.23227785556004521 0.04092643575528928;
	setAttr -s 8 ".wl[720].w[0:7]"  0.0017388478910432719 0.0030271994150072633 
		0.0072631912557061598 0.02271534468626081 0.1229824912994687 0.5291478461832394 0.27203309829809946 
		0.041091980971175023;
	setAttr -s 8 ".wl[721].w[0:7]"  0.0020208386236006222 0.0035461266862619866 
		0.0086594120354386434 0.028052753125445581 0.16264465179531093 0.52187192641860769 
		0.23227785556004521 0.04092643575528928;
	setAttr -s 8 ".wl[722].w[0:7]"  0.0019746473891070516 0.0034645101136090636 
		0.0084632960673408381 0.027417422687461199 0.15896114621384239 0.52678518491766679 
		0.23275961598491085 0.040174176626061875;
	setAttr -s 8 ".wl[723].w[0:7]"  0.0015807126122947485 0.0027506926161760992 
		0.0066065659221462986 0.02066177480816828 0.11186431796098001 0.54593916688291744 
		0.27268948776341195 0.03790728143390517;
	setAttr -s 8 ".wl[724].w[0:7]"  0.0018176741090199712 0.0031874208943662137 
		0.0077959589980092503 0.025255538939796183 0.14642694541571935 0.54431201986436284 
		0.2336640171143263 0.037540424664399899;
	setAttr -s 8 ".wl[725].w[0:7]"  0.0017673728149744596 0.0030987133631516818 
		0.0075818434325167806 0.024561896486474357 0.14240531343255244 0.55022475791483172 
		0.23368831272484225 0.036671789830656394;
	setAttr -s 8 ".wl[726].w[0:7]"  0.0014131237803066455 0.0024579857523592771 
		0.00590962431742823 0.018482117224740805 0.10006349138846793 0.56563554550678674 
		0.27164183811944043 0.034396273910469934;
	setAttr -s 8 ".wl[727].w[0:7]"  0.0017673728149744596 0.0030987133631516818 
		0.0075818434325167806 0.024561896486474357 0.14240531343255244 0.55022475791483172 
		0.23368831272484225 0.036671789830656394;
	setAttr -s 8 ".wl[728].w[0:7]"  0.0018176741090199712 0.0031874208943662137 
		0.0077959589980092503 0.025255538939796183 0.14642694541571935 0.54431201986436284 
		0.2336640171143263 0.037540424664399899;
	setAttr -s 8 ".wl[729].w[0:7]"  0.0015807122507823959 0.0027506919890094715 
		0.0066065644309505744 0.020661770317364488 0.11186429971996074 0.54593921847487226 
		0.27268946923631321 0.0379072735807469;
	setAttr -s 8 ".wl[730].w[0:7]"  0.0017902691916698767 0.0033514276324135856 
		0.0095978471332478343 0.045458464840179409 0.43456928864156819 0.4371280728100535 
		0.052549043693211853 0.015555586057655764;
	setAttr -s 8 ".wl[731].w[0:7]"  0.0017875871977715827 0.0033456584116695969 
		0.0095859277352071011 0.045402008833613873 0.43402938530571272 0.43739635320364306 
		0.052882093717139367 0.015570985595242771;
	setAttr -s 8 ".wl[732].w[0:7]"  0.0015377967885264257 0.002851907844869554 
		0.0079916785533294798 0.035895963719851855 0.4181584330144581 0.46344278728958799 
		0.055137817234268867 0.014983615555107689;
	setAttr -s 8 ".wl[733].w[0:7]"  0.0017875871977715827 0.0033456584116695969 
		0.0095859277352071011 0.045402008833613873 0.43402938530571272 0.43739635320364306 
		0.052882093717139367 0.015570985595242771;
	setAttr -s 8 ".wl[734].w[0:7]"  0.0017902691916698767 0.0033514276324135856 
		0.0095978471332478343 0.045458464840179409 0.43456928864156819 0.4371280728100535 
		0.052549043693211853 0.015555586057655764;
	setAttr -s 8 ".wl[735].w[0:7]"  0.0015564784095796057 0.0028882952780164982 
		0.0080830603481582448 0.036306421106856585 0.42294004165819193 0.45878105024382398 
		0.054393115865707643 0.015051537089665609;
	setAttr -s 8 ".wl[736].w[0:7]"  0.0017974919650932967 0.0033673743756852301 
		0.0096286158944645477 0.045604195205863923 0.43596239612789023 0.43667499398965332 
		0.051470592961012189 0.015494339480337346;
	setAttr -s 8 ".wl[737].w[0:7]"  0.0017993025375514751 0.0033715226711836612 
		0.009635839205868843 0.045638405465685296 0.4362892651555737 0.43666077884186355 
		0.05113317388309447 0.015471712239179109;
	setAttr -s 8 ".wl[738].w[0:7]"  0.0015731604846354766 0.0029210164151574954 
		0.0081639285327110601 0.036669654119609055 0.42717140847600649 0.45478652914499568 
		0.053615209712009317 0.015099093114875438;
	setAttr -s 8 ".wl[739].w[0:7]"  0.0017993025375514751 0.0033715226711836612 
		0.009635839205868843 0.045638405465685296 0.4362892651555737 0.43666077884186355 
		0.05113317388309447 0.015471712239179109;
	setAttr -s 8 ".wl[740].w[0:7]"  0.0017974919650932967 0.0033673743756852301 
		0.0096286158944645477 0.045604195205863923 0.43596239612789023 0.43667499398965332 
		0.051470592961012189 0.015494339480337346;
	setAttr -s 8 ".wl[741].w[0:7]"  0.0015564786296783655 0.0028882956850486388 
		0.0080830614721797717 0.036306425786143882 0.42294003721114698 0.45878103954166077 
		0.054393122528681601 0.01505153914546002;
	setAttr -s 8 ".wl[742].w[0:7]"  0.0025560029066523126 0.0056389070455135646 
		0.026228685007973374 0.44177196870709717 0.45310579206682078 0.050616314298897139 
		0.013564693472242611 0.0065176364948029558;
	setAttr -s 8 ".wl[743].w[0:7]"  0.0025549827091866403 0.005634128060812189 
		0.026227973630418289 0.44175982303325489 0.45309333020673331 0.050614940375138251 
		0.013591170875058942 0.0065236511093975649;
	setAttr -s 8 ".wl[744].w[0:7]"  0.0022792430342280638 0.0049639235978059049 
		0.022223684617719917 0.41971073553027483 0.47795192930579261 0.05324290038200364 
		0.013357788840833957 0.0062697946913411818;
	setAttr -s 8 ".wl[745].w[0:7]"  0.0025549827091866403 0.005634128060812189 
		0.026227973630418289 0.44175982303325489 0.45309333020673331 0.050614940375138251 
		0.013591170875058942 0.0065236511093975649;
	setAttr -s 8 ".wl[746].w[0:7]"  0.0025560029066523126 0.0056389070455135646 
		0.026228685007973374 0.44177196870709717 0.45310579206682078 0.050616314298897139 
		0.013564693472242611 0.0065176364948029558;
	setAttr -s 8 ".wl[747].w[0:7]"  0.0022817511374971437 0.0049753481044746304 
		0.022225528629458192 0.41974567939168972 0.47799174189976901 0.053247319386744034 
		0.013279797980725445 0.0062528334696418551;
	setAttr -s 8 ".wl[748].w[0:7]"  0.002559211624571984 0.005653963319388766 
		0.026230926726619898 0.44180969279204196 0.4531444830435476 0.050620640160054929 
		0.013482251484293216 0.0064988308494816592;
	setAttr -s 8 ".wl[749].w[0:7]"  0.0025602353125308377 0.0056587756672915861 
		0.02623164059404022 0.44182158598999416 0.45315667771434553 0.050622016909059521 
		0.013456203755535063 0.0064928640572031408;
	setAttr -s 8 ".wl[750].w[0:7]"  0.0022842625659979621 0.0049868195075023517 
		0.02222735497840217 0.41978017135321188 0.47803102014271226 0.053251694904067066 
		0.013202714870392299 0.0062359616777140081;
	setAttr -s 8 ".wl[751].w[0:7]"  0.0025602353125308377 0.0056587756672915861 
		0.02623164059404022 0.44182158598999416 0.45315667771434553 0.050622016909059521 
		0.013456203755535063 0.0064928640572031408;
	setAttr -s 8 ".wl[752].w[0:7]"  0.002559211624571984 0.005653963319388766 
		0.026230926726619898 0.44180969279204196 0.4531444830435476 0.050620640160054929 
		0.013482251484293216 0.0064988308494816592;
	setAttr -s 8 ".wl[753].w[0:7]"  0.0022817517944069511 0.0049753495273316102 
		0.022225534713870964 0.41974567596565782 0.4779917182534853 0.053247332792144518 
		0.013279801700787585 0.0062528352523151809;
	setAttr -s 8 ".wl[754].w[0:7]"  0.0040385848700455274 0.010158633733470857 
		0.080039392433448389 0.66198705216959741 0.19967254308608778 0.027911206422573127 
		0.010466230326003344 0.0057263569587734904;
	setAttr -s 8 ".wl[755].w[0:7]"  0.0046510110803627 0.011884273489931702 
		0.099549976844861332 0.65424148119203929 0.18339664169185937 0.028912712202795315 
		0.011172972276651658 0.0061909312214985792;
	setAttr -s 8 ".wl[756].w[0:7]"  0.0046532671769585502 0.011899018611784716 
		0.099549960529441303 0.65424152722497486 0.18339661812862618 0.028912706601747731 
		0.011159966310391754 0.0061869354160749724;
	setAttr -s 8 ".wl[757].w[0:7]"  0.0040439505277829269 0.010192540324989348 
		0.080039968488642324 0.66199181658706896 0.19967398015853466 0.027911407303601074 
		0.010430633369323062 0.0057157032400576811;
	setAttr -s 8 ".wl[758].w[0:7]"  0.0046602574847896079 0.011944842311720313 
		0.099549918989147834 0.65424118442778245 0.18339653864332731 0.028912694929814135 
		0.011119947986054998 0.0061746152273634497;
	setAttr -s 8 ".wl[759].w[0:7]"  0.0046625225721745591 0.011959738186043126 
		0.099549896657255346 0.6542409541998716 0.18339649396568095 0.028912688913576699 
		0.011107065057731723 0.0061706404476660872;
	setAttr -s 8 ".wl[760].w[0:7]"  0.0040493282693387835 0.010226668180194897 
		0.080040502734556693 0.66199623520978979 0.19967531293027507 0.027911593604965229 
		0.010395272808768908 0.0057050862621105935;
	setAttr -s 8 ".wl[761].w[0:7]"  0.0046625225721745591 0.011959738186043126 
		0.099549896657255346 0.6542409541998716 0.18339649396568095 0.028912688913576699 
		0.011107065057731723 0.0061706404476660872;
	setAttr -s 8 ".wl[762].w[0:7]"  0.0046602574847896079 0.011944842311720313 
		0.099549918989147834 0.65424118442778245 0.18339653864332731 0.028912694929814135 
		0.011119947986054998 0.0061746152273634497;
	setAttr -s 8 ".wl[763].w[0:7]"  0.0040439510337738219 0.010192541583940203 
		0.080039976923200445 0.66199178623360311 0.19967399499235322 0.027911410622990594 
		0.010430634657324116 0.0057157039528144861;
	setAttr -s 8 ".wl[764].w[0:7]"  0.0046532671769585502 0.011899018611784716 
		0.099549960529441303 0.65424152722497486 0.18339661812862618 0.028912706601747731 
		0.011159966310391754 0.0061869354160749724;
	setAttr -s 8 ".wl[765].w[0:7]"  0.0046510110803627 0.011884273489931702 
		0.099549976844861332 0.65424148119203929 0.18339664169185937 0.028912712202795315 
		0.011172972276651658 0.0061909312214985792;
	setAttr -s 8 ".wl[766].w[0:7]"  0.0074984604187400654 0.030539695197821806 
		0.56495267516712089 0.35536015738690002 0.024301584488725266 0.0092564947169280019 
		0.0049157060251343804 0.0031752265986296582;
	setAttr -s 8 ".wl[767].w[0:7]"  0.0075371638772164717 0.030611709949500809 
		0.56242504424960205 0.35751977029642151 0.024449271319937852 0.0093127487596844898 
		0.0049485354529545779 0.0031957560946822331;
	setAttr -s 8 ".wl[768].w[0:7]"  0.006436838887761958 0.025438348420705345 
		0.54521160754979758 0.3841644043320418 0.022887489592774344 0.0085098937113485072 
		0.0044763270245777144 0.0028750904809928752;
	setAttr -s 8 ".wl[769].w[0:7]"  0.0075371638772164717 0.030611709949500809 
		0.56242504424960205 0.35751977029642151 0.024449271319937852 0.0093127487596844898 
		0.0049485354529545779 0.0031957560946822331;
	setAttr -s 8 ".wl[770].w[0:7]"  0.0074984604187400654 0.030539695197821806 
		0.56495267516712089 0.35536015738690002 0.024301584488725266 0.0092564947169280019 
		0.0049157060251343804 0.0031752265986296582;
	setAttr -s 8 ".wl[771].w[0:7]"  0.006356828929672661 0.025306095574726316 
		0.55171724330612626 0.3784572991635301 0.022547477975450592 0.0083834725992781873 
		0.0044023077881151394 0.0028292746631007584;
	setAttr -s 8 ".wl[772].w[0:7]"  0.0073767432418863806 0.030299615714767515 
		0.57284061538237263 0.34863451955484864 0.023841648736197828 0.00908130482751731 
		0.0048140287332164447 0.0031115238091932187;
	setAttr -s 8 ".wl[773].w[0:7]"  0.0073343889172429256 0.030211488800889381 
		0.57556511904511087 0.34631617464508291 0.02368310459967132 0.0090209151880207353 
		0.0047791668074301831 0.0030896419965517927;
	setAttr -s 8 ".wl[774].w[0:7]"  0.0062711578887035945 0.025150105234078613 
		0.55859611338360959 0.37243753347082015 0.022188833934505606 0.0082501236143005478 
		0.0043249088016306669 0.002781223672351371;
	setAttr -s 8 ".wl[775].w[0:7]"  0.0073343889172429256 0.030211488800889381 
		0.57556511904511087 0.34631617464508291 0.02368310459967132 0.0090209151880207353 
		0.0047791668074301831 0.0030896419965517927;
	setAttr -s 8 ".wl[776].w[0:7]"  0.0073767432418863806 0.030299615714767515 
		0.57284061538237263 0.34863451955484864 0.023841648736197828 0.00908130482751731 
		0.0048140287332164447 0.0031115238091932187;
	setAttr -s 8 ".wl[777].w[0:7]"  0.0063568289299313595 0.025306095575175717 
		0.55171724328522442 0.3784572991818439 0.022547477976541681 0.008383472599683868 
		0.0044023077883516299 0.0028292746632473591;
	setAttr -s 8 ".wl[778].w[0:7]"  0.017879915396370398 0.13852081988757581 
		0.72064035846596719 0.089319303494227439 0.017113256329752045 0.0082450839827055127 
		0.0049059405712849093 0.0033753218721168324;
	setAttr -s 8 ".wl[779].w[0:7]"  0.01834835038869911 0.1406292712986866 
		0.7146362638740732 0.091806504087087556 0.017589794990758034 0.0084746780006581049 
		0.0050447741085969909 0.0034703632514403904;
	setAttr -s 8 ".wl[780].w[0:7]"  0.016968737610427404 0.12460437687223784 
		0.72888549671147862 0.095518427999366509 0.017432797978776258 0.0083043843351364461 
		0.0049155845101635405 0.0033701939824133005;
	setAttr -s 8 ".wl[781].w[0:7]"  0.01834835038869911 0.1406292712986866 
		0.7146362638740732 0.091806504087087556 0.017589794990758034 0.0084746780006581049 
		0.0050447741085969909 0.0034703632514403904;
	setAttr -s 8 ".wl[782].w[0:7]"  0.017879915396370398 0.13852081988757581 
		0.72064035846596719 0.089319303494227439 0.017113256329752045 0.0082450839827055127 
		0.0049059405712849093 0.0033753218721168324;
	setAttr -s 8 ".wl[783].w[0:7]"  0.0157064172749607 0.1185826104032333 
		0.74633005288763676 0.088032629298420526 0.01606658629532123 0.0076535681740718424 
		0.0045247142634719587 0.0031034214028836907;
	setAttr -s 8 ".wl[784].w[0:7]"  0.016437908505972463 0.13157922292224752 
		0.7394851877681724 0.081726346470218106 0.015658473394053397 0.0075441766270963294 
		0.0044830578093066125 0.0030856265029333692;
	setAttr -s 8 ".wl[785].w[0:7]"  0.015928822064988427 0.12896345690733332 
		0.74627275170256901 0.079067533422184824 0.015149054167249914 0.0072987408977435806 
		0.0043353029517137591 0.0029843378862169927;
	setAttr -s 8 ".wl[786].w[0:7]"  0.014366214794727593 0.11163490319006515 
		0.76528352506586483 0.080173293531780987 0.014632200913544521 0.0069702763837992997 
		0.004115639730326544 0.0028239463898910942;
	setAttr -s 8 ".wl[787].w[0:7]"  0.015928822064988427 0.12896345690733332 
		0.74627275170256901 0.079067533422184824 0.015149054167249914 0.0072987408977435806 
		0.0043353029517137591 0.0029843378862169927;
	setAttr -s 8 ".wl[788].w[0:7]"  0.016437908505972463 0.13157922292224752 
		0.7394851877681724 0.081726346470218106 0.015658473394053397 0.0075441766270963294 
		0.0044830578093066125 0.0030856265029333692;
	setAttr -s 8 ".wl[789].w[0:7]"  0.015706417278269488 0.11858261041967824 
		0.74633005284140064 0.088032629317933361 0.016066586298882465 0.0076535681757682909 
		0.0045247142644892083 0.0031034214035783165;
	setAttr -s 8 ".wl[790].w[0:7]"  0.025270429315659551 0.45785033781763368 
		0.47606501835382214 0.024475907987756663 0.0075507909647648131 0.0041761403324340187 
		0.0026811946081917166 0.0019301806197373856;
	setAttr -s 8 ".wl[791].w[0:7]"  0.026565767225318948 0.45602815045994971 
		0.47435882800653989 0.025814153172362127 0.0079636381471293472 0.0044044750562331142 
		0.0028287671961029865 0.0020362207363639304;
	setAttr -s 8 ".wl[792].w[0:7]"  0.025152721565794792 0.44629541888644025 
		0.48483669711610633 0.026463042488284842 0.0080078702646270254 0.0044022273735424885 
		0.0028179171590597385 0.0020241051461446871;
	setAttr -s 8 ".wl[793].w[0:7]"  0.026565767225318948 0.45602815045994971 
		0.47435882800653989 0.025814153172362127 0.0079636381471293472 0.0044044750562331142 
		0.0028287671961029865 0.0020362207363639304;
	setAttr -s 8 ".wl[794].w[0:7]"  0.025270429315659551 0.45785033781763368 
		0.47606501835382214 0.024475907987756663 0.0075507909647648131 0.0041761403324340187 
		0.0026811946081917166 0.0019301806197373856;
	setAttr -s 8 ".wl[795].w[0:7]"  0.021678881830975775 0.45028945748207166 
		0.49068268163948192 0.022611397802529777 0.0068423402254177753 0.0037614916880559564 
		0.0024054490573317683 0.0017283002741354113;
	setAttr -s 8 ".wl[796].w[0:7]"  0.02138797941794324 0.46318785461352269 
		0.48121050533344006 0.020519667811838116 0.0063302952099424884 0.003501116809134632 
		0.0022455587143463442 0.0016170220898323615;
	setAttr -s 8 ".wl[797].w[0:7]"  0.020012616392332396 0.46502660673933371 
		0.483053384431748 0.019137138740301395 0.0059037864647963414 0.0032652262371935482 
		0.0020935411162535857 0.0015076998780409071;
	setAttr -s 8 ".wl[798].w[0:7]"  0.018056393629437284 0.45384393848466259 
		0.49726531991047068 0.018669142720743763 0.0056493909544114429 0.0031056826199108906 
		0.0019841469782176662 0.0014259847021458;
	setAttr -s 8 ".wl[799].w[0:7]"  0.020012616392332396 0.46502660673933371 
		0.483053384431748 0.019137138740301395 0.0059037864647963414 0.0032652262371935482 
		0.0020935411162535857 0.0015076998780409071;
	setAttr -s 8 ".wl[800].w[0:7]"  0.02138797941794324 0.46318785461352269 
		0.48121050533344006 0.020519667811838116 0.0063302952099424884 0.003501116809134632 
		0.0022455587143463442 0.0016170220898323615;
	setAttr -s 8 ".wl[801].w[0:7]"  0.021678881838179266 0.45028945747429805 
		0.49068268162697415 0.022611397810442885 0.0068423402278123286 0.0037614916893723327 
		0.0024054490581782999 0.0017283002747426853;
	setAttr -s 8 ".wl[802].w[0:7]"  0.11674207602879667 0.67763696807324825 
		0.17052816204630381 0.017858781029373522 0.0073459062816821673 0.0045050281950416715 
		0.003078385254942174 0.0023046930906116102;
	setAttr -s 8 ".wl[803].w[0:7]"  0.12062897201318026 0.66735500306389828 
		0.17537817742593534 0.018644364710598198 0.0076690427874270845 0.0047031983068573013 
		0.0032146765656459984 0.0024065651264575426;
	setAttr -s 8 ".wl[804].w[0:7]"  0.11301642892907424 0.66759957422719518 
		0.182867848422158 0.018679809178620253 0.0076212870348142253 0.0046593890995246055 
		0.0031788842529051659 0.0023767788557083774;
	setAttr -s 8 ".wl[805].w[0:7]"  0.12062897201318026 0.66735500306389828 
		0.17537817742593534 0.018644364710598198 0.0076690427874270845 0.0047031983068573013 
		0.0032146765656459984 0.0024065651264575426;
	setAttr -s 8 ".wl[806].w[0:7]"  0.11674207602879667 0.67763696807324825 
		0.17052816204630381 0.017858781029373522 0.0073459062816821673 0.0045050281950416715 
		0.003078385254942174 0.0023046930906116102;
	setAttr -s 8 ".wl[807].w[0:7]"  0.10205633290293406 0.6978478379877322 
		0.16801425499490508 0.016412995874547229 0.006696436321432785 0.0040939676276744667 
		0.0027910046246888884 0.002087169666085395;
	setAttr -s 8 ".wl[808].w[0:7]"  0.10443552905880044 0.71037660384806767 
		0.15472750555207571 0.015502984799601518 0.0063768895210754408 0.0039107587273605211 
		0.0026702223405489318 0.0019995061524698239;
	setAttr -s 8 ".wl[809].w[0:7]"  0.099663803115368738 0.72315023828178249 
		0.14842844674771913 0.014636855136377622 0.0060206217833983968 0.003692270204089894 
		0.0025203535421606947 0.0018874111891031761;
	setAttr -s 8 ".wl[810].w[0:7]"  0.089387922821794627 0.73337227415991735 
		0.14992282612601435 0.013976855930863298 0.0057025010199393683 0.003486310247988332 
		0.0023749411394153718 0.0017763685540672933;
	setAttr -s 8 ".wl[811].w[0:7]"  0.099663803115368738 0.72315023828178249 
		0.14842844674771913 0.014636855136377622 0.0060206217833983968 0.003692270204089894 
		0.0025203535421606947 0.0018874111891031761;
	setAttr -s 8 ".wl[812].w[0:7]"  0.10443552905880044 0.71037660384806767 
		0.15472750555207571 0.015502984799601518 0.0063768895210754408 0.0039107587273605211 
		0.0026702223405489318 0.0019995061524698239;
	setAttr -s 8 ".wl[813].w[0:7]"  0.102056332920514 0.69784783793885463 
		0.16801425501933992 0.016412995878055694 0.006696436322864225 0.0040939676285495991 
		0.0027910046252886656 0.0020871696665333227;
	setAttr -s 8 ".wl[814].w[0:7]"  0.38330474210811644 0.54645684623979141 
		0.049167511652820566 0.0096908746445999189 0.00461000606246398 0.0030016885792968537 
		0.0021316706622407336 0.0016366600506700982;
	setAttr -s 8 ".wl[815].w[0:7]"  0.38580855172957906 0.54082317621668397 
		0.051275696436471029 0.010160382623887926 0.0048333537694843177 0.0031471157766348019 
		0.0022354645549621955 0.0017162588922967146;
	setAttr -s 8 ".wl[816].w[0:7]"  0.37454612473000509 0.5498755422535434 
		0.053111696617391409 0.01036461378385695 0.004909705533487076 0.0031911025617799905 
		0.0022642395261320654 0.0017369749938036931;
	setAttr -s 8 ".wl[817].w[0:7]"  0.38580855172957906 0.54082317621668397 
		0.051275696436471029 0.010160382623887926 0.0048333537694843177 0.0031471157766348019 
		0.0022354645549621955 0.0017162588922967146;
	setAttr -s 8 ".wl[818].w[0:7]"  0.38330474210811644 0.54645684623979141 
		0.049167511652820566 0.0096908746445999189 0.00461000606246398 0.0030016885792968537 
		0.0021316706622407336 0.0016366600506700982;
	setAttr -s 8 ".wl[819].w[0:7]"  0.36540041417688407 0.56797861881293821 
		0.047028600155895613 0.0090395436689856036 0.0042820213562556053 0.0027831341872429759 
		0.0019735016815965929 0.001514165960201392;
	setAttr -s 8 ".wl[820].w[0:7]"  0.37384669274802346 0.56506598499635841 
		0.042957606044053361 0.0083390502822680689 0.0039669352654070674 0.0025829693327901722 
		0.0018331140446144528 0.0014076472864850116;
	setAttr -s 8 ".wl[821].w[0:7]"  0.36940292918785339 0.57286506346429067 
		0.040663995798258377 0.0078509944030876674 0.0037347642108623239 0.00243179703588506 
		0.0017254288523863934 0.0013250270473761287;
	setAttr -s 8 ".wl[822].w[0:7]"  0.35184682251720317 0.59099383550561857 
		0.040532654480048086 0.0076720217582689409 0.0036342278125475144 0.0023620955683824199 
		0.0016738739379282405 0.0012844684200031668;
	setAttr -s 8 ".wl[823].w[0:7]"  0.36940292918785339 0.57286506346429067 
		0.040663995798258377 0.0078509944030876674 0.0037347642108623239 0.00243179703588506 
		0.0017254288523863934 0.0013250270473761287;
	setAttr -s 8 ".wl[824].w[0:7]"  0.37384669274802346 0.56506598499635841 
		0.042957606044053361 0.0083390502822680689 0.0039669352654070674 0.0025829693327901722 
		0.0018331140446144528 0.0014076472864850116;
	setAttr -s 8 ".wl[825].w[0:7]"  0.36540041418896219 0.56797861879078304 
		0.047028600162776192 0.0090395436704593726 0.0042820213569537283 0.0027831341876967263 
		0.0019735016819197298 0.0015141659604490704;
	setAttr -s 8 ".wl[826].w[0:7]"  0.58443212523703536 0.37083617187622048 
		0.027046887169255112 0.0075266721625484529 0.0039543031297066371 0.0026917408471007361 
		0.0019693976277664915 0.001542701950366797;
	setAttr -s 8 ".wl[827].w[0:7]"  0.58101798619057732 0.37243125560838819 
		0.02811562345671717 0.0078457245545178397 0.0041219243366435636 0.0028058425825400026 
		0.0020532930973707797 0.001608350173245122;
	setAttr -s 8 ".wl[828].w[0:7]"  0.57484942421163931 0.3787272396706185 
		0.028126593611264898 0.0078005157857999495 0.0040892722909253321 0.002780854716509757 
		0.0020337826636848515 0.0015923170495574133;
	setAttr -s 8 ".wl[829].w[0:7]"  0.58101798619057732 0.37243125560838819 
		0.02811562345671717 0.0078457245545178397 0.0041219243366435636 0.0028058425825400026 
		0.0020532930973707797 0.001608350173245122;
	setAttr -s 8 ".wl[830].w[0:7]"  0.58443212523703536 0.37083617187622048 
		0.027046887169255112 0.0075266721625484529 0.0039543031297066371 0.0026917408471007361 
		0.0019693976277664915 0.001542701950366797;
	setAttr -s 8 ".wl[831].w[0:7]"  0.58450604774334125 0.37417700025482109 
		0.025109707112193493 0.0069103799870311976 0.0036226354995875067 0.0024635246318958186 
		0.0018007035047246163 0.0014100012664051572;
	setAttr -s 8 ".wl[832].w[0:7]"  0.59540804982818341 0.36504399715729824 
		0.023986840084189259 0.0066234923777540727 0.0034797977225450535 0.0023687394121103115 
		0.001732100001166256 0.0013569834167532833;
	setAttr -s 8 ".wl[833].w[0:7]"  0.59996697326206427 0.36237637468520378 
		0.022865122076560246 0.0062961517263633564 0.0033078220944110625 0.0022516735703894111 
		0.0016461662489940356 0.0012897163360138855;
	setAttr -s 8 ".wl[834].w[0:7]"  0.59650372367348969 0.36743144343090145 
		0.021985365852425533 0.0060037431114911529 0.0031473483320612096 0.0021403119750998617 
		0.0015635852891914481 0.0012244783353396857;
	setAttr -s 8 ".wl[835].w[0:7]"  0.59996697326206427 0.36237637468520378 
		0.022865122076560246 0.0062961517263633564 0.0033078220944110625 0.0022516735703894111 
		0.0016461662489940356 0.0012897163360138855;
	setAttr -s 8 ".wl[836].w[0:7]"  0.59540804982818341 0.36504399715729824 
		0.023986840084189259 0.0066234923777540727 0.0034797977225450535 0.0023687394121103115 
		0.001732100001166256 0.0013569834167532833;
	setAttr -s 8 ".wl[837].w[0:7]"  0.58450604773544779 0.374177000258888 
		0.025109707114461928 0.0069103799876949921 0.0036226354999354883 0.0024635246321324587 
		0.0018007035048983257 0.0014100012665410511;
	setAttr -s 8 ".wl[838].w[0:7]"  0.76891851648866438 0.18701376958716984 
		0.024296164184203269 0.0080215391308898296 0.0044609557639601555 0.0031193635113962079 
		0.0023250410725576707 0.0018446502611586693;
	setAttr -s 8 ".wl[839].w[0:7]"  0.76507537608915877 0.18962860921083025 
		0.024951519948505495 0.0082536991930449444 0.0045900651219690251 0.0032096443932660454 
		0.0023927715028139061 0.0018983145404114952;
	setAttr -s 8 ".wl[840].w[0:7]"  0.76264418406510359 0.19200784248846664 
		0.025024239168948362 0.0082538181510513082 0.0045845453062611456 0.0032039253214543734 
		0.0023877027833255422 0.0018937427153889849;
	setAttr -s 8 ".wl[841].w[0:7]"  0.76507537608915877 0.18962860921083025 
		0.024951519948505495 0.0082536991930449444 0.0045900651219690251 0.0032096443932660454 
		0.0023927715028139061 0.0018983145404114952;
	setAttr -s 8 ".wl[842].w[0:7]"  0.76891851648866438 0.18701376958716984 
		0.024296164184203269 0.0080215391308898296 0.0044609557639601555 0.0031193635113962079 
		0.0023250410725576707 0.0018446502611586693;
	setAttr -s 8 ".wl[843].w[0:7]"  0.77366538538321983 0.18442257523598332 
		0.023184071678588873 0.0076064831741832085 0.0042249860725262342 0.002952646109107465 
		0.0021993303868545217 0.0017445219595365884;
	setAttr -s 8 ".wl[844].w[0:7]"  0.78036502550311992 0.17905274140257715 
		0.022428979744871902 0.0073656960911270006 0.0040962269088548635 0.0028643235734048139 
		0.0021338592014264988 0.0016931475746178376;
	setAttr -s 8 ".wl[845].w[0:7]"  0.7848007646419608 0.17590294323106043 
		0.02173734421466586 0.0071248063835158944 0.0039622628008198222 0.0027706479636703902 
		0.0020636945534956096 0.0016375362108112341;
	setAttr -s 8 ".wl[846].w[0:7]"  0.78592576496173927 0.17571616667772133 
		0.0212695295073311 0.0069412873237387675 0.0038555060987626958 0.0026944337533271459 
		0.0020059859824553016 0.0015913256949244405;
	setAttr -s 8 ".wl[847].w[0:7]"  0.7848007646419608 0.17590294323106043 
		0.02173734421466586 0.0071248063835158944 0.0039622628008198222 0.0027706479636703902 
		0.0020636945534956096 0.0016375362108112341;
	setAttr -s 8 ".wl[848].w[0:7]"  0.78036502550311992 0.17905274140257715 
		0.022428979744871902 0.0073656960911270006 0.0040962269088548635 0.0028643235734048139 
		0.0021338592014264988 0.0016931475746178376;
	setAttr -s 8 ".wl[849].w[0:7]"  0.77366538537751173 0.18442257523997371 
		0.023184071679511534 0.0076064831745057855 0.0042249860727054077 0.0029526461092326817 
		0.002199330386948336 0.0017445219596109128;
	setAttr -s 8 ".wl[850].w[0:7]"  0.86061334876586748 0.10042606636088279 
		0.019821836014845638 0.0074474214457484695 0.004341625523712739 0.0031069555589784627 
		0.0023538807720832654 0.0018888655578810658;
	setAttr -s 8 ".wl[851].w[0:7]"  0.85893980542599302 0.10144845545690791 
		0.020138775246332705 0.0075772161667146173 0.0044172919907574512 0.0031611040221441434 
		0.0023953073480670879 0.0019220443430831096;
	setAttr -s 8 ".wl[852].w[0:7]"  0.85838332070839451 0.10194411895852167 
		0.020183886110683513 0.0075869549320191094 0.0044205660596192721 0.0031625979841070459 
		0.002396129441168458 0.0019224258054865769;
	setAttr -s 8 ".wl[853].w[0:7]"  0.85893980542599302 0.10144845545690791 
		0.020138775246332705 0.0075772161667146173 0.0044172919907574512 0.0031611040221441434 
		0.0023953073480670879 0.0019220443430831096;
	setAttr -s 8 ".wl[854].w[0:7]"  0.86061334876586748 0.10042606636088279 
		0.019821836014845638 0.0074474214457484695 0.004341625523712739 0.0031069555589784627 
		0.0023538807720832654 0.0018888655578810658;
	setAttr -s 8 ".wl[855].w[0:7]"  0.863102516223482 0.099038209134978947 
		0.019299033375627068 0.0072261879579174505 0.0042103639092921554 0.003012213420701888 
		0.0022811400405659027 0.001830335937434495;
	setAttr -s 8 ".wl[856].w[0:7]"  0.86541532985107339 0.097452585040696676 
		0.018928688306056794 0.0070841129317494441 0.0041298274503642901 0.0029553885486140095 
		0.0022380145836328807 0.001796053287812545;
	setAttr -s 8 ".wl[857].w[0:7]"  0.86723192665556748 0.096312977834318053 
		0.018596851907377917 0.0069500277051832626 0.0040516597444467083 0.0028994501475855146 
		0.0021952853475424917 0.0017618206579786413;
	setAttr -s 8 ".wl[858].w[0:7]"  0.86811371695527617 0.095892528901550103 
		0.018384025551541276 0.0068567560148244154 0.0039951130842102601 0.0028582168925875649 
		0.0021635224461620194 0.001736120153848148;
	setAttr -s 8 ".wl[859].w[0:7]"  0.86723192665556748 0.096312977834318053 
		0.018596851907377917 0.0069500277051832626 0.0040516597444467083 0.0028994501475855146 
		0.0021952853475424917 0.0017618206579786413;
	setAttr -s 8 ".wl[860].w[0:7]"  0.86541532985107339 0.097452585040696676 
		0.018928688306056794 0.0070841129317494441 0.0041298274503642901 0.0029553885486140095 
		0.0022380145836328807 0.001796053287812545;
	setAttr -s 8 ".wl[861].w[0:7]"  0.86310251622223721 0.099038209135753022 
		0.019299033375857477 0.0072261879580109356 0.0042103639093466249 0.0030122134207408572 
		0.0022811400405956827 0.0018303359374583473;
	setAttr -s 8 ".wl[862].w[0:7]"  0.0012769338950661114 0.0021294811978635067 
		0.0046631584212143036 0.012111680732535449 0.041778304690351618 0.41031860635728262 
		0.45042183142230063 0.077300003283385738;
	setAttr -s 8 ".wl[863].w[0:7]"  0.0012068839695963118 0.0020124154074401272 
		0.0044081573074951337 0.011449362938409825 0.039493688621862748 0.41222586866895811 
		0.45530855675673249 0.073895066329505377;
	setAttr -s 8 ".wl[864].w[0:7]"  0.0010354048093541375 0.0017143265682783436 
		0.0037011144274253362 0.0093695003903050827 0.030794335212852113 0.35960715545768607 
		0.51142366377121318 0.082354499362885691;
	setAttr -s 8 ".wl[865].w[0:7]"  0.0012068839695963118 0.0020124154074401272 
		0.0044081573074951337 0.011449362938409825 0.039493688621862748 0.41222586866895811 
		0.45530855675673249 0.073895066329505377;
	setAttr -s 8 ".wl[866].w[0:7]"  0.0012769338950661114 0.0021294811978635067 
		0.0046631584212143036 0.012111680732535449 0.041778304690351618 0.41031860635728262 
		0.45042183142230063 0.077300003283385738;
	setAttr -s 8 ".wl[867].w[0:7]"  0.0012328921141717734 0.0020419883517933937 
		0.004404804756443983 0.011150917149563733 0.036649242829167664 0.3637761069436764 
		0.48653915950342869 0.094204888351754293;
	setAttr -s 8 ".wl[868].w[0:7]"  0.0015012930292854778 0.002504648058766908 
		0.0054791599058633574 0.014231091766856042 0.049089048776750882 0.40354335711594413 
		0.43603861639681341 0.087612784949719844;
	setAttr -s 8 ".wl[869].w[0:7]"  0.0015674786042045798 0.0026153887654383227 
		0.0057196604818000613 0.014855746783188318 0.051243745250857169 0.40141299777129597 
		0.43209770343911724 0.090487278904098287;
	setAttr -s 8 ".wl[870].w[0:7]"  0.0014215633136731298 0.0023552629226730733 
		0.0050762959506813459 0.012850820513537201 0.042236241858907411 0.36454484388032671 
		0.46700890264162809 0.10450606891857306;
	setAttr -s 8 ".wl[871].w[0:7]"  0.0015674786042045798 0.0026153887654383227 
		0.0057196604818000613 0.014855746783188318 0.051243745250857169 0.40141299777129597 
		0.43209770343911724 0.090487278904098287;
	setAttr -s 8 ".wl[872].w[0:7]"  0.0015012930292854778 0.002504648058766908 
		0.0054791599058633574 0.014231091766856042 0.049089048776750882 0.40354335711594413 
		0.43603861639681341 0.087612784949719844;
	setAttr -s 8 ".wl[873].w[0:7]"  0.0012328924187882638 0.0020419888552291061 
		0.0044048058356096998 0.011150919832166971 0.03664925103300317 0.36377611066318832 
		0.48653912545604894 0.09420490590596553;
	setAttr -s 8 ".pm";
	setAttr ".pm[0]" -type "matrix" -0.021271756126083119 0.9997737305967348 1.2243696990468998e-16 -0
		 0.9997737305967348 0.021271756126083119 2.6050388052050801e-18 -0 -1.1555579666323415e-33 1.2246467991473532e-16 -1 0
		 0.0084904304651420848 0.00018064724120343749 2.2122906571458964e-20 1;
	setAttr ".pm[1]" -type "matrix" -1.9428902930940239e-16 1 1.2243696990468998e-16 -0
		 1 1.9428902930940239e-16 2.6050388052050801e-18 -0 2.6050388052050543e-18 1.2243696990468995e-16 -1 -0
		 -0.36674665731020206 0.0079837991850394384 2.2122906571445122e-20 1;
	setAttr ".pm[2]" -type "matrix" 0.020403890331993191 -0.99979181895998703 -2.4487615499499581e-16 -0
		 0.99979181895998726 0.020403890331993191 -1.0628290668217045e-19 -0 5.1026869920341812e-18 -2.4482300783760249e-16 1 -0
		 -0.71772185883925999 -0.02263282900755129 -1.87872728050516e-18 1;
	setAttr ".pm[3]" -type "matrix" 3.8823111392360935e-15 -0.99999999999999978 -2.4487615499499581e-16 -0
		 1 3.8788416922841399e-15 -1.0628290668217128e-19 -0 1.0628290668311962e-19 -2.4487615499499576e-16 1 -0
		 -1.1092408672704896 -4.3060391697061471e-15 1.178933435841748e-19 1;
	setAttr ".pm[4]" -type "matrix" 3.8823111392360935e-15 -0.99999999999999978 -2.4487615499499581e-16 -0
		 1 3.8788416922841399e-15 -1.0628290668217128e-19 -0 1.0628290668311962e-19 -2.4487615499499576e-16 1 -0
		 -1.4206094069312556 -5.5103189960559993e-15 1.5098649702870477e-19 1;
	setAttr ".pm[5]" -type "matrix" 0.034462316902405261 -0.99940599793763385 -2.4487615499499581e-16 -0
		 0.99940599793763407 0.034462316902405268 -1.0628290668217199e-19 -0 8.5452194296964607e-18 -2.4472703529869314e-16 1 -0
		 -1.6591375513260689 -0.057211707950994041 1.764427689091118e-19 1;
	setAttr ".pm[6]" -type "matrix" 6.7307270867900096e-16 -0.99999999999999978 -2.4487615499499581e-16 -0
		 1 6.7307270867900096e-16 -1.0628290668217205e-19 -0 1.0628290668233376e-19 -2.4487615499499576e-16 1 -0
		 -1.8916541207770294 0.0079838182334599269 2.1560972095824255e-18 1;
	setAttr ".pm[7]" -type "matrix" 0.99999999999999978 -3.2612801348363968e-16 -2.4487615499499581e-16 -0
		 3.2612801348363988e-16 1 -1.0628290668217206e-19 0 2.4487615499499576e-16 1.0628290668208907e-19 1 -0
		 -0.0079838182334618837 -2.0992331472175403 2.1781593118787782e-18 1;
	setAttr ".gm" -type "matrix" 1.7044239652665925 0 0 0 0 1.7044239652665925 0 0 0 0 1.7044239652665925 0
		 0 0 0 1;
	setAttr -s 8 ".ma";
	setAttr -s 8 ".dpf[0:7]"  2 2 2 2 2 2 2 2;
	setAttr -s 8 ".lw";
	setAttr -s 8 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 29;
	setAttr ".ucm" yes;
	setAttr -s 8 ".ifcl";
	setAttr -s 8 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "16AEB1DE-B041-AAAF-CC57-809D024C1FF8";
createNode objectSet -n "skinCluster1Set";
	rename -uid "1E0B4602-3842-364E-C4BE-AC84EBE064C5";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "EB1A99F1-5E43-307E-9A4B-AC8DDBD6AA91";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "CC7B5B61-9C49-67CF-9680-25BC1700550B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "9CDC7619-6940-445C-12A4-1EB39313D956";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId15";
	rename -uid "8D931325-C24D-AC10-9BA7-34A32BEFFD11";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	rename -uid "1DD87C1B-C949-7B26-B18E-EEAA9CE6F07E";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "4D418A4F-A947-2A25-FF87-3E8B4B0861B4";
	setAttr -s 8 ".wm";
	setAttr -s 8 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.0084923520245670011
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.69954565393329293 0.71458790786231585 4.3755889703649445e-17 4.2834817297342465e-17 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.37532393365726885 1.1275702593849246e-16
		 1.3866695599588098e-32 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.010636479757541971 0.99994343104916061 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.3512875832070177 6.8251323549737387e-17
		 9.1511778604099098e-19 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99994795338557174 0.010202476170340143 6.2472148926921017e-19 6.1229153021379364e-17 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.39128808551385674 8.0144224590128488e-16
		 -1.996620624089334e-18 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.010202476170338107 0.99994795338557185 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.31136853966076594 1.204279826349853e-15
		 -3.3093153444529963e-20 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.23951426127751191 9.2903790253985009e-16
		 -2.5456271880407027e-20 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.01723371785723872 0.99985148845656924 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.23166806387598873 -2.0990154059319366e-16
		 -1.9796544406733118e-18 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.017233717857240326 0.99985148845656924 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.20757902644051063 1.4191359300489397e-16
		 -2.2062102296352597e-20 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.70710678118654724 0.70710678118654791 1
		 1 1 yes;
	setAttr -s 8 ".m";
	setAttr -s 8 ".p";
	setAttr ".bp" yes;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 3 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupId10.id" "pCylinderShape1.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape1.iog.og[2].gco";
connectAttr "groupParts6.og" "pCylinderShape1.i";
connectAttr "groupId11.id" "pCylinderShape1.ciog.cog[0].cgid";
connectAttr "groupId1.id" "pPyramidShape1.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pPyramidShape1.iog.og[0].gco";
connectAttr "groupParts1.og" "pPyramidShape1.i";
connectAttr "groupId2.id" "pPyramidShape1.ciog.cog[0].cgid";
connectAttr "groupParts4.og" "|group|pasted__pPyramid1|transform1|pasted__pPyramidShape1.i"
		;
connectAttr "groupId7.id" "|group|pasted__pPyramid1|transform1|pasted__pPyramidShape1.iog.og[0].gid"
		;
connectAttr "lambert2SG.mwc" "|group|pasted__pPyramid1|transform1|pasted__pPyramidShape1.iog.og[0].gco"
		;
connectAttr "groupId8.id" "|group|pasted__pPyramid1|transform1|pasted__pPyramidShape1.ciog.cog[0].cgid"
		;
connectAttr "groupParts3.og" "|group1|pasted__pPyramid1|transform2|pasted__pPyramidShape1.i"
		;
connectAttr "groupId5.id" "|group1|pasted__pPyramid1|transform2|pasted__pPyramidShape1.iog.og[0].gid"
		;
connectAttr "lambert2SG.mwc" "|group1|pasted__pPyramid1|transform2|pasted__pPyramidShape1.iog.og[0].gco"
		;
connectAttr "groupId6.id" "|group1|pasted__pPyramid1|transform2|pasted__pPyramidShape1.ciog.cog[0].cgid"
		;
connectAttr "groupParts2.og" "|group3|pasted__pPyramid1|transform3|pasted__pPyramidShape1.i"
		;
connectAttr "groupId3.id" "|group3|pasted__pPyramid1|transform3|pasted__pPyramidShape1.iog.og[0].gid"
		;
connectAttr "lambert2SG.mwc" "|group3|pasted__pPyramid1|transform3|pasted__pPyramidShape1.iog.og[0].gco"
		;
connectAttr "groupId4.id" "|group3|pasted__pPyramid1|transform3|pasted__pPyramidShape1.ciog.cog[0].cgid"
		;
connectAttr "groupParts5.og" "pPyramid2Shape.i";
connectAttr "groupId9.id" "pPyramid2Shape.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pPyramid2Shape.iog.og[0].gco";
connectAttr "skinCluster1.og[0]" "pCylinder2Shape.i";
connectAttr "groupId12.id" "pCylinder2Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinder2Shape.iog.og[0].gco";
connectAttr "groupId13.id" "pCylinder2Shape.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "pCylinder2Shape.iog.og[1].gco";
connectAttr "skinCluster1GroupId.id" "pCylinder2Shape.iog.og[2].gid";
connectAttr "skinCluster1Set.mwc" "pCylinder2Shape.iog.og[2].gco";
connectAttr "groupId15.id" "pCylinder2Shape.iog.og[3].gid";
connectAttr "tweakSet1.mwc" "pCylinder2Shape.iog.og[3].gco";
connectAttr "tweak1.vl[0].vt[0]" "pCylinder2Shape.twl";
connectAttr "polySplitRing14.out" "pCylinder2ShapeOrig.i";
connectAttr "joint1.s" "joint2.is";
connectAttr "joint2.s" "joint3.is";
connectAttr "joint3.s" "joint4.is";
connectAttr "joint4.s" "joint5.is";
connectAttr "joint5.s" "joint6.is";
connectAttr "joint6.s" "joint7.is";
connectAttr "joint7.s" "joint8.is";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak1.out" "polyExtrudeFace1.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyCylinder1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyMergeVert1.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert1.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace2.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyMergeVert1.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polyMergeVert2.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert2.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyMergeVert3.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert3.mp";
connectAttr "polyMergeVert2.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polyMergeVert4.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert4.mp";
connectAttr "polyMergeVert3.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polyMergeVert5.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert5.mp";
connectAttr "polyMergeVert4.out" "polyTweak7.ip";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "pPyramidShape1.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pPyramidShape1.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "|group3|pasted__pPyramid1|transform3|pasted__pPyramidShape1.iog.og[0]" "lambert2SG.dsm"
		 -na;
connectAttr "|group3|pasted__pPyramid1|transform3|pasted__pPyramidShape1.ciog.cog[0]" "lambert2SG.dsm"
		 -na;
connectAttr "|group1|pasted__pPyramid1|transform2|pasted__pPyramidShape1.iog.og[0]" "lambert2SG.dsm"
		 -na;
connectAttr "|group1|pasted__pPyramid1|transform2|pasted__pPyramidShape1.ciog.cog[0]" "lambert2SG.dsm"
		 -na;
connectAttr "|group|pasted__pPyramid1|transform1|pasted__pPyramidShape1.iog.og[0]" "lambert2SG.dsm"
		 -na;
connectAttr "|group|pasted__pPyramid1|transform1|pasted__pPyramidShape1.ciog.cog[0]" "lambert2SG.dsm"
		 -na;
connectAttr "pPyramid2Shape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pCylinder2Shape.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "groupId1.msg" "lambert2SG.gn" -na;
connectAttr "groupId2.msg" "lambert2SG.gn" -na;
connectAttr "groupId3.msg" "lambert2SG.gn" -na;
connectAttr "groupId4.msg" "lambert2SG.gn" -na;
connectAttr "groupId5.msg" "lambert2SG.gn" -na;
connectAttr "groupId6.msg" "lambert2SG.gn" -na;
connectAttr "groupId7.msg" "lambert2SG.gn" -na;
connectAttr "groupId8.msg" "lambert2SG.gn" -na;
connectAttr "groupId9.msg" "lambert2SG.gn" -na;
connectAttr "groupId13.msg" "lambert2SG.gn" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "pPyramidShape1.o" "polyUnite1.ip[0]";
connectAttr "|group3|pasted__pPyramid1|transform3|pasted__pPyramidShape1.o" "polyUnite1.ip[1]"
		;
connectAttr "|group1|pasted__pPyramid1|transform2|pasted__pPyramidShape1.o" "polyUnite1.ip[2]"
		;
connectAttr "|group|pasted__pPyramid1|transform1|pasted__pPyramidShape1.o" "polyUnite1.ip[3]"
		;
connectAttr "pPyramidShape1.wm" "polyUnite1.im[0]";
connectAttr "|group3|pasted__pPyramid1|transform3|pasted__pPyramidShape1.wm" "polyUnite1.im[1]"
		;
connectAttr "|group1|pasted__pPyramid1|transform2|pasted__pPyramidShape1.wm" "polyUnite1.im[2]"
		;
connectAttr "|group|pasted__pPyramid1|transform1|pasted__pPyramidShape1.wm" "polyUnite1.im[3]"
		;
connectAttr "polyPyramid1.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "pasted__polyPyramid4.out" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "pasted__polyPyramid2.out" "groupParts3.ig";
connectAttr "groupId5.id" "groupParts3.gi";
connectAttr "pasted__polyPyramid1.out" "groupParts4.ig";
connectAttr "groupId7.id" "groupParts4.gi";
connectAttr "polyUnite1.out" "groupParts5.ig";
connectAttr "groupId9.id" "groupParts5.gi";
connectAttr "pCylinderShape1.o" "polyUnite2.ip[0]";
connectAttr "pPyramid2Shape.o" "polyUnite2.ip[1]";
connectAttr "pCylinderShape1.wm" "polyUnite2.im[0]";
connectAttr "pPyramid2Shape.wm" "polyUnite2.im[1]";
connectAttr "polyMergeVert5.out" "groupParts6.ig";
connectAttr "groupId10.id" "groupParts6.gi";
connectAttr "polyUnite2.out" "groupParts7.ig";
connectAttr "groupId12.id" "groupParts7.gi";
connectAttr "groupParts7.og" "groupParts8.ig";
connectAttr "groupId13.id" "groupParts8.gi";
connectAttr "groupParts8.og" "polyMergeVert6.ip";
connectAttr "pCylinder2Shape.wm" "polyMergeVert6.mp";
connectAttr "polyMergeVert6.out" "polyMergeVert7.ip";
connectAttr "pCylinder2Shape.wm" "polyMergeVert7.mp";
connectAttr "polyMergeVert7.out" "polyMergeVert8.ip";
connectAttr "pCylinder2Shape.wm" "polyMergeVert8.mp";
connectAttr "polyMergeVert8.out" "polyMergeVert9.ip";
connectAttr "pCylinder2Shape.wm" "polyMergeVert9.mp";
connectAttr "polyMergeVert9.out" "polySplitRing1.ip";
connectAttr "pCylinder2Shape.wm" "polySplitRing1.mp";
connectAttr "polyTweak8.out" "polyMirror1.ip";
connectAttr "pCylinder2Shape.wm" "polyMirror1.mp";
connectAttr "polySplitRing1.out" "polyTweak8.ip";
connectAttr "polyMirror1.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "polyTweak9.out" "polyMirror2.ip";
connectAttr "pCylinder2Shape.wm" "polyMirror2.mp";
connectAttr "deleteComponent4.og" "polyTweak9.ip";
connectAttr "polyMirror2.out" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "polyTweak10.out" "polyMirror3.ip";
connectAttr "pCylinder2Shape.wm" "polyMirror3.mp";
connectAttr "deleteComponent6.og" "polyTweak10.ip";
connectAttr "polyMirror3.out" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "deleteComponent9.ig";
connectAttr "deleteComponent9.og" "deleteComponent10.ig";
connectAttr "deleteComponent10.og" "deleteComponent11.ig";
connectAttr "deleteComponent11.og" "deleteComponent12.ig";
connectAttr "deleteComponent12.og" "deleteComponent13.ig";
connectAttr "deleteComponent13.og" "deleteComponent14.ig";
connectAttr "deleteComponent14.og" "deleteComponent15.ig";
connectAttr "polyTweak11.out" "polySplitRing2.ip";
connectAttr "pCylinder2Shape.wm" "polySplitRing2.mp";
connectAttr "deleteComponent15.og" "polyTweak11.ip";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "pCylinder2Shape.wm" "polySplitRing3.mp";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "pCylinder2Shape.wm" "polySplitRing4.mp";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "pCylinder2Shape.wm" "polySplitRing5.mp";
connectAttr "polySplitRing5.out" "polySplitRing6.ip";
connectAttr "pCylinder2Shape.wm" "polySplitRing6.mp";
connectAttr "polySplitRing6.out" "polySplitRing7.ip";
connectAttr "pCylinder2Shape.wm" "polySplitRing7.mp";
connectAttr "polySplitRing7.out" "polySplitRing8.ip";
connectAttr "pCylinder2Shape.wm" "polySplitRing8.mp";
connectAttr "polySplitRing8.out" "polySplitRing9.ip";
connectAttr "pCylinder2Shape.wm" "polySplitRing9.mp";
connectAttr "polySplitRing9.out" "polySplitRing10.ip";
connectAttr "pCylinder2Shape.wm" "polySplitRing10.mp";
connectAttr "polySplitRing10.out" "polySplitRing11.ip";
connectAttr "pCylinder2Shape.wm" "polySplitRing11.mp";
connectAttr "polySplitRing11.out" "polySplitRing12.ip";
connectAttr "pCylinder2Shape.wm" "polySplitRing12.mp";
connectAttr "polySplitRing12.out" "polySplitRing13.ip";
connectAttr "pCylinder2Shape.wm" "polySplitRing13.mp";
connectAttr "polySplitRing13.out" "polySplitRing14.ip";
connectAttr "pCylinder2Shape.wm" "polySplitRing14.mp";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "joint1.wm" "skinCluster1.ma[0]";
connectAttr "joint2.wm" "skinCluster1.ma[1]";
connectAttr "joint3.wm" "skinCluster1.ma[2]";
connectAttr "joint4.wm" "skinCluster1.ma[3]";
connectAttr "joint5.wm" "skinCluster1.ma[4]";
connectAttr "joint6.wm" "skinCluster1.ma[5]";
connectAttr "joint7.wm" "skinCluster1.ma[6]";
connectAttr "joint8.wm" "skinCluster1.ma[7]";
connectAttr "joint1.liw" "skinCluster1.lw[0]";
connectAttr "joint2.liw" "skinCluster1.lw[1]";
connectAttr "joint3.liw" "skinCluster1.lw[2]";
connectAttr "joint4.liw" "skinCluster1.lw[3]";
connectAttr "joint5.liw" "skinCluster1.lw[4]";
connectAttr "joint6.liw" "skinCluster1.lw[5]";
connectAttr "joint7.liw" "skinCluster1.lw[6]";
connectAttr "joint8.liw" "skinCluster1.lw[7]";
connectAttr "joint1.obcc" "skinCluster1.ifcl[0]";
connectAttr "joint2.obcc" "skinCluster1.ifcl[1]";
connectAttr "joint3.obcc" "skinCluster1.ifcl[2]";
connectAttr "joint4.obcc" "skinCluster1.ifcl[3]";
connectAttr "joint5.obcc" "skinCluster1.ifcl[4]";
connectAttr "joint6.obcc" "skinCluster1.ifcl[5]";
connectAttr "joint7.obcc" "skinCluster1.ifcl[6]";
connectAttr "joint8.obcc" "skinCluster1.ifcl[7]";
connectAttr "groupParts10.og" "tweak1.ip[0].ig";
connectAttr "groupId15.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "pCylinder2Shape.iog.og[2]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId15.msg" "tweakSet1.gn" -na;
connectAttr "pCylinder2Shape.iog.og[3]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "pCylinder2ShapeOrig.w" "groupParts10.ig";
connectAttr "groupId15.id" "groupParts10.gi";
connectAttr "joint1.msg" "bindPose1.m[0]";
connectAttr "joint2.msg" "bindPose1.m[1]";
connectAttr "joint3.msg" "bindPose1.m[2]";
connectAttr "joint4.msg" "bindPose1.m[3]";
connectAttr "joint5.msg" "bindPose1.m[4]";
connectAttr "joint6.msg" "bindPose1.m[5]";
connectAttr "joint7.msg" "bindPose1.m[6]";
connectAttr "joint8.msg" "bindPose1.m[7]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "joint1.bps" "bindPose1.wm[0]";
connectAttr "joint2.bps" "bindPose1.wm[1]";
connectAttr "joint3.bps" "bindPose1.wm[2]";
connectAttr "joint4.bps" "bindPose1.wm[3]";
connectAttr "joint5.bps" "bindPose1.wm[4]";
connectAttr "joint6.bps" "bindPose1.wm[5]";
connectAttr "joint7.bps" "bindPose1.wm[6]";
connectAttr "joint8.bps" "bindPose1.wm[7]";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCylinderShape1.iog.og[2]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinder2Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
// End of tree4_adult.ma
