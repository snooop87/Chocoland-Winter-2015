#include "defs_ui.hpp"
#include "defs.hpp"

class balca_debug_main
{	idd = balca_debug_main_IDD;
	name = "balca_debug_main";
	movingEnable = false;
	
	controlsBackground[] = {};
	objects[] = {};
	controls[] = {
				balca_btn_control_group
				};
/////////////
#include "defs_base_control.hpp"
/////////////

	class balca_btn_control_group : balca_debug_control_group {		x = safezoneX; 		w = 1;		y = safezoneY; 		h = 1;

		class Controls {
		//column 1
			class balca_cVeh_btn : balca_debug_btn
			{
				x = 0; w = column_weight-column_div;
				y = 0;
				text = "Create vehicle";
				action = "closeDialog 0;createDialog ""balca_debug_veh_creator"";[0] call c_proving_ground_fnc_create_vehicle"; 
			};

			class balca_cWeap_btn : balca_debug_btn
			{
				x = 0; w = column_weight-column_div;
				y = btn_height*1;
				text = "Get/give weapon";
				action = "closeDialog 0;createDialog ""balca_debug_weap_creator"";[0,0] call c_proving_ground_fnc_create_weapon;"; 
			};

			class balca_inon_btn : balca_debug_btn
			{
				x = 0; w = column_weight-column_div;
				y = btn_height*2;
				text = "Invisible";
				action = "[] execVM 'addons\proving_ground\fnc_inon.sqf'"; 
			};
			
			class balca_speed_btn : balca_debug_btn
			{
				x = 0; w = column_weight-column_div;
				y = btn_height*3;
				text = "speed";
				action = "[] execVM 'addons\proving_ground\fnc_speed.sqf'"; 
			};
			
			
			
			class balca_fun_btn : balca_debug_btn
			{
				x = 0; w = column_weight-column_div;
				y = btn_height*5;
				text = " repair all 100 meter";
				action = "[] execVM 'addons\proving_ground\fnc_repair100.sqf'"; 
			};
			
			class balca_godmode_btn : balca_debug_btn
			{
				x = 0; w = column_weight-column_div;
				y = btn_height*6;
				text = "admin Mode";
				action = "[] execVM 'addons\proving_ground\fnc_godmode.sqf'"; 
			};
			
			
			class balca_teleport_btn : balca_debug_btn
			{
				x = column_weight; w = column_weight-column_div;
				y = btn_height*0;
				text = "admin Teleport";
				action = "hint ""Click on map to teleport"";onMapSingleClick ""vehicle player setPos [_pos select 0,_pos select 1,0]; onMapSingleClick '';""; openMap true; closeDialog 0;"; 
			};
			
			class balca_rearm_btn : balca_debug_btn
			{
				x = column_weight; w = column_weight-column_div;
				y = btn_height*1;
				text = "Flares";
				action = "[] execVM 'addons\proving_ground\fnc_rearm.sqf'"; 
			};
                        
			
			class balca_repair_btn : balca_debug_btn
			{
				x = column_weight; w = column_weight-column_div;
				y = btn_height*2;
				text = "heal /repair / rearm Target";
				action = "cursorTarget setdamage 0;cursortarget setvehicleammo 1;closeDialog 0;"; 
			};

			class balca_sattelite_btn : balca_debug_btn
			{
				x = column_weight; w = column_weight-column_div;
				y = btn_height*3;
				text = "Satellite CAM";
				action = "hint ""Click on map to aim satellite"";onMapSingleClick ""[_pos] call c_proving_ground_fnc_sattelite;onMapSingleClick '';""; openMap true; closeDialog 0;"; 
			};
			
			class balca_dance_btn : balca_debug_btn
			{
				x = column_weight; w = column_weight-column_div;
				y = btn_height*4;
				text = "FLY Toggle";
				action = "[] execVM 'addons\proving_ground\fnc_fly1.sqf'"; 
			};
						
