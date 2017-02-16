#include <\x\alive\addons\sys_civ_interaction\script_component.hpp>
SCRIPT(civilianInteractionAddAction);

/* ----------------------------------------------------------------------------
Function: ALiVE_fnc_civilianInteractionAddAction

Description:
Adds interaction action to civilians

Parameters:

Returns:
Bool - true

Examples:
(begin example)
//
_result = _unit call ALiVE_fnc_civilianInteractionAddAction;
(end)

See Also:

Author:
SpyderBlack723
---------------------------------------------------------------------------- */

params ["_unit"];

// only add actions if civilian roles module field != none
systemchat str (!isnil QGVAR(ROLES_DISABLED));
if (side _unit == CIVILIAN && {!isnil QGVAR(ROLES_DISABLED)} && {!GVAR(ROLES_DISABLED)}) then {

    private _id = _unit addAction [
        "Talk to civilian",
        "['openInterface', _this] call ALiVE_fnc_civInteractionOnAction",
        nil,
        1,
        false,
        true,
        "",
        "alive _target"
    ];

};

true