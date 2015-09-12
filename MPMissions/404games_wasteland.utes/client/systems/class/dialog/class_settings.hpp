#include "classDefines.sqf"

class classd {

	idd = class_DIALOG;
	movingEnable = true;
	enableSimulation = true;
	onLoad = "[] spawn Populateclass";

	class controlsBackground {
		
		class MainBackground: w_RscPicture
		{
			idc = -1;
			text = "ui_background_controlers_ca.paa";

			x = 0.001704 * safezoneW + safezoneX ;
			y = 0.00 * safezoneH + safezoneY ;
			w = 0.27 * safezoneW;
			h = 0.60 * safezoneH;
		};
 
		class DialogTitleText: w_RscText
		{
			idc = -1;
			text = " choose your Class, you can it also change in PlayerMenu";

			x = 0.001 * safezoneW + safezoneX;
			y = 0.013 * safezoneH + safezoneY;
			w = 0.065 * safezoneW;
			h = 0.040 * safezoneH;
		};

		
	};
	
	class controls {
           
                
		class SelectionList: w_RscListbox
		{
			idc = class_item_list;
			onLBSelChanged = "[] spawn buildItemInfo";

			x = 0.008857 * safezoneW + safezoneX;
			y = 0.065 * safezoneH + safezoneY;
			w = 0.184927 * safezoneW;
			h = 0.44 * safezoneH;
		};

		class BuyVehicleButton: w_RscButton
		{
			idc = -1;
			onButtonClick = "[] execVM 'client\systems\class\buyclass.sqf'";
			text = "select";

                        x = 0.12 * safezoneW + safezoneX;
			y = 0.54 * safezoneH + safezoneY;
			w = 0.065 * safezoneW;
			h = 0.040 * safezoneH;
			color[] = {0.1,0.95,0.1,1};

		};

		class CancelButton: w_RscButton
		{
			idc = -1;
			onButtonClick = "closeDialog 0; classselect =1;";
			text = "no Chances";

                        x = 0.01 * safezoneW + safezoneX;
			y = 0.54 * safezoneH + safezoneY;
			w = 0.065 * safezoneW;
			h = 0.040 * safezoneH;
			color[] = {0.95,0.1,0.1,1};

		};
	};
};
		