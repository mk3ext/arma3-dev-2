_id = (_this select 0);
_uid = (_this select 1);
_playername = (_this select 2);

_inidbi = ["new", _uid] call OO_INIDBI;

["write",["Info", "Name", _playername]] call _inidbi;
["write",["Info", "Money", 0]] call _inidbi;

["write",["Mission", "Distance", 0]] call _inidbi;
["write",["Mission", "Payment", 0]] call _inidbi;
