#define playerMenuDialog 55500
#define playerMenuPlayerSkin 55501
#define playerMenuPlayerGun 55502
#define playerMenuPlayerItems 55503
#define playerMenuPlayerPos 55504
#define playerMenuPlayerList 55505
#define playerMenuSpectateButton 55506
#define playerMenuPlayerObject 55507
#define playerMenuPlayerHealth 55508
#define playerMenuWarnMessage 55509
#define playerMenuPlayerck 55522
#define playerMenuPlayerdonate 55599
#define playerMenusavevehicle 55600
#define playerMenusavevehicle2 55607
#define playerMenusaveweapon 55601
#define playerMenudecode 55602
#define playerMenubasebuilder 55603
#define playerMenuattach 55606
#define playerMenuupgrades 55605
class PlayersMenu
{
	idd = playerMenuDialog;
	movingEnable = false;
	enableSimulation = true;
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
		class DialogTitleText: w_RscText
		{
			idc = -1;
			text = "Admin-Player Menu";

			x = 0.203125 * safezoneW + safezoneX;
			y = 0.175 * safezoneH + safezoneY;
			w = 0.0844792 * safezoneW;
			h = 0.0448148 * safezoneH;
		};

		class PlayerObjectText: w_RscText
		{
			idc = playerMenuPlayerObject;
			text = "Slot:";
			sizeEx = 0.030;
			x = 0.52 * safezoneW + safezoneX;
			y = 0.24 * safezoneH + safezoneY;
			w = 0.25 * safezoneW;
			h = 0.04 * safezoneH;
		};

		class PlayerSkinText: w_RscText
		{
			idc = playerMenuPlayerSkin;
			text = "Skin:";
			sizeEx = 0.030;
			x = 0.52 * safezoneW + safezoneX;
			y = 0.26 * safezoneH + safezoneY;
			w = 0.25 * safezoneW;
			h = 0.04 * safezoneH;
		};

		class PlayerGunText: w_RscText
		{
			idc = playerMenuPlayerGun;
			text = "Money:";
			sizeEx = 0.030;
			x = 0.52 * safezoneW + safezoneX;
			y = 0.28 * safezoneH + safezoneY;
			w = 0.25 * safezoneW;
			h = 0.04 * safezoneH;
		};
                class PlayerckText: w_RscText
		{
			idc = playerMenuPlayerck;
			text = "chocos:";
			sizeEx = 0.030;
			x = 0.52 * safezoneW + safezoneX;
			y = 0.37 * safezoneH + safezoneY;
			w = 0.25 * safezoneW;
			h = 0.04 * safezoneH;
		};
                class PlayerdonText: w_RscText
		{
			idc = playerMenuPlayerdonate;
			text = "Donator:";
			sizeEx = 0.030;
			x = 0.52 * safezoneW + safezoneX;
			y = 0.39 * safezoneH + safezoneY;
			w = 0.25 * safezoneW;
			h = 0.04 * safezoneH;
		};
                class PlayersavevehicleText: w_RscText
		{
			idc = playerMenusavevehicle;
			text = "savevehicle:";
			sizeEx = 0.030;
			x = 0.52 * safezoneW + safezoneX;
			y = 0.41 * safezoneH + safezoneY;
			w = 0.25 * safezoneW;
			h = 0.04 * safezoneH;
		};
                 class PlayersavevehicleText4: w_RscText
		{
			idc = playerMenusavevehicle2;
			text = "savevehicle2:";
			sizeEx = 0.030;
			x = 0.65 * safezoneW + safezoneX;
			y = 0.41 * safezoneH + safezoneY;
			w = 0.25 * safezoneW;
			h = 0.04 * safezoneH;
		};
                class PlayersaveweaponText: w_RscText
		{
			idc = playerMenusaveweapon;
			text = "saveWeapon:";
			sizeEx = 0.030;
			x = 0.52 * safezoneW + safezoneX;
			y = 0.43 * safezoneH + safezoneY;
			w = 0.25 * safezoneW;
			h = 0.04 * safezoneH;
		};
        
