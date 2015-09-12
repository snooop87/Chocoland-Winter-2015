#include "attachDefines.sqf"

class attachd {

	idd = attach_DIALOG;
	movingEnable = true;
	//enableSimulation = true;
		class controlsBackground {
                class MainBackground2: w_RscPicture
		{
			idc = picture2;
			text = "";
                        x = 0.04168 * safezoneW + safezoneX ;
			y = 0.111629 * safezoneH + safezoneY ;
			w = 0.3 * safezoneW;
			h = 0.3 * safezoneH;
			
		};

		
	};
	class controls {
		///custom
             
		class CancelButton1: w2_RscButton
		{
			idc = -1;
			onButtonClick = "[1] execVM 'client\systems\attach\objectcheck.sqf';";
			text = "MainObjects";

			x = 0.320313 * safezoneW + safezoneX;
			y = 0.621852 * safezoneH + safezoneY;
			w = 0.125 * safezoneW;
			h = 0.07 * safezoneH;
		};
                class CancelButto2: w2_RscButton
		{
			idc = -1;
			onButtonClick = "[2] execVM 'client\systems\attach\objectcheck.sqf';";
			text = "Object 2";

			x = 0.420313 * safezoneW + safezoneX;
			y = 0.621852 * safezoneH + safezoneY;
			w = 0.125 * safezoneW;
			h = 0.07 * safezoneH;
		};
               
                class CancelButto3: w2_RscButton
		{
			idc = -1;
			onButtonClick = "closeDialog 0;[] execVM 'client\systems\attach\buyattach.sqf'";
			text = "attachbuy";

			x = 0.520313 * safezoneW + safezoneX;
			y = 0.621852 * safezoneH + safezoneY;
			w = 0.125 * safezoneW;
			h = 0.07 * safezoneH;
			color[] = {0.95,0.1,0.1,1};
		};
                
                class CancelButton4: w2_RscButton
		{
			idc = -1;
			onButtonClick = "[1] execVM 'client\systems\attach\moderate.sqf'";
			text = "X-up";

			x = 0.520313 * safezoneW + safezoneX;
			y = 0.521852 * safezoneH + safezoneY;
			w = 0.07 * safezoneW;
			h = 0.07 * safezoneH;
			color[] = {0.95,0.1,0.1,1};
		};
                class CancelButton5: w2_RscButton
		{
			idc = -1;
			onButtonClick = "[2] execVM 'client\systems\attach\moderate.sqf'";
			text = "X-down";

			x = 0.570313 * safezoneW + safezoneX;
			y = 0.521852 * safezoneH + safezoneY;
			w = 0.07 * safezoneW;
			h = 0.07 * safezoneH;
			color[] = {0.95,0.1,0.1,1};
		};
                 class CancelButton6: w2_RscButton
		{
			idc = -1;
			onButtonClick = "[3] execVM 'client\systems\attach\moderate.sqf'";
			text = "Y-up";

			x = 0.520313 * safezoneW + safezoneX;
			y = 0.421852 * safezoneH + safezoneY;
			w = 0.07 * safezoneW;
			h = 0.07 * safezoneH;
			color[] = {0.95,0.1,0.1,1};
		};
                class CancelButton7: w2_RscButton
		{
			idc = -1;
			onButtonClick = "[4] execVM 'client\systems\attach\moderate.sqf'";
			text = "Y-down";

			x = 0.570313 * safezoneW + safezoneX;
			y = 0.421852 * safezoneH + safezoneY;
			w = 0.07 * safezoneW;
			h = 0.07 * safezoneH;
			color[] = {0.95,0.1,0.1,1};
		};
                 class CancelButton8: w2_RscButton
		{
			idc = -1;
			onButtonClick = "[5] execVM 'client\systems\attach\moderate.sqf'";
			text = "Z-up";

			x = 0.520313 * safezoneW + safezoneX;
			y = 0.321852 * safezoneH + safezoneY;
			w = 0.07 * safezoneW;
			h = 0.07 * safezoneH;
			color[] = {0.95,0.1,0.1,1};
		};
                class CancelButton9: w2_RscButton
		{
			idc = -1;
			onButtonClick = "[6] execVM 'client\systems\attach\moderate.sqf'";
			text = "Z-down";

			x = 0.570313 * safezoneW + safezoneX;
			y = 0.321852 * safezoneH + safezoneY;
			w = 0.07 * safezoneW;
			h = 0.07 * safezoneH;
			color[] = {0.95,0.1,0.1,1};
		};
                  class CancelButt2on8: w2_RscButton
		{
			idc = -1;
			onButtonClick = "[7] execVM 'client\systems\attach\moderate.sqf'";
			text = "Rotate ->";

			x = 0.520313 * safezoneW + safezoneX;
			y = 0.221852 * safezoneH + safezoneY;
			w = 0.07 * safezoneW;
			h = 0.07 * safezoneH;
			color[] = {0.95,0.5,0.1,1};
		};
                class CancelButto2n9: w2_RscButton
		{
			idc = -1;
			onButtonClick = "[8] execVM 'client\systems\attach\moderate.sqf'";
			text = "Rotate <-";

