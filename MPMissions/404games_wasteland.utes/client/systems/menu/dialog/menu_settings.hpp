#include "menuDefines.sqf"
class menu1d {

    idd = menu_DIALOG;
    movingEnable = false;
    enableSimulation = true;
        class controlsBackground {
                class MainBackground3: w_RscPicture
        {
            idc = picture2;
            text = "\ca\ui\data\ui_logo_main_ca.paa";
                        x = 0.04168 * safezoneW + safezoneX ;
            y = 0.111629 * safezoneH + safezoneY ;
            w = 0.3 * safezoneW; //0.28
            h = 0.3 * safezoneH;
                        
            
        };
                
                   class WastelandHud_Info:w_RscText
        {
            idc = hud_status_idc;
            type = CT_STRUCTURED_TEXT;
            size = 0.040;
            x = safeZoneX + (safeZoneW * (0 + (0.05 / SafeZoneW)));
                        y = safeZoneY + (safeZoneH * (0 + (0.05 / SafeZoneH)));
            w = 0.35; h = 0.22;
            colorText[] = {0,0,1,0.2};
            lineSpacing = 3;
            colorBackground[] = {0,0,0,0};
            text = "";
            shadow = 0;

            class Attributes {
                align = "left";
            };
        };
                 
                class Tax_Info1:w_RscText
        {
            idc = -1;
            type = CT_STRUCTURED_TEXT;
            size = 0.040;
            x = 0.04 * safezoneW + safezoneX;
                        y = 0.01 * safezoneW + safezoneX;
            w = 0.2; h = 0.42;
            colorText[] = {0,0,1,0.2};
            lineSpacing = 1;
            colorBackground[] = {0,0,0,0};
            text = "<t size='1.3'>TAX 0%<t/>";
            shadow = 0.4;
            class Attributes {
                align = "left";
            };
        };
                 class Tax_Info2:w_RscText
        {
            idc = -1;
            type = CT_STRUCTURED_TEXT;
            size = 0.040;
            x = 0.3 * safezoneW + safezoneX;
            y = 0.01 * safezoneW + safezoneX;
                        w = 0.2; h = 0.42;
            colorText[] = {0,0,1,0.2};
            lineSpacing = 1;
            colorBackground[] = {0,0,0,0};
            text = "<t size='1.3'>TAX 100%<t/>";
            shadow = 0.4;
            class Attributes {
                align = "right";
            };
        };
                  class donationinfo_Info:w_RscText
        {
            idc = hud_donationinfo_idc;
            type = CT_STRUCTURED_TEXT;
            size = 0.040;
            x = safeZoneX + (safeZoneW * (1 - (0.65 / SafeZoneW)));
                        y = safeZoneY + (safeZoneH * (0 + (0.1 / SafeZoneH)));
            w = 0.65; h = 0.42;
            colorText[] = {0,0,1,0.2};
            lineSpacing = 1;
            colorBackground[] = {0,0,0,0};
            text = "<t size='1.3'>ServerHost : GhostFenixx<t/>";
            shadow = 0.4;
            class Attributes {
                align = "right";
            };
        };
        class donationinfo_Info2:w_RscText
        {
            idc  = -1;
            type = CT_STRUCTURED_TEXT;
            size = 0.040;
            x    = 0.140313 * safezoneW + safezoneX;
           y = 0.521852 * safezoneH + safezoneY;
            w = 0.65; h = 0.42;
            colorText[] = {0,0,1,0.2};
            lineSpacing = 1;
            colorBackground[] = {0,0,0,0};
            text   = "<t size='1.3'>Spawning Method<t/>";
            shadow = 0.4;
            class Attributes {
                align = "right";
            };
        };
        
    };
    
    class controls {
        ///custom
                  class Aeslider: A_Slider
        {
            idc = -1;
            onButtonClick = "";
            text = "";
                        onSliderPosChanged = "[_this select 1] call chocokingtax;"; 
            x = 0.10313 * safezoneW + safezoneX;
            y = 0.011629 * safezoneH + safezoneY ;
            w = 0.2 * safezoneW;
            h = 0.02 * safezoneH;

        };
                  class loadChopStore: w2_RscButton
        {
            idc =-1;
            onButtonClick = "closeDialog 0; [] execVM 'client\systems\GunStore\loadGunStore.sqf'";
            text = "-> Weapons";

            x = 0.020313 * safezoneW + safezoneX;
            y = 0.036111 * safezoneH + safezoneY;
            w = 0.125 * safezoneW;
            h = 0.07 * safezoneH;

        };
                  class loadgenStore: w2_RscButton
        {
            idc = -1;
            onButtonClick = "closeDialog 0; []execVM 'client\systems\menu\animal.sqf'";
            text = "-> Animal Mode";

            x = 0.220313 * safezoneW + safezoneX;
            y = 0.036111 * safezoneH + safezoneY;
            w = 0.125 * safezoneW;
            h = 0.07 * safezoneH;

        };
                class loadVehStore: w2_RscButton
        {
            idc =-1;
            onButtonClick = "closeDialog 0; [] execVM 'client\systems\vehicleStore\loadVehStore.sqf'";
            text = "-> Vehicles";

            x = 0.120313 * safezoneW + safezoneX;
            y = 0.036111 * safezoneH + safezoneY;
            w = 0.125 * safezoneW;
            h = 0.07 * safezoneH;
        };
                 class loadChopStore3: w2_RscButton
        {
            idc =-1;
            onButtonClick = "closeDialog 0; [] execVM 'client\systems\ChopperStore\loadChopStore.sqf'";
            text = "-> Airplanes";

            x = 0.020313 * safezoneW + safezoneX;
            y = 0.421852 * safezoneH + safezoneY;
            w = 0.125 * safezoneW;
            h = 0.07 * safezoneH;

        };
                 class loadBuildStore: w2_RscButton
        {
            idc = -1;
            onButtonClick = "closeDialog 0; [] execVM 'client\systems\BuildStore\loadBuildStore.sqf'";
            text = "-> Buildings";

            x = 0.120313 * safezoneW + safezoneX;
            y = 0.421852 * safezoneH + safezoneY;
            w = 0.125 * safezoneW;
            h = 0.07 * safezoneH;

        };
                 
                 class loadfunStore2: w2_RscButton
        {
            idc = -1;
            onButtonClick = "closeDialog 0; [] execVM 'client\systems\generalStore\loadGenStore.sqf'";
            text = "-> Choco Generals";

            x = 0.220313 * safezoneW + safezoneX;
            y = 0.421852 * safezoneH + safezoneY;
            w = 0.125 * safezoneW;
            h = 0.07 * safezoneH;

        };
                 class loadfunStore222: w_RscButton
        {
            idc = -1;
            onButtonClick = "closeDialog 0;";
            text = "close";

            x = 0.320313 * safezoneW + safezoneX;
            y = 0.471852 * safezoneH + safezoneY;
            w = 0.03 * safezoneW;
            h = 0.04 * safezoneH;

        };
                class moneyInput: w_RscCombo {
            idc            = player_value2;
            onLBSelChanged = "_this call respawnart ";
           x = 0.220313 * safezoneW + safezoneX;
           y = 0.521852 * safezoneH + safezoneY;
            w = 0.2; h = 0.060;
        };
              
                
    };
};