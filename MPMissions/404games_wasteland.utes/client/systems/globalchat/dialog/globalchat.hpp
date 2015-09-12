#include "menuDefines.sqf"
class globalchatDialog
{
	idd = global_DIALOG;
	movingEnable = true;
	enableSimulation = true;
	class controlsBackground {
		
		class MainBackground: w_RscPicture
		{
			idc = -1;
			text = "";
			x = 0.1875 * safezoneW + safezoneX;
			y = 0.15 * safezoneH + safezoneY;
			w = 0.837499 * safezoneW;
			h = 0.661111 * safezoneH;
		};
		
	};
	
	class controls {

		class PlayerEditBox:w_RscEdit
		{
			idc= globalMessage;
			x = 0.50 * safezoneW + safezoneX;
			y = 0.9 * safezoneH + safezoneY;
			w = 0.3 * safezoneW;
			h = 0.03 * safezoneH;
                        
		};

		
		class WarnButton: w_RscButton
		{
			idc = -1;
			text = "Press Enter";
			onButtonClick = "[] execVM 'client\systems\globalchat\chatfunction.sqf'";
			x = 0.835 * safezoneW + safezoneX;
			y = 0.900 * safezoneH + safezoneY;
			w = 0.07 * safezoneW;
			h = 0.04 * safezoneH;
		};
	};
};


