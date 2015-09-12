if(chatint > 0)exitwith{};
chatint= chatint +1;
#include "dialog\menuDefines.sqf"
disableSerialization;
_dialog = findDisplay global_DIALOG;
_warnMessage = _dialog displayCtrl globalMessage;
_warnMessage = ctrlText _warnMessage;
if(_warnMessage == "")exitwith{sleep 2;
 chatint = chatint -1;};
systemChat format["%1: %2", name player,_warnMessage];
        call compile format["
        CONFIGchocostring = ""systemChat """"%1: %2"""";"";
", name player, _warnMessage];
	 chocostring = CONFIGchocostring;
 publicvariable"chocoString";
closedialog 0;chat = false;
 sleep 2;
 chatint = chatint -1;

	