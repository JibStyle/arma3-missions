//Save this as intro.sqf - place in mission folder and add it to your mission via a trigger with on activation having
// call{execVM "intro_text.sqf";} in it.
 
txt5Layer = "txt5" call BIS_fnc_rscLayer;
txt6Layer = "txt6" call BIS_fnc_rscLayer;
txt7Layer = "txt7" call BIS_fnc_rscLayer;
 
 
		_texta = "<t font ='EtelkaMonospaceProBold' align = 'center' size='1.4' color='#F98E05'>" + "'Between a rock and a hard(ware) place'"+"</t>"; 
		[_texta,/* poz x */ 0,/* poz y */ 0.100,/*durata*/ 15,/* fade in?*/ 1,0,txt5Layer] spawn BIS_fnc_dynamicText;
 
txt5aLayer = "txt5a" call BIS_fnc_rscLayer;
txt6aLayer = "txt6a" call BIS_fnc_rscLayer;
txt7aLayer = "txt7a" call BIS_fnc_rscLayer;
 
 
		_texta = "<t font ='EtelkaMonospaceProBold' align = 'center' size='0.5' color='#355E3B'>" + "By Ignition Gaming"+"</t>"; 
		[_texta,/* poz x */ 0,/* poz y */ 0.370,/*durata*/ 7,/* fade in?*/ 1,0,txt5aLayer] spawn BIS_fnc_dynamicText;

txt5bLayer = "txt5b" call BIS_fnc_rscLayer;
txt6bLayer = "txt6b" call BIS_fnc_rscLayer;
txt7bLayer = "txt7b" call BIS_fnc_rscLayer;

		_texta = "<t font ='EtelkaMonospaceProBold' align = 'center' size='0.5' color='#Ffffff'>" + "May 3, 1982 04:58"+"</t>"; 
		[_texta,/* poz x */ 0,/* poz y */ 0.320,/*durata*/ 15,/* fade in?*/ 1,0,txt5bLayer] spawn BIS_fnc_dynamicText;