			class balca_dance3_btn : balca_debug_btn
			{
				x = column_weight; w = column_weight-column_div;
				y = btn_height*6;
				text = "Destroy all (30m)";
				action = "[1] execVM 'addons\proving_ground\fnc_destroy30.sqf'"; 
			};
			
			class balca_playershield_btn : balca_debug_btn
			{
				x = column_weight; w = column_weight-column_div;
				y = btn_height*7;
				text = "destroy all (100m)";
				action = "[2] execVM 'addons\proving_ground\fnc_destroy30.sqf'"; 
			};
		    
			class balca_money_btn : balca_debug_btn
			{
				x = column_weight; w = column_weight-column_div;
				y = btn_height*9;
				text = "Spectate";
				action = "[] execVM 'addons\proving_ground\fnc_spectate.sqf'"; 
			};
			
			class balca_sound_btn : balca_debug_btn
			{
				x = column_weight*2; w = column_weight-column_div;
				y = btn_height*0;
				text = "Misterixi Adminplane";
				action = "closeDialog 0;[] execVM 'addons\proving_ground\fnc_yannik1.sqf'"; 
			};

			class balca_stat_btn : balca_debug_btn
			{
				x = column_weight*2; w = column_weight-column_div;
				y = btn_height*1;
				text = "Misterixi Mv22";
				action = "closeDialog 0;[] execVM 'addons\proving_ground\fnc_yannik2.sqf'"; 
			};
			
			class balca_environment_btn : balca_debug_btn
			{
				x = column_weight*2; w = column_weight-column_div;
				y = btn_height*2;
				text = "Environment";
				action = "closeDialog 0;createDialog ""balca_environment"";[0] call c_proving_ground_fnc_environment"; 
			};
			
			class balca_status_btn : balca_debug_btn
			{
				x = column_weight*2; w = column_weight-column_div;
				y = btn_height*3;
				text = "Status display";
				action = "closeDialog 0;call c_proving_ground_fnc_status";
			};
			
			class balca_console_btn : balca_debug_btn
			{
				x = column_weight*2; w = column_weight-column_div;
				y = btn_height*4;
				text = "Console";
				action = "closeDialog 0;createDialog ""balca_debug_console"";[0] call c_proving_ground_fnc_exec_console;"; 
			};

			class balca_reload_btn : balca_debug_btn
			{
				x = column_weight*2; w = column_weight-column_div;
				y = btn_height*5;
				text = "vehicle Mangement";
				action = "closeDialog 0;execVM 'client\systems\adminPanel\vehicleManagement.sqf'"; 
			};

			class balca_BIS_help_btn : balca_debug_btn
			{
				x = column_weight*2; w = column_weight-column_div;
				y = btn_height*7;
				text = "server FPS";
				action = "execVM'addons\proving_ground\fnc_serverfps.sqf';closeDialog 0"; 
			};
                        class balca_BIS_help5_btn : balca_debug_btn
			{
				x = column_weight*2; w = column_weight-column_div;
				y = btn_height*8;
				text = "SAVE DATABASE";
				action = "execVM'addons\proving_ground\fnc_savedatabase.sqf';closeDialog 0"; 
			};
			class balca_close_btn : balca_debug_btn
			{
				x = column_weight*2; w = column_weight-column_div;
				y = btn_height*9;
				text = "Close";
				action = "closeDialog 0;"; 
			};
		};
	};
__onLoad
};

class balca_debug_veh_creator
{
	idd = balca_debug_VC_IDD;
	name = "balca_debug_veh_creator";
	movingEnable = false;
	
