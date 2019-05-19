"checkentry" addPublicVariableEventHandler {

	private ["_data"];
	_data = (_this select 1);
	_id = (_data select 0);
	_uid = (_data select 1);
	_playername = (_data select 2);

	_inidbi = ["new", _uid] call OO_INIDBI;
	_fileExist = "exists" call _inidbi;

	if (_fileExist) then {

		//nothing
	} else {

		null = [_id, _uid, _playername] call xat_fnc_createdb;
	};
};