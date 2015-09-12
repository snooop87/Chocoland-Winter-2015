#include "player_sys.sqf"

class playerSettings2 {

	idd = playersys_DIALOG;
	movingEnable = true;
	enableSimulation = true;
	onLoad = "[] execVM 'client\systems\playerMenu\item_list.sqf'";
	
	class controlsBackground {class MainBG : w_RscPicture {
			idc = -1;
			text = "ui_background_controlers_ca.paa";		
			moving = true;
			x = 0.0; y = 0.1;
			w = 1.0; h = 0.65;};
                        class MainTitle : w_RscText {
			idc = -1;
			text = "heavensdelight.de";
			sizeEx = 0.04;
			shadow = 2;		
			x = 0.260; y = 0.112;
			w = 0.3; h = 0.05;
		};
                };
	
	class controls {
	class CloseButton1 : w_RscButton {
			text = "Close";
			onButtonClick = "closeDialog 0;";
			x = 0.02; y = 0.68;
			w = 0.125; h = 0.046 * safezoneH;
			color[] = {0.95,0.1,0.1,1};
		};
        class btnflipvehicle1 : w_RscButton {
		
	text = "Flip Vehicle";
			onButtonClick = "[] execVM 'client\systems\playerMenu\flipvehicle.sqf'";
			
			x = 0.160; y = 0.18;
			w = 0.225; h = 0.046 * safezoneH;
		};
                class btnflipvehicle41 : w_RscButton {
		
			text = "fix PickupMoney";
			onButtonClick = "[] execVM 'client\systems\playerMenu\fixmoney.sqf';closeDialog 0;";
            		x = 0.160; y = 0.28;
			w = 0.225; h = 0.046 * safezoneH;
		};
           
                class btnflipvehicle1121 : w_RscButton {
		
			text = "BACK TO PLAYERMENU";
			onButtonClick = "closeDialog 0;_playerDialog = createDialog 'playerSettings';";
            		x = 0; y = 0.12;
			w = 0.225; h = 0.046 * safezoneH;
		};
                 
             
                class SafeButton11 : w_RscButton {
			
			text = "unSet My HOME";
			onButtonClick = "home = false;closeDialog 0;";
			x = 0.160; y = 0.54;
			w = 0.325; h = 0.046 * safezoneH;
		};
                class SafeButton111 : w_RscButton {
		
			text = "Copy Server IP to Clipboard";
			onButtonClick = "[2] execVM 'client\systems\playerMenu\copy2clip.sqf';closeDialog 0;";
			x = 0.160; y = 0.44;
			w = 0.325; h = 0.046 * safezoneH;
		};
                 class SafeButton1121 : w_RscButton {
                            
			text = "Destroy Me";
			onButtonClick = "player setdamage 1;closeDialog 0;";
			x = 0.160; y = 0.34;
			w = 0.325; h = 0.046 * safezoneH;
		};
	};

};