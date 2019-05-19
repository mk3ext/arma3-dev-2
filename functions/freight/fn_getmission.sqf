_uid = (_this select 0);
_signpos = (_this select 1);

_inidbi = ["new", _uid] call OO_INIDBI;

[_uid, _signpos] call xat_fnc_startmission;
