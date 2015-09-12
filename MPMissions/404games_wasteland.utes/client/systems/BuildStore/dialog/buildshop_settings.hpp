#include "buildstoreDefines.sqf"

class buildshopd {

	idd = buildshop_DIALOG;
	movingEnable = true;
	enableSimulation = true;
	onLoad = "[0] spawn PopulateBuildStore";

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
		idc = buildshop_vehicle_pic;
		 x = 0.208459 * safezoneW + safezoneX;
		y = 0.01 * safezoneH + safezoneY;
		w = 0.28 * safezoneW;
		h = 0.26 * safezoneH;
		text = "";
	};
		class DialogTitleText: w_RscText
		{
			idc = -1;
			text = " Buildings";

			x = 0.001 * safezoneW + safezoneX;
			y = 0.013 * safezoneH + safezoneY;
			w = 0.065 * safezoneW;
			h = 0.040 * safezoneH;
		};

		class PlayerMoneyText: w_RscText
		{
			idc = buildshop_money;
			text = "Price:";

                       x = 0.12 * safezoneW + safezoneX;
			y = 0.013 * safezoneH + safezoneY;
			w = 0.125 * safezoneW;
			h = 0.040 * safezoneH;
		};
	};
	
	class controls {
                class WeaponsButton: w_RscButton
		{
			idc = -1;
			onButtonClick = "[0] execVM 'client\systems\BuildStore\populateBuildStore.sqf'";
			text = "ALL";

			x = -0.11 * safezoneW;
			y = 0.0 * safezoneH + safezoneY;
			w = 0.088 * safezoneW;
			h = 0.040 * safezoneH;
	
		};

		class WeaponsButton_1: w_RscButton
		{
			idc = -1;
			onButtonClick = "[1] execVM 'client\systems\BuildStore\populateBuildStore.sqf'";
			text = "BASECORES";

			x = -0.11 * safezoneW;
			y = 0.05 * safezoneH + safezoneY;
			w = 0.060 * safezoneW;
			h = 0.040 * safezoneH;
		};

		class WeaponsButton_2: w_RscButton
		{
			idc = -1;
			onButtonClick = "[2] execVM 'client\systems\BuildStore\populateBuildStore.sqf'";
			text = "CONTAINER";

			x = -0.11 * safezoneW;
			y = 0.1 * safezoneH + safezoneY;
			w = 0.060 * safezoneW;
			h = 0.040 * safezoneH;
		};

		class WeaponsButton_3: w_RscButton
		{
			idc = -1;
			onButtonClick = "[3]execVM 'client\systems\BuildStore\populateBuildStore.sqf'";
			text = "WeaponCrates";

			x = -0.11 * safezoneW;
			y = 0.15 * safezoneH + safezoneY;
			w = 0.060 * safezoneW;
			h = 0.040 * safezoneH;
		};

		class WeaponsButton_4: w_RscButton
		{
			idc = -1;
			onButtonClick = "[4] execVM 'client\systems\BuildStore\populateBuildStore.sqf'";
			text = "ESSIANTIAL";

			x = -0.11 * safezoneW;
			y = 0.2 * safezoneH + safezoneY;
			w = 0.060 * safezoneW;
			h = 0.040 * safezoneH;
		};

		class WeaponsButton_5: w_RscButton
		{
			idc = -1;
			onButtonClick = "[5] execVM 'client\systems\BuildStore\populateBuildStore.sqf'";
			text = "FORTIFIED";

			x = -0.11 * safezoneW;
			y = 0.25 * safezoneH + safezoneY;
			w = 0.060 * safezoneW;
			h = 0.040 * safezoneH;
	
		};

		class WeaponsButton_6: w_RscButton
		{
			idc = -1;
			onButtonClick = "[6]execVM 'client\systems\BuildStore\populateBuildStore.sqf'";
			text = "BUNKER";
			x = -0.11 * safezoneW;y = 0.3 * safezoneH + safezoneY;
                        w = 0.088 * safezoneW;h = 0.040 * safezoneH;};

		class WeaponsButton_7: w_RscButton
		{
			idc = -1;
			onButtonClick = "[7] execVM 'client\systems\BuildStore\populateBuildStore.sqf'";
			text = "CONCRETE";
			x = -0.11 * safezoneW;y = 0.3 * safezoneH + safezoneY;
			w = 0.088 * safezoneW;h = 0.040 * safezoneH;

		};
                class WeaponsButton_8: w_RscButton
		{
			idc = -1;
			onButtonClick = "[8] execVM 'client\systems\BuildStore\populateBuildStore.sqf'";
			text = "CRAP STUFF";
			x = -0.11 * safezoneW;y = 0.35 * safezoneH + safezoneY;
			w = 0.088 * safezoneW;h = 0.040 * safezoneH;

		};
                class WeaponsButton_9: w_RscButton
		{
			idc = -1;
			onButtonClick = "[9] execVM 'client\systems\BuildStore\populateBuildStore.sqf'";
			text = "FLAG+SIGN";
			x = -0.11 * safezoneW;y = 0.4 * safezoneH + safezoneY;
			w = 0.088 * safezoneW;h = 0.040 * safezoneH;

		};
                class WeaponsButton_10: w_RscButton
		{
			idc = -1;
			onButtonClick = "[10] execVM 'client\systems\BuildStore\populateBuildStore.sqf'";
			text = "BIG BUILDINGS";
			x = -0.11 * safezoneW;y = 0.45 * safezoneH + safezoneY;
			w = 0.088 * safezoneW;h = 0.040 * safezoneH;

		};
                class WeaponsButton_11: w_RscButton
		{
			idc = -1;
			onButtonClick = "[11] execVM 'client\systems\BuildStore\populateBuildStore.sqf'";
			text = "GUNSSS";
			x = -0.11 * safezoneW;y = 0.50 * safezoneH + safezoneY;
			w = 0.088 * safezoneW;h = 0.040 * safezoneH;

		};
                class loadVehStore: w_RscButton
		{
			idc =-1;
			onButtonClick = "closeDialog 0; [] execVM 'client\systems\vehicleStore\loadVehStore.sqf'";
			text = "-> Vehicles";

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
			text = "-> Choppers";

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
			onLBSelChanged = "[] spawn buildItemInfo";

			x = 0.008857 * safezoneW + safezoneX;
			y = 0.065 * safezoneH + safezoneY;
			w = 0.184927 * safezoneW;
			h = 0.44 * safezoneH;
		};

		class BuyVehicleButton: w_RscButton
		{
			idc = -1;
			onButtonClick = "[0] execVM 'client\systems\BuildStore\buyBuild.sqf'";
			text = "<img size='1' image='\CA\misc\data\icons\picture_money_CA.paa'/>";

                        x = 0.14 * safezoneW + safezoneX;
			y = 0.54 * safezoneH + safezoneY;
			w = 0.065 * safezoneW;
			h = 0.040 * safezoneH;
			color[] = {0.1,0.95,0.1,1};

		};
class BuyVehicleButton1: w_RscButton
		{
			idc = -1;
			onButtonClick = "[1] execVM 'client\systems\BuildStore\buyBuild.sqf'";
			text = "Multibuy(200%Price)";

                        x = 0.07 * safezoneW + safezoneX;
			y = 0.54 * safezoneH + safezoneY;
			w = 0.075 * safezoneW;
			h = 0.040 * safezoneH;
			color[] = {0.1,0.55,0.1,1};

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
		