	controlsBackground[] = {balca_debug_background};
	objects[] = {};
	controls[] = {
				balca_VC_vehlist,
				balca_VC_vehicle_shortcut,
				balca_VC_veh_info,
				balca_VC_fill_static,
				balca_VC_fill_car,
				balca_VC_fill_truck,
				balca_VC_fill_APC,
				balca_VC_fill_tank,
				balca_VC_fill_helicopter,
				balca_VC_fill_plane,
				balca_VC_fill_ship,
				balca_VC_class_to_clipboard_btn,
				balca_VC_info_to_clipboard_btn,
				//balca_VC_create_veh_core_btn,
				balca_VC_create_veh_player_btn,
				balca_VC_close_btn
				};
/////////////////
	class balca_debug_background
	{
		idc = -1;
		type = CT_STATIC;
		style = ST_PICTURE;
		x = safezoneX-border_offsetX; w = column_weight*3 + border_offsetX*3;
		y = safezoneY-border_offsetY-btn_height*3; h = display_height+border_offsetY*2+btn_height*4;
		colorText[] = {1, 1, 1, 1};
		colorBackground[] = {0,0,0,0};
		text = "\ca\ui\data\ui_gameoptions_background_ca.paa";
		font = "Zeppelin33";
		sizeEx = 0.032;
	};


/////////////
#include "defs_base_control.hpp"
/////////////

	class balca_VC_vehlist : balca_debug_list
	{
		idc = balca_VC_vehlist_IDC;
		x = safezoneX; 
		w = column_weight - column_div;
		y = safezoneY + offset_top*2; 
		h = display_height - offset_bottom*4 - (safezoneY + offset_top*2);
		colorText[] = {1, 1, 1, 1};
		colorBackground[] = {0,0,0,0};
		onLBSelChanged= "[1] call c_proving_ground_fnc_create_vehicle";
		onLBDblClick = "[2] call c_proving_ground_fnc_create_vehicle";
	};

	class balca_VC_vehicle_shortcut : balca_debug_image
	{
		idc = balca_VC_vehicle_shortcut_IDC;
		x = safezoneX + column_weight; 
		w = column_weight - column_div;
		y = safezoneY + offset_top*2;
		h = img_height;
		colorText[] = {1, 1, 1, 1};
		colorBackground[] = {0,0,0,0};
		text = "\ca\ui\data\ui_action_getingunner_ca.paa";
	};

	class balca_VC_veh_info : balca_debug_text
	{
		idc = balca_VC_veh_info_IDC;
		type = CT_STRUCTURED_TEXT+ST_LEFT;
		size = 0.023;
		x = safezoneX + column_weight*2; 
		w = column_weight - column_div;
		y = safezoneY + offset_top*2; 
		h = display_height - offset_bottom*3-(safezoneY + offset_top*2);
		colorText[] = {1, 1, 1, 1};
		colorBackground[] = {0,0,0,0};
		text = "";
	};

	class balca_VC_fill_static : balca_debug_btn
	{
		x = safezoneX + border_offsetX + btn_weight*0; w = btn_weight-column_div;
		y = safezoneY - btn_height;
		text = "Static";
		action = "[0,0] call c_proving_ground_fnc_create_vehicle"; 
	};

	class balca_VC_fill_car : balca_debug_btn
	{
		x = safezoneX + border_offsetX + btn_weight*0; w = btn_weight-column_div;
		y = safezoneY;
		text = "Car";
		action = "[0,1] call c_proving_ground_fnc_create_vehicle"; 
	};

	class balca_VC_fill_truck : balca_debug_btn
	{
		x = safezoneX + border_offsetX + btn_weight*1; w = btn_weight-column_div;
		y = safezoneY - btn_height;
		text = "Truck";
		action = "[0,2] call c_proving_ground_fnc_create_vehicle"; 
	};

	class balca_VC_fill_APC : balca_debug_btn
	{
		x = safezoneX + border_offsetX + btn_weight*1; w = btn_weight-column_div;
		y = safezoneY;
		text = "APC";
		action = "[0,3] call c_proving_ground_fnc_create_vehicle"; 
	};