			x = 0.570313 * safezoneW + safezoneX;
			y = 0.221852 * safezoneH + safezoneY;
			w = 0.07 * safezoneW;
			h = 0.07 * safezoneH;
			color[] = {0.95,0.5,0.1,1};
		};
                   class slider: R_Slider
		{
			idc = -1;
			onButtonClick = "";
			text = "";
                          onSliderPosChanged = "COLORRED=(_this select 1);[] execVM 'client\systems\attach\vehicleManager.sqf';"; 
			x = 0.1 * safezoneW + safezoneX;
			y = 0.01 * safezoneH;
			w = 0.2 * safezoneW;
			h = 0.02 * safezoneH;

		};
                  class sslider: G_Slider
		{
			idc = -1;
			onButtonClick = "";
			text = "";
                          onSliderPosChanged = "COLORGREEN=(_this select 1);[] execVM 'client\systems\attach\vehicleManager.sqf';";  
			x = 0.1 * safezoneW + safezoneX;
			y = 0.03 * safezoneH;
			w = 0.2 * safezoneW;
			h = 0.02 * safezoneH;

		};
                  class eslider: B_Slider
		{
			idc = -1;
			onButtonClick = "";
			text = "";
                        onSliderPosChanged = "COLORBLUE=(_this select 1);[] execVM 'client\systems\attach\vehicleManager.sqf';"; 
			x = 0.1 * safezoneW + safezoneX;
			y = 0.05 * safezoneH;
			w = 0.2 * safezoneW;
			h = 0.02 * safezoneH;

		};
                    class Aeslider: A_Slider
		{
			idc = -1;
			onButtonClick = "";
			text = "";
                        onSliderPosChanged = "COLORALPHA=(_this select 1);[] execVM 'client\systems\attach\vehicleManager.sqf';"; 
			x = 0.1 * safezoneW + safezoneX;
			y = 0.07 * safezoneH;
			w = 0.2 * safezoneW;
			h = 0.02 * safezoneH;

		};
                class xmoneyInput: w_RscCombo {
			idc = menu_texturecount;
                       
			x = 0.1 * safezoneW + safezoneX;
			y = 0.09 * safezoneH + safezoneY;
			w = 0.2; h = 0.060;
		};
                class Skin1VehicleButton: w2_RscButton
		{
			idc = -1;
			onButtonClick = "[1] execVM 'client\systems\attach\vehicleManagerSkin.sqf';";
			text = "Snowy skin";

                         x = -0.09 * safezoneW + safezoneX;
			y = 0.01 * safezoneH;
			w = 0.08 * safezoneW;
			h = 0.07 * safezoneH;
			color[] = {0.95,0.5,0.1,1};
			

		};
                 class Skin1VehicleButton6: w2_RscButton
		{
			idc = -1;
			onButtonClick = "[3] execVM 'client\systems\attach\vehicleManagerSkin.sqf';";
			text = "Rainbow Skin";

                         x = -0.09 * safezoneW + safezoneX;
			y = 0.10 * safezoneH;
			w = 0.08 * safezoneW;
			h = 0.07 * safezoneH;
			color[] = {0.95,0.5,0.1,1};
			

		};
                 class Skin1VehicleButton7: w2_RscButton
		{
			idc = -1;
			onButtonClick = "[4] execVM 'client\systems\attach\vehicleManagerSkin.sqf';";
			text = "Leopard Skin";

                         x = -0.09 * safezoneW + safezoneX;
			y = 0.28 * safezoneH;
			w = 0.08 * safezoneW;
			h = 0.07 * safezoneH;
			color[] = {0.95,0.5,0.1,1};
			

		};
                  class Skin2VehicleButton: w2_RscButton
		{
			idc = -1;
		onButtonClick = "[2] execVM 'client\systems\attach\vehicleManagerSkin.sqf';";
			text = "millitary skin";

                         x = -0.09 * safezoneW + safezoneX;
			y = 0.19 * safezoneH;
			w = 0.08 * safezoneW;
			h = 0.07 * safezoneH;
			color[] = {0.95,0.5,0.1,1};
			

		};
                    class loadbVehicleButton: w2_RscButton
		{
			idc = -1;
			onButtonClick = "SAVECOLOR=[COLORRED,COLORGREEN,COLORBLUE,COLORALPHA];";
			text = "save Color";

                         x = -0.09 * safezoneW + safezoneX;
			y = 0.37 * safezoneH;
			w = 0.07 * safezoneW;
			h = 0.07 * safezoneH;
			color[] = {0.95,0.5,0.1,1};
			

		};
                    class loadb2VehicleButton: w2_RscButton
		{
			idc = -1;
			onButtonClick = "COLORRED = SAVECOLOR select 0;COLORGREEN =SAVECOLOR select 1 ;COLORBLUE =SAVECOLOR select 2;COLORALPHA=SAVECOLOR select 3;[] execVM 'client\systems\attach\vehicleManager.sqf';";
			text = "load Color";

                         x = -0.09 * safezoneW + safezoneX;
			y = 0.46 * safezoneH;
			w = 0.07 * safezoneW;
			h = 0.07 * safezoneH;
			color[] = {0.95,0.5,0.1,1};
			

		};
	};
};