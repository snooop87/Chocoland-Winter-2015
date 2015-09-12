#include "gunstoreDefines.sqf"

class gunshopd {

	idd = gunshop_DIALOG;
	movingEnable = false;
	enableSimulation = true;
	onLoad = "[0] execVM 'client\systems\gunStore\populateGunStore.sqf'";

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
			idc = gunshop_gun_pic;
			text = "";

			x = 0.452604 * safezoneW + safezoneX;
			y = 0.236111 * safezoneH + safezoneY;
			w = 0.18 * safezoneW;
			h = 0.160 * safezoneH;
		};

		class ItemSelectedInfo: w_RscStructuredText
		{
			idc = gunshop_gun_Info;
			text = "";

			x = 0.400104 * safezoneW + safezoneX;
			y = 0.50463 * safezoneH + safezoneY;
			w = 0.214166 * safezoneW;
			h = 0.192963 * safezoneH;
		};

		class ItemSelectedPrice: w_RscStructuredText
		{
			idc = gunshop_gun_TEXT;
			text = "";

			x = 0.45 * safezoneW + safezoneX;
			y = 0.657594 * safezoneH + safezoneY;
			w = 0.0891667 * safezoneW;
			h = 0.068889 * safezoneH;
		};

		
		class CartTotalText: w_RscText
		{
			idc = gunshop_total;
			text = "Total: $0";

			x = 0.6875 * safezoneW + safezoneX;
			y = 0.65 * safezoneH + safezoneY;
			w = 0.1 * safezoneW;
			h = 0.0448148 * safezoneH;
		};
	};
	
	class controls {
		///custom
               
              class saveLoadout: w_RscButton
		{
			idc = -1;
			onButtonClick = "[] execVM 'client\systems\gunStore\sLoadout.sqf'";
			text = "save loadout";

			x = 0.48 * safezoneW + safezoneX;
			y = 0.750 * safezoneH + safezoneY;
			w = 0.088 * safezoneW;
			h = 0.040 * safezoneH;
			color[] = {0.1,0.95,0.1,1};

		};
                class resetLoadout: w_RscButton
		{
			idc = -1;
			onButtonClick = "loadout =[];player setvariable['chocoload',[],true];";
			text = "reset loadout";

			x = 0.403125 * safezoneW + safezoneX;
			y = 0.750 * safezoneH + safezoneY;
			w = 0.078 * safezoneW;
			h = 0.040 * safezoneH;
			color[] = {0.95,0.1,0.1,1};

		};
                 class howLoadout: w_RscButton
		{
			idc = -1;
			onButtonClick = "chocoland globalChat'add your favorite weapons and magazines to GunStore Cart and press Save Loadout';";
			text = "how to save loadout";

			x = 0.303125 * safezoneW + safezoneX;
			y = 0.750 * safezoneH + safezoneY;
			w = 0.1 * safezoneW;
			h = 0.040 * safezoneH;
			

		};
		class SelectionList: w_RscListbox
		{
			idc = gunshop_gun_list;
			onLBSelChanged = "[1] execvm 'client\systems\gunStore\weaponInfo.sqf'";

			x = 0.3125 * safezoneW + safezoneX;
			y = 0.225 * safezoneH + safezoneY;
			w = 0.0916666 * safezoneW;
			h = 0.422222 * safezoneH;
		};

		class CartList: w_RscListbox
		{
			idc = gunshop_cart;
			onLBSelChanged = "[] execvm 'client\systems\gunStore\weaponInfo.sqf'";

			x = 0.690104 * safezoneW + safezoneX;
			y = 0.225 * safezoneH + safezoneY;
			w = 0.0916666 * safezoneW;
			h = 0.422222 * safezoneH;
		};
                class SelectionammoList: w_RscListbox
		{
			idc = gunshop_ammo_list;
			x = 0.590 * safezoneW + safezoneX;
			y = 0.41 * safezoneH + safezoneY;
			w = 0.085 * safezoneW;
			h = 0.22 * safezoneH;
		};

		class QuickAddAmmo: w_RscButton
		{
			idc = gunshop_btn_quickAddAmmo;
			onButtonClick = "[] execVM 'client\systems\gunStore\quickAddAmmo.sqf'";
			text = "+ Ammo";

			x = 0.6 * safezoneW + safezoneX;
			y = 0.35 * safezoneH + safezoneY;
			w = 0.055 * safezoneW;
			h = 0.040 * safezoneH;

		};

		class AddToCart: w_RscButton
		{
			idc = -1;
			onButtonClick = "[] execVM 'client\systems\gunStore\addToCart.sqf'";
			text = "Add";

			x = 0.42 * safezoneW + safezoneX;
			y = 0.43 * safezoneH + safezoneY;
			w = 0.065 * safezoneW;
			h = 0.040 * safezoneH;

		};

		class RemoveFromCart: w_RscButton
		{
			idc = -1;
			onButtonClick = "[] execVM 'client\systems\gunStore\removeFromCart.sqf'";
			text = "Remove";

			x = 0.50 * safezoneW + safezoneX;
			y = 0.43 * safezoneH + safezoneY;
			w = 0.065 * safezoneW;
			h = 0.040 * safezoneH;

		};

		class BuyToPlayer: w_RscButton
		{
			idc = -1;
			onButtonClick = "[0] execVM 'client\systems\gunStore\buyGuns.sqf'";
			text = "<img size='3' image='\CA\misc\data\icons\picture_money_CA.paa'/>";

			x = 0.67 * safezoneW + safezoneX;
			y = 0.730 * safezoneH + safezoneY;
			w = 0.12 * safezoneW;
			h = 0.080 * safezoneH;
			color[] = {0.1,0.95,0.1,1};

		};
              
	
		class CancelButton: w_RscButton
		{
			idc = -1;
			onButtonClick = "closeDialog 0;";
			text = "Cancel";

			x = 0.2 * safezoneW + safezoneX;
			y = 0.750 * safezoneH + safezoneY;
			w = 0.072 * safezoneW;
			h = 0.040 * safezoneH;
			color[] = {0.95,0.1,0.1,1};

		};

		// LEFT HAND BUTTONS

		class WeaponsButton: w_RscButton
		{
			idc = -1;
			onButtonClick = "[0] execVM 'client\systems\gunStore\populateGunStore.sqf'";
			text = "Weapons";

			x = 0.203125 * safezoneW + safezoneX;
			y = 0.225 * safezoneH + safezoneY;
			w = 0.088 * safezoneW;
			h = 0.040 * safezoneH;
	
		};

		class WeaponsButton_1: w_RscButton
		{
			idc = -1;
			onButtonClick = "[1] execVM 'client\systems\gunStore\populateGunStore.sqf'";
			text = "Pistols";

			x = 0.218 * safezoneW + safezoneX;
			y = 0.260 * safezoneH + safezoneY;
			w = 0.060 * safezoneW;
			h = 0.040 * safezoneH;
		};

		class WeaponsButton_2: w_RscButton
		{
			idc = -1;
			onButtonClick = "[2] execVM 'client\systems\gunStore\populateGunStore.sqf'";
			text = "Rifles";

			x = 0.218 * safezoneW + safezoneX;
			y = 0.295 * safezoneH + safezoneY;
			w = 0.060 * safezoneW;
			h = 0.040 * safezoneH;
		};

		class WeaponsButton_3: w_RscButton
		{
			idc = -1;
			onButtonClick = "[3] execVM 'client\systems\gunStore\populateGunStore.sqf'";
			text = "Snipers";

			x = 0.218 * safezoneW + safezoneX;
			y = 0.330 * safezoneH + safezoneY;
			w = 0.060 * safezoneW;
			h = 0.040 * safezoneH;
		};

		class WeaponsButton_4: w_RscButton
		{
			idc = -1;
			onButtonClick = "[4] execVM 'client\systems\gunStore\populateGunStore.sqf'";
			text = "Machineguns";

			x = 0.218 * safezoneW + safezoneX;
			y = 0.365 * safezoneH + safezoneY;
			w = 0.060 * safezoneW;
			h = 0.040 * safezoneH;
		};

		class WeaponsButton_5: w_RscButton
		{
			idc = -1;
			onButtonClick = "[5] execVM 'client\systems\gunStore\populateGunStore.sqf'";
			text = "RPGs";

			x = 0.218 * safezoneW + safezoneX;
			y = 0.400 * safezoneH + safezoneY;
			w = 0.060 * safezoneW;
			h = 0.040 * safezoneH;
	
		};

		class AmmoButton: w_RscButton
		{
			idc = -1;
			onButtonClick = "[6] execVM 'client\systems\gunStore\populateGunStore.sqf'";
			text = "Ammunition";

			x = 0.203125 * safezoneW + safezoneX;
			y = 0.450 * safezoneH + safezoneY;
			w = 0.088 * safezoneW;
			h = 0.040 * safezoneH;

		};

		class EquipButton: w_RscButton
		{
			idc = -1;
			onButtonClick = "[7] execVM 'client\systems\gunStore\populateGunStore.sqf'";
			text = "Equipment";

			x = 0.203125 * safezoneW + safezoneX;
			y = 0.500 * safezoneH + safezoneY;
			w = 0.088 * safezoneW;
			h = 0.040 * safezoneH;

		};
	};
};