	class balca_VC_fill_tank : balca_debug_btn
	{
		x = safezoneX + border_offsetX + btn_weight*2; w = btn_weight-column_div;
		y = safezoneY - btn_height;
		text = "Tank";
		action = "[0,4] call c_proving_ground_fnc_create_vehicle"; 
	};

	class balca_VC_fill_helicopter : balca_debug_btn
	{
		x = safezoneX + border_offsetX + btn_weight*2; w = btn_weight-column_div;
		y = safezoneY;
		text = "Chopper";
		action = "[0,5] call c_proving_ground_fnc_create_vehicle"; 
	};

	class balca_VC_fill_plane : balca_debug_btn
	{
		x = safezoneX + border_offsetX + btn_weight*3; w = btn_weight-column_div;
		y = safezoneY - btn_height;
		text = "Plane";
		action = "[0,6] call c_proving_ground_fnc_create_vehicle"; 
	};

	class balca_VC_fill_ship : balca_debug_btn
	{
		x = safezoneX + border_offsetX + btn_weight*3; w = btn_weight-column_div;
		y = safezoneY;
		text = "Ship";
		action = "[0,7] call c_proving_ground_fnc_create_vehicle"; 
	};

	class balca_VC_class_to_clipboard_btn : balca_debug_btn
	{
		x = safezoneX; w = column_weight-column_div;
		y = display_height-safezoneY- offset_bottom-btn_height;
		text = "Class to clipboard";
		action = "[4] call c_proving_ground_fnc_create_vehicle"; 
	};

	class balca_VC_info_to_clipboard_btn : balca_debug_btn
	{
		x = safezoneX+column_weight*2; w = column_weight-column_div;
		y = display_height-safezoneY- offset_bottom-btn_height;
		text = "Info to clipboard";
		action = "[5] call c_proving_ground_fnc_create_vehicle"; 
	};


	class balca_VC_create_veh_player_btn : balca_debug_btn
	{
		x = safezoneX+column_weight; w = column_weight-column_div;
		y = safezoneY + offset_top*2+img_height + btn_height;
		text = "Create at player";
		action = "[3] call c_proving_ground_fnc_create_vehicle"; 
	};

	class balca_VC_close_btn : balca_debug_btn
	{
		x = safezoneX+column_weight*2; w = btn_weight;
		y = display_height-safezoneY- offset_bottom;
		text = "Close";
		action = "closeDialog 0;"; 
	};
};

class balca_debug_weap_creator
{
	idd = balca_debug_WC_IDD;
	name = "balca_debug_weap_creator";
	movingEnable = false;
	
	controlsBackground[] = {balca_debug_background};
	objects[] = {};
	controls[] = {
				balca_WC_weaplist,
				balca_WC_magazinelist,
				balca_WC_weapon_shortcut,
				balca_WC_weap_info,
				balca_WC_magazine_info,
				balca_WC_fill_rifles,
				balca_WC_fill_scoped_rifles,
				balca_WC_fill_heavy,
				balca_WC_fill_launchers,
				balca_WC_fill_pistols,
				balca_WC_fill_grenades,
				balca_WC_fill_binocular,
				balca_WC_fill_items,
				balca_WC_weap_to_clipboard_btn,
				balca_WC_ammo_to_clipboard_btn,
				balca_WC_create_weap_btn,
				balca_WC_create_magazine_btn,
				balca_WC_clear_magazines_btn,
				balca_WC_close_btn
				};
/////////////////
	class balca_debug_background
	{
		idc = -1;
		type = CT_STATIC;
		style = ST_PICTURE;
		x = safezoneX-border_offsetX; w = column_weight*3 + border_offsetX*3;
		y = safezoneY-border_offsetY-btn_height*3; h = display_height+border_offsetY*2+btn_height*4;
		colorText[] = {1, 1, 1, 1};
		colorBackground[] = {0,0,0,0};
		text = "\ca\ui\data\ui_gameoptions_background_ca.paa";
		font = "Zeppelin33";
		sizeEx = 0.032;
	};


/////////////
#include "defs_base_control.hpp"
/////////////

