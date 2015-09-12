#include "genstoreDefines.sqf"

class genstored {

	idd = genstore_DIALOG;
	movingEnable = false;
	enableSimulation = true;
	onLoad = "[] execVM 'client\systems\generalStore\populateGenStore.sqf'";

	class controlsBackground {
		
		class MainBackground: w_RscPicture
		{
			idc = -1;
			text = "ui_background_controlers_ca.paa";

			x = 0.1875 * safezoneW + safezoneX;
			y = 0.15 * safezoneH + safezoneY;
			w = 0.837499 * safezoneW;
			h = 0.661111 * safezoneH;
		};
		
		class ItemSelectedPicture: w_RscPicture
		{
			idc = genstore_item_pic;
			text = "";

			x = 0.5325 * safezoneW + safezoneX;
			y = 0.250 * safezoneH + safezoneY;
			w = 0.030 * safezoneW;
			h = 0.055 * safezoneH;
		};

		class ItemSelectedInfo: w_RscStructuredText
		{
			idc = genstore_item_Info;
			text = "";

			x = 0.440104 * safezoneW + safezoneX;
			y = 0.50463 * safezoneH + safezoneY;
			w = 0.214166 * safezoneW;
			h = 0.192963 * safezoneH;
		};

		class ItemSelectedPrice: w_RscStructuredText
		{
			idc = genstore_item_TEXT;
			text = "";

			x = 0.45 * safezoneW + safezoneX;
			y = 0.317594 * safezoneH + safezoneY;
			w = 0.1 * safezoneW;
			h = 0.068889 * safezoneH;
		};
class ItemSelectedPrice2: w_RscStructuredText
		{
			idc = genstore_item_TEXT2;
			text = "";

			x = 0.55 * safezoneW + safezoneX;
			y = 0.317594 * safezoneH + safezoneY;
			w = 0.1 * safezoneW;
			h = 0.068889 * safezoneH;
		};

		class CartTotalText: w_RscText
		{
			idc = genstore_total;
			text = "Money Total: $0";

			x = 0.6875 * safezoneW + safezoneX;
			y = 0.65 * safezoneH + safezoneY;
			w = 0.0844792 * safezoneW;
			h = 0.0448148 * safezoneH;
		};
                class CartTotalText1: w_RscText
		{
			idc = genstore_total2;
			text = " Chocos Total: $0";

			x = 0.6875 * safezoneW + safezoneX;
			y = 0.67 * safezoneH + safezoneY;
			w = 0.0844792 * safezoneW;
			h = 0.0448148 * safezoneH;
		};
		
	};
	
	class controls {
		///custom
                class loadVehStore: w_RscButton
		{
			idc =-1;
			onButtonClick = "closeDialog 0; [] execVM 'client\systems\vehicleStore\loadVehStore.sqf'";
			text = "-> Vehicles";

			x = 0.22 * safezoneW + safezoneX;
			y = 0.175 * safezoneH + safezoneY;
			w = 0.0844792 * safezoneW;
			h = 0.0448148 * safezoneH;

		};
                 class loadChopStore: w_RscButton
		{
			idc =-1;
			onButtonClick = "closeDialog 0; [] execVM 'client\systems\GunStore\loadGunStore.sqf'";
			text = "-> Weapons";

			x = 0.32 * safezoneW + safezoneX;
			y = 0.175 * safezoneH + safezoneY;
			w = 0.0844792 * safezoneW;
			h = 0.0448148 * safezoneH;

		};
                 class loadBuildStore: w_RscButton
		{
			idc = -1;
			onButtonClick = "closeDialog 0; [] execVM 'client\systems\BuildStore\loadBuildStore.sqf'";
			text = "-> Buildings";

			x = 0.42 * safezoneW + safezoneX;
			y = 0.175 * safezoneH + safezoneY;
			w = 0.0844792 * safezoneW;
			h = 0.0448148 * safezoneH;

		};
                 class loadBuildStore2: w_RscButton
		{
			idc = -1;
			onButtonClick = "closeDialog 0; [] execVM 'client\systems\ChopperStore\loadChopStore.sqf'";
			text = "-> Airplanes";

			x = 0.52 * safezoneW + safezoneX;
			y = 0.175 * safezoneH + safezoneY;
			w = 0.0844792 * safezoneW;
			h = 0.0448148 * safezoneH;

		};
               
                ////////end custom
		class SelectionList: w_RscListbox
		{
			idc = genstore_item_list;
			onLBSelChanged = "[] execvm 'client\systems\generalStore\itemInfo.sqf'";

			x = 0.23 * safezoneW + safezoneX;
			y = 0.225 * safezoneH + safezoneY;
			w = 0.17 * safezoneW;
			h = 0.422222 * safezoneH;
		};

		class CartList: w_RscListbox
		{
			idc = genstore_cart;
			onLBSelChanged = "[] execvm 'client\systems\generalStore\itemInfo.sqf'";

			x = 0.690104 * safezoneW + safezoneX;
			y = 0.225 * safezoneH + safezoneY;
			w = 0.0916666 * safezoneW;
			h = 0.422222 * safezoneH;
		};

		/*class StoreButton0: w_RscButton
		{	
			idc = genstore_iteminventory;

			text = "Items";
			onButtonClick = "[] execVM 'client\systems\generalStore\populateSwitch.sqf'";
			
			x = 0.203125 * safezoneW + safezoneX;
			y = 0.225 * safezoneH + safezoneY;
			w = 0.088 * safezoneW;
			h = 0.040 * safezoneH;
		};*/
		class AddToCart : w_RscButton {
			
			text = "Add";
			onButtonClick = "[] execVM 'client\systems\generalStore\addToCart.sqf'";
			
			x = 0.515625 * safezoneW + safezoneX;
			y = 0.375 * safezoneH + safezoneY;
			w = 0.065 * safezoneW;
			h = 0.040 * safezoneH;
		};

		class RemoveFromCart : w_RscButton {

			text = "Remove";
			onButtonClick = "[] execVM 'client\systems\generalStore\removeFromCart.sqf'";

			x = 0.515625 * safezoneW + safezoneX;
			y = 0.425 * safezoneH + safezoneY;
			w = 0.065 * safezoneW;
			h = 0.040 * safezoneH;
		};

		class CancelButton : w_RscButton {
			
			idc = -1;
			text = "Cancel";
			onButtonClick = "closeDialog 0;";

			x = 0.203125 * safezoneW + safezoneX;
			y = 0.750 * safezoneH + safezoneY;
			w = 0.072 * safezoneW;
			h = 0.040 * safezoneH;
			color[] = {0.95,0.1,0.1,1};
		};

		

		class BuyToPlayer1 : w_RscButton {
			
			idc = genstore_buysell;
			onButtonClick = "[0] execVM 'client\systems\generalStore\buyitems.sqf'";
			text = "<img size='3' image='\CA\misc\data\icons\picture_money_CA.paa'/>";

			x = 0.67 * safezoneW + safezoneX;
			y = 0.730 * safezoneH + safezoneY;
			w = 0.12 * safezoneW;
			h = 0.080 * safezoneH;
			color[] = {0.1,0.95,0.1,1};
		};
               
	};
};