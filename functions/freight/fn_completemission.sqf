_uid = (_this select 0);
_signpos = (_this select 1);

_inidbi = ["new", _uid] call OO_INIDBI;

_money = ["read", ["Info", "Money", 0]] call _inidbi;
_payment = ["read", ["Mission", "Payment", 0]] call _inidbi;

siign removeAction 1;
_newmoney = _money + _payment;
["write",["Info", "Money", (_newmoney)]] call _inidbi;
["write",["Mission", "Distance", 0]] call _inidbi;
["write",["Mission", "Payment", 0]] call _inidbi;
hint format ["Completed mission, you have earnt £%1", _newmoney];