	class balca_WC_weaplist : balca_debug_list
	{
		idc = balca_WC_weaplist_IDC;
		x = safezoneX; 
		w = column_weight - column_div;
		y = safezoneY + offset_top*2; 
		h = display_height - offset_bottom*4 - (safezoneY + offset_top*2);
		colorText[] = {1, 1, 1, 1};
		colorBackground[] = {0,0,0,0};
		onLBSelChanged= "[1] call c_proving_ground_fnc_create_weapon;";
		onLBDblClick = "[2] call c_proving_ground_fnc_create_weapon;";
	};

	class balca_WC_magazinelist : balca_debug_list
	{
		idc = balca_WC_magazinelist_IDC;
		x = safezoneX + column_weight; 
		w = column_weight - column_div;
		y = safezoneY + offset_top*2 + img_height_wc; 
		h = display_height - offset_bottom*4 - img_height_wc-(safezoneY + offset_top*2);
		colorText[] = {1, 1, 1, 1};
		colorBackground[] = {0,0,0,0};
		onLBSelChanged= "[3] call c_proving_ground_fnc_create_weapon;";
		onLBDblClick = "[4] call c_proving_ground_fnc_create_weapon;";
	};

	class balca_WC_weapon_shortcut : balca_debug_image
	{
		idc = balca_WC_weapon_shortcut_IDC;
		x = safezoneX + column_weight; 
		w = column_weight - column_div;
		y = safezoneY + offset_top*2;
		h = img_height_wc;
		colorText[] = {1, 1, 1, 1};
		colorBackground[] = {0,0,0,0};
		text = "";
	};

	class balca_WC_weap_info : balca_debug_text
	{
		idc = balca_WC_weap_info_IDC;
		type = CT_STRUCTURED_TEXT+ST_LEFT;
		size = 0.023;
		x = safezoneX + column_weight*2; 
		w = column_weight - column_div;
		y = safezoneY + offset_top*2;
		h = img_height_wc;
		colorText[] = {1, 1, 1, 1};
		colorBackground[] = {0,0,0,0};
		text = "";
	};

	class balca_WC_magazine_info : balca_debug_text
	{
		idc = balca_WC_magazine_info_IDC;
		type = CT_STRUCTURED_TEXT;
		size = 0.023;
		x = safezoneX + column_weight*2; 
		w = column_weight - column_div;
		y = safezoneY + offset_top*2 + img_height_wc; 
		h = display_height - offset_bottom*4 - img_height_wc-(safezoneY + offset_top*2);
		colorText[] = {1, 1, 1, 1};
		colorBackground[] = {0,0,0,0};
		text = "";
	};

	class balca_WC_fill_rifles : balca_debug_btn
	{
		x = safezoneX + border_offsetX + btn_weight*0; w = btn_weight-column_div;
		y = safezoneY - btn_height;
		text = "Rifles";
		action = "[0,0] call c_proving_ground_fnc_create_weapon;"; 
	};

	class balca_WC_fill_scoped_rifles : balca_debug_btn
	{
		x = safezoneX + border_offsetX + btn_weight*0; w = btn_weight-column_div;
		y = safezoneY;
		text = "Scoped";
		action = "[0,1] call c_proving_ground_fnc_create_weapon;"; 
	};

	class balca_WC_fill_heavy : balca_debug_btn
	{
		x = safezoneX + border_offsetX + btn_weight*1; w = btn_weight-column_div;
		y = safezoneY - btn_height;
		text = "Heavy";
		action = "[0,2] call c_proving_ground_fnc_create_weapon;"; 
	};

	class balca_WC_fill_launchers : balca_debug_btn
	{
		x = safezoneX + border_offsetX + btn_weight*1; w = btn_weight-column_div;
		y = safezoneY;
		text = "Launchers ";
		action = "[0,3] call c_proving_ground_fnc_create_weapon;"; 
	};

