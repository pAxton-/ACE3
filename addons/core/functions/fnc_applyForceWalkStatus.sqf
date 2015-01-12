/*
Name: FUNC(applyForceWalkStatus)

Author: Pabst Mirror

Description:
  Applys the forceWalk status of an unit. Called from Extended_InitPost_EventHandlers.

Parameters:
  0: OBJECT - Unit

Returns:
  None

Example:
  [ACE_Player] call FUNC(applyForceWalkStatus)
*/
#include "\z\ace\addons\core\script_component.hpp"

private ["_unit", "_forceWalkNumber"];

_unit = _this select 0;
_forceWalkNumber = _unit getVariable ["ACE_forceWalkStatusNumber", 0];

_unit forceWalk (_forceWalkNumber > 0);