                 class playerMenubasebuildertext: w_RscText
		{
			idc = playerMenubasebuilder;
			text = "basebuilder:";
			sizeEx = 0.030;
			x = 0.52 * safezoneW + safezoneX;
			y = 0.45 * safezoneH + safezoneY;
			w = 0.25 * safezoneW;
			h = 0.04 * safezoneH;
		};
		class playerMenudecodeText5: w_RscText
		{
			idc = playerMenudecode;
			text = "decoder:";
			sizeEx = 0.030;
			x = 0.52 * safezoneW + safezoneX;
			y = 0.47 * safezoneH + safezoneY;
			w = 0.40 * safezoneW;
			h = 0.04 * safezoneH;
		};
                class playerMenudecodeText11: w_RscText
		{
			idc = playerMenuattach;
			text = "attach:";
			sizeEx = 0.030;
			x = 0.52 * safezoneW + safezoneX;
			y = 0.49 * safezoneH + safezoneY;
			w = 0.40 * safezoneW;
			h = 0.04 * safezoneH;
		};
                class playerMenudecodeText23: w_RscText
		{
			idc = playerMenuupgrades;
			text = "empty:";
			sizeEx = 0.030;
			x = 0.52 * safezoneW + safezoneX;
			y = 0.51 * safezoneH + safezoneY;
			w = 0.40 * safezoneW;
			h = 0.04 * safezoneH;
		};
                 class playerMenudecodeText24: w_RscText
		{
			idc = playerMenuticker;
			text = "Ticker:";
			sizeEx = 0.030;
			x = 0.52 * safezoneW + safezoneX;
			y = 0.53 * safezoneH + safezoneY;
			w = 0.40 * safezoneW;
			h = 0.2 * safezoneH;
		};
                class PlayerItemsText: w_RscText
		{
			idc = playerMenuPlayerItems;
			text = "Items:";
			sizeEx = 0.030;
			x = 0.52 * safezoneW + safezoneX;
			y = 0.30 * safezoneH + safezoneY;
			w = 0.40 * safezoneW;
			h = 0.04 * safezoneH;
		};
		class PlayerHealthText: w_RscText
		{
			idc = playerMenuPlayerHealth;
			text = "Health:";
			sizeEx = 0.030;
			x = 0.52 * safezoneW + safezoneX;
			y = 0.32 * safezoneH + safezoneY;
			w = 0.25 * safezoneW;
			h = 0.04 * safezoneH;
		};