	class balca_WC_fill_pistols : balca_debug_btn
	{
		x = safezoneX + border_offsetX + btn_weight*2; w = btn_weight-column_div;
		y = safezoneY - btn_height;
		text = "Pistols";
		action = "[0,4] call c_proving_ground_fnc_create_weapon;"; 
	};

	class balca_WC_fill_grenades : balca_debug_btn
	{
		x = safezoneX + border_offsetX + btn_weight*2; w = btn_weight-column_div;
		y = safezoneY;
		text = "Grenades";
		action = "[0,5] call c_proving_ground_fnc_create_weapon;"; 
	};

	class balca_WC_fill_binocular : balca_debug_btn
	{
		x = safezoneX + border_offsetX + btn_weight*3; w = btn_weight-column_div;
		y = safezoneY - btn_height;
		text = "Binoculars";
		action = "[0,6] call c_proving_ground_fnc_create_weapon;"; 
	};

	class balca_WC_fill_items : balca_debug_btn
	{
		x = safezoneX + border_offsetX + btn_weight*3; w = btn_weight-column_div;
		y = safezoneY;
		text = "Items";
		action = "[0,7] call c_proving_ground_fnc_create_weapon;"; 
	};

	class balca_WC_weap_to_clipboard_btn : balca_debug_btn
	{
		x = safezoneX; w = column_weight-column_div;
		y = display_height-safezoneY- offset_bottom-btn_height;
		text = "give Player Weapon";
		action = "[5] call c_proving_ground_fnc_create_weapon;"; 
	};

	class balca_WC_ammo_to_clipboard_btn : balca_debug_btn
	{
		x = safezoneX+column_weight; w = column_weight-column_div;
		y = display_height-safezoneY- offset_bottom-btn_height;
		text = "Ammo to Player";
		action = "[6] call c_proving_ground_fnc_create_weapon;"; 
	};

	class balca_WC_create_weap_btn : balca_debug_btn
	{
		x = safezoneX; w = column_weight-column_div;
		y = display_height-safezoneY- offset_bottom;
		text = "Get weapon";
		action = "[2] call c_proving_ground_fnc_create_weapon;"; 
	};

	class balca_WC_create_magazine_btn : balca_debug_btn
	{
		x = safezoneX+column_weight; w = column_weight-column_div;
		y = display_height-safezoneY- offset_bottom;
		text = "Get magazine";
		action = "[4] call c_proving_ground_fnc_create_weapon;"; 
	};

	class balca_WC_clear_magazines_btn : balca_debug_btn
	{
		x = safezoneX+column_weight*2; w = column_weight-column_div;
		y = display_height-safezoneY-offset_bottom-btn_height;
		text = "Clear magazines";
		action = "c_proving_ground_MAGS = [];{player removeMagazine _x} forEach (magazines player);"; 
	};

	class balca_WC_close_btn : balca_debug_btn
	{
		x = safezoneX+column_weight*2; w = btn_weight;
		y = display_height-safezoneY- offset_bottom;
		text = "Close";
		action = "closeDialog 0;"; 
	};
};

class balca_debug_console
{
	idd = balca_debug_console_IDD;
	name = "balca_debug_console";
	movingEnable = false;
	
	controlsBackground[] = {balca_debug_background};
	objects[] = {};
	controls[] = {
				balca_debug_console_edit,
				balca_debug_console_result,
				balca_debug_console_history,
				balca_debug_console_control_group,
				};

	onKeyDown = "if((_this select 1) in [28,156]) then {[1] call c_proving_ground_fnc_exec_console;}; false";
/////////////////
	class balca_debug_background
	{
		idc = -1;
		type = CT_STATIC;
		style = ST_PICTURE;
		x = safezoneX-border_offsetX; w = column_weight*3 + border_offsetX*4;
		y = safezoneY-border_offsetY; h = display_height+border_offsetY*2;
		colorText[] = {1, 1, 1, 1};
		colorBackground[] = {0,0,0,0};
		text = "\ca\ui\data\ui_gameoptions_background_ca.paa";
		font = "Zeppelin33";
		sizeEx = 0.032;
	};


/////////////
#include "defs_base_control.hpp"
/////////////

