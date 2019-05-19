money = 0;
[] call xat_fnc_signs;
checkentry = [clientOwner, (getPlayerUID player), (name player)];
publicVariableServer "checkentry";
onMapSingleClick "if(_alt) then {vehicle player setPos _pos};";