		class PlayerPosistionText: w_RscText
		{
			idc = playerMenuPlayerPos;
			text = "Position:";
			sizeEx = 0.030;
			x = 0.52 * safezoneW + safezoneX;
			y = 0.34 * safezoneH + safezoneY;
			w = 0.25 * safezoneW;
			h = 0.04 * safezoneH;
		};
	};
	
	class controls {

		class PlayerEditBox:w_RscEdit
		{
			idc=playerMenuWarnMessage;
			x = 0.60 * safezoneW + safezoneX;
			y = 0.745 * safezoneH + safezoneY;
			w = 0.175 * safezoneW;
			h = 0.04 * safezoneH;
		};

		class PlayerListBox: w_RscListbox
		{
			idc = playerMenuPlayerList;
			onLBSelChanged="[2,_this select 1] execVM ""client\systems\adminPanel\importvalues.sqf"";";
			x = 0.22 * safezoneW + safezoneX;
			y = 0.25 * safezoneH + safezoneY;
			w = 0.30 * safezoneW;
			h = 0.45 * safezoneH;
		};

		class SpectateButton: w_RscButton
		{
			idc = playerMenuSpectateButton;
			text = "Spectate";
			onButtonClick = "[0] execVM 'client\systems\adminPanel\playerSelect.sqf'";
			x = 0.2 * safezoneW + safezoneX;
			y = 0.730 * safezoneH + safezoneY;
			w = 0.05 * safezoneW;
			h = 0.04 * safezoneH;
		};
                class Choco1Button: w_RscButton
		{
			idc = -1;
			text = "choco-1";
			onButtonClick = "[11] execVM 'client\systems\adminPanel\playerSelect.sqf'";
			x = 0.2 * safezoneW + safezoneX;
			y = 0.700 * safezoneH + safezoneY;
			w = 0.05 * safezoneW;
			h = 0.04 * safezoneH;
		};
                class Choco2Button: w_RscButton
		{
			idc = -1;
			text = "choco+0.1";
			onButtonClick = "[12] execVM 'client\systems\adminPanel\playerSelect.sqf'";
			x = 0.25 * safezoneW + safezoneX;
			y = 0.700 * safezoneH + safezoneY;
			w = 0.05 * safezoneW;
			h = 0.04 * safezoneH;
                        color[] = {0.1,0.95,0.1,1};
		};
                 class playerresetstats: w_RscButton
                {
			idc = -1;
			text = "RESET STATS";
			onButtonClick = "[21] execVM 'client\systems\adminPanel\playerSelect.sqf'";
			x = 0.65 * safezoneW + safezoneX;
			y = 0.42 * safezoneH + safezoneY;
			w = 0.080 * safezoneW;
			h = 0.04 * safezoneH;
			color[] = {0.1,0.95,0.1,1};
		};
                  class playerresetstats22: w_RscButton
                {
			idc = -1;
			text = "Kick Player";
			onButtonClick = "[22] execVM 'client\systems\adminPanel\playerSelect.sqf'";
			x = 0.65 * safezoneW + safezoneX;
			y = 0.47 * safezoneH + safezoneY;
			w = 0.080 * safezoneW;
			h = 0.04 * safezoneH;
			color[] = {0.1,0.95,0.1,1};
		};
                  class playerresetstats222: w_RscButton
                {
			idc = -1;
			text = "Ban Player";
			onButtonClick = "[23] execVM 'client\systems\adminPanel\playerSelect.sqf'";
			x = 0.65 * safezoneW + safezoneX;
			y = 0.52 * safezoneH + safezoneY;
			w = 0.080 * safezoneW;
			h = 0.04 * safezoneH;
			color[] = {0.1,0.95,0.1,1};
		};
                class Choco5Button: w_RscButton
		{
			idc = -1;
			text = "choco+1";
			onButtonClick = "[13] execVM 'client\systems\adminPanel\playerSelect.sqf'";
			x = 0.3 * safezoneW + safezoneX;
			y = 0.700 * safezoneH + safezoneY;
			w = 0.05 * safezoneW;
			h = 0.04 * safezoneH;
		};
                class donatorButton: w_RscButton
		{
			idc = -1;
			text = "donate 1/0";
			onButtonClick = "[14] execVM 'client\systems\adminPanel\playerSelect.sqf'";
			x = 0.35 * safezoneW + safezoneX;
			y = 0.700 * safezoneH + safezoneY;
			w = 0.05 * safezoneW;
			h = 0.04 * safezoneH;
		};
                   class donatorButton1: w_RscButton
		{
			idc = -1;
			text = "baseb 1/0";
			onButtonClick = "[15] execVM 'client\systems\adminPanel\playerSelect.sqf'";
			x = 0.4 * safezoneW + safezoneX;
			y = 0.700 * safezoneH + safezoneY;
			w = 0.05 * safezoneW;
			h = 0.04 * safezoneH;
		};
                   class donatorButton2: w_RscButton
		{
			idc = -1;
			text = "decoder 1/0";
			onButtonClick = "[16] execVM 'client\systems\adminPanel\playerSelect.sqf'";
			x = 0.45 * safezoneW + safezoneX;
			y = 0.700 * safezoneH + safezoneY;
			w = 0.05 * safezoneW;
			h = 0.04 * safezoneH;
		};
                   class donatorButton3: w_RscButton
		{
			idc = -1;
			text = "attach 1/0";
			onButtonClick = "[17] execVM 'client\systems\adminPanel\playerSelect.sqf'";
			x = 0.5 * safezoneW + safezoneX;
			y = 0.700 * safezoneH + safezoneY;
			w = 0.05 * safezoneW;
			h = 0.04 * safezoneH;
		};
             /*      class donatorButton4: w_RscButton
		{
			idc = -1;
			text = "upgrades 0/1";
			onButtonClick = "[18] execVM 'client\systems\adminPanel\playerSelect.sqf'";
			x = 0.55 * safezoneW + safezoneX;
			y = 0.700 * safezoneH + safezoneY;
			w = 0.05 * safezoneW;
			h = 0.04 * safezoneH;
		};
                */
		class SlayButton: w_RscButton
		{
			idc = -1;
                        text = "TtoPlayer";
			onButtonClick = "[9] execVM 'client\systems\adminPanel\playerSelect.sqf'";
			
			x = 0.2 * safezoneW + safezoneX;
			y = 0.760 * safezoneH + safezoneY;
			w = 0.05 * safezoneW;
			h = 0.04 * safezoneH;
			
		};

		class UnlockTeamSwitchButton: w_RscButton
		{
			idc = -1;
			text = "UTeamSwitch";
			onButtonClick = "[3] execVM 'client\systems\adminPanel\playerSelect.sqf'";
			x = 0.250 * safezoneW + safezoneX;
			y = 0.730 * safezoneH + safezoneY;
			w = 0.080 * safezoneW;
			h = 0.04 * safezoneH;
			color[] = {0.1,0.95,0.1,1};
		};

		class UnlockTeamKillerButton2: w_RscButton
		{
			idc = -1;
			text = "UnTKill";
			onButtonClick = "[4] execVM 'client\systems\adminPanel\playerSelect.sqf'";
			x = 0.6 * safezoneW + safezoneX;
			y = 0.700 * safezoneH + safezoneY;
			w = 0.05 * safezoneW;
			h = 0.04 * safezoneH;
			color[] = {0.1,0.95,0.1,1};
		};
                class UnlockTeamKillerButton: w_RscButton
                {
			idc = -1;
			text = "Set chocos = 1";
			onButtonClick = "[20] execVM 'client\systems\adminPanel\playerSelect.sqf'";
			x = 0.250 * safezoneW + safezoneX;
			y = 0.760 * safezoneH + safezoneY;
			w = 0.080 * safezoneW;
			h = 0.04 * safezoneH;
			color[] = {0.1,0.95,0.1,1};
		};

		class RemoveAllMoneyButton: w_RscButton
		{
			idc = -1;
			text = "Reset Money";
			onButtonClick = "[5] execVM 'client\systems\adminPanel\playerSelect.sqf'";
			x = 0.330 * safezoneW + safezoneX;
			y = 0.730 * safezoneH + safezoneY;
			w = 0.080 * safezoneW;
			h = 0.04 * safezoneH;
			color[] = {0.95,0.1,0.1,1};
		};
                class addMoneyButton: w_RscButton
		{
			idc = -1;
			text = "add 25k$ Money";
			onButtonClick = "[8] execVM 'client\systems\adminPanel\playerSelect.sqf'";
			x = 0.410 * safezoneW + safezoneX;
			y = 0.730 * safezoneH + safezoneY;
			w = 0.080 * safezoneW;
			h = 0.04 * safezoneH;
			color[] = {0.1,0.95,0.1,1};
		};
                  class addMoneyButton11: w_RscButton
		{
			idc = -1;
			text = "add 100k$ Money";
			onButtonClick = "[19] execVM 'client\systems\adminPanel\playerSelect.sqf'";
                        x = 0.65 * safezoneW + safezoneX;
			y = 0.700 * safezoneH + safezoneY;
			w = 0.080 * safezoneW;
			h = 0.04 * safezoneH;
			color[] = {0.1,0.95,0.1,1};
		};
                class telButton: w_RscButton
		{
			idc = -1;
			text = "Slay";
			onButtonClick = "[2] execVM 'client\systems\adminPanel\playerSelect.sqf'";
			x = 0.410 * safezoneW + safezoneX;
			y = 0.760 * safezoneH + safezoneY;
			w = 0.080 * safezoneW;
			h = 0.04 * safezoneH;
			color[] = {0.95,0.1,0.1,1};
		};
		class RemoveAllWeaponsButton: w_RscButton
		{
			idc = -1;
			text = "RA Weapons";
			onButtonClick = "[6] execVM 'client\systems\adminPanel\playerSelect.sqf'";
			x = 0.330 * safezoneW + safezoneX;
			y = 0.760 * safezoneH + safezoneY;
			w = 0.080 * safezoneW;
			h = 0.04 * safezoneH;
			color[] = {0.95,0.1,0.1,1};
		};
                class CheckPlayerGearButton3: w_RscButton
		{
			idc = -1;
			text = "Check Gear";
			onButtonClick = "[7] execVM 'client\systems\adminPanel\playerSelect.sqf'";
			x = 0.485 * safezoneW + safezoneX;
			y = 0.755 * safezoneH + safezoneY;
			w = 0.05 * safezoneW;
			h = 0.04 * safezoneH;
                        color[] = {0.1,0.95,0.1,1};
		};
		class CheckPlayerGearButton4: w_RscButton
		{
			idc = -1;
			text = "Tel player";
			onButtonClick = "[10] execVM 'client\systems\adminPanel\playerSelect.sqf'";
			x = 0.485 * safezoneW + safezoneX;
			y = 0.730 * safezoneH + safezoneY;
			w = 0.05 * safezoneW;
			h = 0.04 * safezoneH;
                        color[] = {0.1,0.95,0.1,1};
		};

		class WarnButton: w_RscButton
		{
			idc = -1;
			text = "give Money ->";
			onButtonClick = "[1] execVM 'client\systems\adminPanel\playerSelect.sqf'";
			x = 0.535 * safezoneW + safezoneX;
			y = 0.750 * safezoneH + safezoneY;
			w = 0.06 * safezoneW;
			h = 0.04 * safezoneH;
		};
	};
};