	class balca_debug_console_edit : balca_debug_edit
	{
		idc = balca_debug_console_edit_IDC;
		x = safezoneX; w = column_weight*3;
		y = safezoneY + offset_top*2; h = str_height*3;
		text = "enter command here";
	};

	class balca_debug_console_result : balca_debug_edit
	{
		idc = balca_debug_console_result_IDC;
		x = safezoneX; 
		w = column_weight*3;
		y = safezoneY + offset_top*2 + str_height*3;
		h = str_height*2;
		text = "";
	};

	class balca_debug_console_history : balca_debug_list
	{
		idc = balca_debug_console_history_IDC;
		x = safezoneX; 
		w = column_weight*3;
		y = safezoneY + offset_top*2 + str_height*5; 
		h = display_height - offset_bottom*4 - str_height*5 - (safezoneY + offset_top*2);
		colorText[] = {1, 1, 1, 1};
		colorBackground[] = {0,0,0,0};
		onLBSelChanged= "[2] call c_proving_ground_fnc_exec_console;";
		onLBDblClick = "[3] call c_proving_ground_fnc_exec_console;";
	};

	class balca_debug_console_control_group : balca_debug_control_group {
		x = safezoneX; 
		w = 1;
		y = display_height-safezoneY- offset_bottom-btn_height; 
		h = str_height*4;
		class Controls {
			class balca_debug_console_exec_btn : balca_debug_btn
			{
				x = 0; w = column_weight-column_div;
				y = 0;
				text = "Execute";
				action = "[1] call c_proving_ground_fnc_exec_console;"; 
			};

			class balca_debug_console_exec_global_btn : balca_debug_btn
			{
				x = column_weight; w = column_weight-column_div;
				y = 0;
				text = "Exec global";
				action = "[4] call c_proving_ground_fnc_exec_console;"; 
			};

			class balca_debug_console_exec_server_btn : balca_debug_btn
			{
				x = column_weight*2; w = column_weight-column_div;
				y = 0;
				text = "Exec on server";
				action = "[5] call c_proving_ground_fnc_exec_console;"; 
			};

			class balca_debug_console_run_tracker_btn : balca_debug_btn
			{
				x = column_weight*0; w = column_weight-column_div;
				y = btn_height;
				text = "Run tracker";
				action = "[6] call c_proving_ground_fnc_exec_console;"; 
			};

			class balca_debug_console_stop_tracker_btn : balca_debug_btn
			{
				x = column_weight*1; w = column_weight-column_div;
				y = btn_height;
				text = "Stop tracker";
				action = "[7] call c_proving_ground_fnc_exec_console;"; 
			};

			class balca_debug_console_close_btn : balca_debug_btn
			{
				x = column_weight*2; w = btn_weight;
				y = btn_height;
				text = "Close";
				action = "closeDialog 0;"; 
			};
		};
	};
};
class balca_environment
{
	idd = balca_environment_IDD;
	name = "balca_environment";
	movingEnable = false;
	
	controlsBackground[] = {balca_debug_background};
	objects[] = {};
	controls[] = {
				balca_env_control_group,
				balca_apply_btn
				};
/////////////////
	class balca_debug_background
	{
		idc = -1;
		type = CT_STATIC;
		style = ST_PICTURE;
		x = safezoneX-border_offsetX; w = column_weight*1 + border_offsetX*3;
		y = safezoneY-border_offsetY; h = display_height+border_offsetY*2+btn_height*1;
		colorText[] = {1, 1, 1, 1};
		colorBackground[] = {0,0,0,0};
		text = "\ca\ui\data\ui_gameoptions_background_ca.paa";
		font = "Zeppelin33";
		sizeEx = 0.032;
	};


/////////////
#include "defs_base_control.hpp"
/////////////

