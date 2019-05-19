_vehicleindex = (_this select 0);
_desindex = (_this select 1);
_cargoindex = (_this select 2);

_selectedvehicle = lbData [1500, _vehicleindex];
_heliweight = (_vehicleindex + 1)*10;
_selecteddesination = lbText [1700, _desindex];
_selectedcargo = lbText [1800, _cargoindex];
_selecteddesinationloc = lbData [1700, _desindex];
_cargoweight = 0;
switch (_selecteddesination) do {
	case "Kavala Air Garage": {loc = getPos signfour;siign = signfour};
	case "Molos Airfield": {loc = getPos signthree;siign = signthree};
	case "Athira Airport": {loc = getPos signtwo;siign = signtwo};
	case "Therisa Airfield": {loc = getPos signone;siign = signone};
};
switch (_selectedcargo) do {
	case "Apples": {_cargoweight = 1;_price = 1};
	case "Peaches": {_cargoweight = 2;_price = 2};
	case "Beer": {_cargoweight = 4;_price = 4};
	case "Whiskey": {_cargoweight = 6;_price = 6};
};


_inidbi = ["new", (getPlayerUID player)] call OO_INIDBI;
_currentmission = ["read", ["Mission", "Distance", 0]] call _inidbi;
if (!(_currentmission isEqualTo 0)) exitWith {
	hint "Complete your mission first.";
};

siign addAction ["Complete Mission",
{
	_uid = getPlayerUID player;

	null = [_uid, loc, siign] call xat_fnc_completemission;
}];
payment = round((((getPos player) distance loc) / 1.15)*round(((_vehicleindex + 1)*10) / _cargoweight));
["write",["Mission", "Payment", payment]] call _inidbi;
["write",["Mission", "Distance", 1]] call _inidbi;

hint format ["Make your way to %1", _selecteddesination];
