#define hud_status_idc 3600
#define hud_vehicle_idc 3601
#define hud_high_idc 3602
#define hud_chococore_idc 3603
#define hud_mission 3604
class WastelandHud {
idd = -1;
fadeout=0;
fadein=0;
duration = 20;
name= "WastelandHud";
	onLoad = "uiNamespace setVariable ['WastelandHud', _this select 0]";
	
	class controlsBackground {
		class WastelandHud_Vehicle:w_RscText
		{
			idc = hud_vehicle_idc;
			type = CT_STRUCTURED_TEXT;
			size = 0.040;
			x = safeZoneX + (safeZoneW * (1 - (0.14 / SafeZoneW)));
                        y = safeZoneY + (safeZoneH * (1 - (0.30 / SafeZoneH)));
			w = 0.2; h = 0.65;
			colorText[] = {1,1,1,1};
			lineSpacing = 3;
			colorBackground[] = {0,0,0,0};
			text = "";
			shadow = 2;
			class Attributes {
				align = "right";
			};
		};
                class WastelandHud_chococore:w_RscText
		{
			idc = hud_chococore_idc;
			type = CT_STRUCTURED_TEXT;
			size = 0.06;
			x = safeZoneX + (safeZoneW * (0.1 + (0.04 / SafeZoneW)));
                        y = safeZoneY + (safeZoneH * (0 + (1.3 / SafeZoneH)));
			w = 2; h = 0.08;
			colorText[] = {1,1,1,1};
			lineSpacing = 3;
			colorBackground[] = {0,1,1,0};
			text = "";
			shadow = 4;
			class Attributes {
				align = "center";
			};
		};
                class highscore:w_RscText
		{
			idc = hud_high_idc;
			type = CT_STRUCTURED_TEXT;
			size = 0.030;
			x = safeZoneX + (safeZoneW * (0.01 + (0.05 / SafeZoneW)));
                        y = safeZoneY + (safeZoneH * (0.01 + (0.09 / SafeZoneH)));
			w = 0.55; h = 0.35;
			colorText[] = {0,0,1,0.2};
			lineSpacing = 3;
			colorBackground[] = {0,0,0,0};
			text = "";
			shadow = 0;

			class Attributes {
				align = "left";
			};
		};
		class WastelandHud_Status:w_RscText
		{
			idc = hud_status_idc;
			type = CT_STRUCTURED_TEXT;
			size = 0.060;
			x = safeZoneX + (safeZoneW * (0.95 - (0.20 / SafeZoneW)));
                        y = safeZoneY + (safeZoneH * (1 - (0.28 / SafeZoneH)));
			w = 0.30; h = 0.24;
			colorText[] = {1,1,1,1};
			lineSpacing = 3;
			colorBackground[] = {0,0,0,0};
			text = " 500 <img size='1' image='\CA\misc\data\icons\picture_money_CA.paa'/>";
			shadow = 4;
			class Attributes {
				align = "right";
			};
		};
                class WastelandHud_mission:w_RscText
		{
			idc = hud_mission;
			type = CT_STRUCTURED_TEXT;
			size = 0.040;
			x = safeZoneX + (safeZoneW * (0.91 - (0.20 / SafeZoneW)));
                        y = safeZoneY + (safeZoneH * (0 + (0.28 / SafeZoneH)));
			w = 0.38; h = 0.48;
			colorText[] = {1,1,1,1};
			lineSpacing = 3;
			colorBackground[] = {0,0,0,0};
			text = "";
			shadow = 4;
			class Attributes {
				align = "right";
			};
		};
             
               
               
	};
};