	class balca_env_control_group : balca_debug_control_group {
		x = safezoneX+column_weight*0; 
		w = 1;
		y = safezoneY + offset_top*2; 
		h = display_height - offset_bottom*4 - (safezoneY + offset_top*2);
		
		class Controls {

			class balca_env_VD_desc : balca_debug_text
			{
				x = 0; 
				w = column_weight/2-column_div;
				y = btn_height*1; 
				h = str_height;
				text = "Viewdistance";
			};

			class balca_env_VD : balca_debug_edit
			{
				idc = balca_env_VD_IDC;
				x = column_weight*0.5; 
				w = column_weight/2-column_div;
				y = btn_height*1; 
				h = str_height;
				text = "--";
			};

			class balca_env_grass_desc : balca_debug_text
			{
				x = 0; 
				w = column_weight/2-column_div;
				y = btn_height*2; 
				h = str_height;
				text = "Grass";
			};

			class balca_env_grass : balca_debug_edit
			{
				idc = balca_env_grass_IDC;
				x = column_weight*0.5; 
				w = column_weight/2-column_div;
				y = btn_height*2; 
				h = str_height;
				text = "--";
			};

			class balca_env_fog_desc : balca_debug_text
			{
				x = 0; 
				w = column_weight/2-column_div;
				y = btn_height*3; 
				h = str_height;
				text = "Fog";
			};

			class balca_env_fog : balca_debug_edit
			{
				idc = balca_env_fog_IDC;
				x = column_weight*0.5; 
				w = column_weight/2-column_div;
				y = btn_height*3; 
				h = str_height;
				text = "--";
			};

			class balca_env_overcast_desc : balca_debug_text
			{
				x = 0; 
				w = column_weight/2-column_div;
				y = btn_height*4; 
				h = str_height;
				text = "Overcast";
			};

			class balca_env_overcast : balca_debug_edit
			{
				idc = balca_env_overcast_IDC;
				x = column_weight*0.5; 
				w = column_weight/2-column_div;
				y = btn_height*4; 
				h = str_height;
				text = "--";
			};

			class balca_env_rain_desc : balca_debug_text
			{
				x = 0; 
				w = column_weight/2-column_div;
				y = btn_height*5; 
				h = str_height;
				text = "Rain";
			};

			class balca_env_rain : balca_debug_edit
			{
				idc = balca_env_rain_IDC;
				x = column_weight*0.5; 
				w = column_weight/2-column_div;
				y = btn_height*5; 
				h = str_height;
				text = "--";
			};

			class balca_env_wind_desc : balca_debug_text
			{
				x = 0; 
				w = column_weight/2-column_div;
				y = btn_height*6; 
				h = str_height;
				text = "Wind speed";
			};

			class balca_env_wind : balca_debug_edit
			{
				idc = balca_env_wind_IDC;
				x = column_weight*0.5; 
				w = column_weight/2-column_div;
				y = btn_height*6; 
				h = str_height;
				text = "--";
			};

			class balca_env_wind_dir_desc : balca_debug_text
			{
				x = 0; 
				w = column_weight/2-column_div;
				y = btn_height*7; 
				h = str_height;
				text = "Wind direction";
			};

			class balca_env_wind_dir : balca_debug_edit
			{
				idc = balca_env_wind_dir_IDC;
				x = column_weight*0.5; 
				w = column_weight/2-column_div;
				y = btn_height*7; 
				h = str_height;
				text = "--";
			};
		};
	};

	class balca_apply_btn : balca_debug_btn
	{
		x = safezoneX; w = column_weight-column_div;
		y = display_height-safezoneY- offset_bottom;
		text = "Apply";
		action = "[1] call c_proving_ground_fnc_environment;"; 
	};
};