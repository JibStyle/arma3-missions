params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];

private _damage = isDamageAllowed _newUnit;
_newUnit allowDamage false;
uiSleep 10;
_newUnit allowDamage _damage;
