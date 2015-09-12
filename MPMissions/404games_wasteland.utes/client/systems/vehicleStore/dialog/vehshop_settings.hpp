#include "vehstoreDefines.sqf"

class vehshopd {

	idd = vehshop_DIALOG;
	movingEnable = true;
	enableSimulation = true;
	onLoad = "[] spawn PopulateVehStore";

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
 class balca_VC_vehicle_shortcut : balca_debug_image
	{
		idc = vehshop_vehicle_pic;
		 x = 0.208459 * safezoneW + safezoneX;
		y = 0.01 * safezoneH + safezoneY;
		w = 0.28 * safezoneW;
		h = 0.26 * safezoneH;
		text = "";
	};
		class DialogTitleText: w_RscText
		{
			idc = -1;
			text = "Vehicles";

			x = 0.001 * safezoneW + safezoneX;
			y = 0.013 * safezoneH + safezoneY;
			w = 0.065 * safezoneW;
			h = 0.040 * safezoneH;
		};

		class PlayerMoneyText: w_RscText
		{
			idc = vehshop_money;
			text = "Price:0$";

			 x = 0.065 * safezoneW + safezoneX;
			y = 0.013 * safezoneH + safezoneY;
			w = 0.165 * safezoneW;
			h = 0.040 * safezoneH;
		};
               			
	};
	
	class controls {
            ///custom
               class loadVehStore: w_RscButton
		{
			idc =-1;
			onButtonClick = "closeDialog 0; [] execVM 'client\systems\BuildStore\loadBuildStore.sqf'";
			text = "-> Buildings";

                        x = 0.228459 * safezoneW + safezoneX;
			y = 0.30 * safezoneH + safezoneY;
			w = 0.124927 * safezoneW;
			h = 0.0599908 * safezoneH;

		};
                 class loadChopStore: w_RscButton
		{
			idc =-1;
			onButtonClick = "closeDialog 0; [] execVM 'client\systems\GunStore\loadGunStore.sqf'";
			text = "-> Weapons";

                       x = 0.230203 * safezoneW + safezoneX;
			y = 0.35 * safezoneH + safezoneY;
			w = 0.124927 * safezoneW;
			h = 0.0599908 * safezoneH;

		};
                 class loadBuildStore: w_RscButton
		{
			idc = -1;
			onButtonClick = "closeDialog 0; [] execVM 'client\systems\ChopperStore\loadChopStore.sqf'";
			text = "-> Airplanes";

                         x = 0.230203 * safezoneW + safezoneX;
			y = 0.40 * safezoneH + safezoneY;
			w = 0.124927 * safezoneW;
			h = 0.0599908 * safezoneH;

		};
                 class loadBuildStore2: w_RscButton
		{
			idc = -1;
			onButtonClick = "closeDialog 0; [] execVM 'client\systems\generalStore\loadGenStore.sqf'";
			text = "-> Generals";

			x = 0.230203 * safezoneW + safezoneX;
			y = 0.45 * safezoneH + safezoneY;
			w = 0.124927 * safezoneW;
			h = 0.0599908 * safezoneH;


		};
               
              
		class SelectionList: w_RscListbox
		{
			idc = buildshop_item_list;
			onLBSelChanged = "[] spawn vehItemInfo";

			x = 0.008857 * safezoneW + safezoneX;
			y = 0.065 * safezoneH + safezoneY;
			w = 0.184927 * safezoneW;
			h = 0.44 * safezoneH;
		};

		class BuyVehicleButton: w_RscButton
		{
			idc = -1;
			onButtonClick = "[0] execVM 'client\systems\vehicleStore\buyVehicle.sqf'";
			text = "<img size='2' image='\CA\misc\data\icons\picture_money_CA.paa'/>";

                       x = 0.13 * safezoneW + safezoneX;
			y = 0.54 * safezoneH + safezoneY;
			w = 0.06 * safezoneW;
			h = 0.040 * safezoneH;
			color[] = {0.1,0.95,0.1,1};

		};
             class BuyVehicleButton1: w_RscButton
		{
			idc = -1;
			onButtonClick = "[0] execVM 'client\systems\vehicleStore\buyVehicle2.sqf'";
			text = "InstaBuy";

                       x = 0.07 * safezoneW + safezoneX;
			y = 0.54 * safezoneH + safezoneY;
			w = 0.06 * safezoneW;
			h = 0.040 * safezoneH;
			color[] = {0.1,0.95,0.1,1};

		};
		class CancelButton: w_RscButton
		{
			idc = -1;
			onButtonClick = "closeDialog 0;";
			text = "Cancel";

                        x = 0.01 * safezoneW + safezoneX;
			y = 0.54 * safezoneH + safezoneY;
			w = 0.065 * safezoneW;
			h = 0.040 * safezoneH;
			color[] = {0.95,0.1,0.1,1};

		};
	};
};
		