#include "menuDefines.sqf"

class confirmpd {

	idd = confirm_DIALOG;
	movingEnable = true;
	enableSimulation = true;
		class controlsBackground {
                class MainBackground2: w_RscPicture
		{
			idc = picture2;
			text = "";
                        x = 0.04168 * safezoneW + safezoneX ;
			y = 0.111629 * safezoneH + safezoneY;
			w = 0.3 * safezoneW; 
			h = 0.3 * safezoneH;

		};
};
class controls {

                 class loadChopStore7: w_RscButton
		{
			idc =-1;
			onButtonClick = "closeDialog 0;confirm=1;";
			text = "yes";

			x = 0.020313 * safezoneW + safezoneX;
			y = 0.421852 * safezoneH + safezoneY;
			w = 0.125 * safezoneW;
			h = 0.07 * safezoneH;

		};
                                 
                 class loadfunStore8: w_RscButton
		{
			idc = -1;
			onButtonClick = "closeDialog 0;confirm=2;";
			text = "no";

			x = 0.220313 * safezoneW + safezoneX;
			y = 0.421852 * safezoneH + safezoneY;
			w = 0.125 * safezoneW;
			h = 0.07 * safezoneH;

		};
              
	};
};