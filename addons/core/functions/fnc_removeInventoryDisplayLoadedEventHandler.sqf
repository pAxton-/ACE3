/*
 * Author: commy2
 *
 * Remove an inventory display opened handler.
 *
 * Argument:
 * 0: ID of the event handler (Number)
 *
 * Return value:
 * None.
 */
#include "\z\ace\addons\core\script_component.hpp"

private ["_id", "_actionsVar", "_currentId", "_actionIDs", "_actions"];

_id = _this select 0;

_actionsVar = missionNamespace getVariable ["ACE_onLoadInventory", [-1, [], []]];

_currentId = _actionsVar select 0;
_actionIDs = _actionsVar select 1;
_actions = _actionsVar select 2;

_id = _actionIDs find _id;

if (_id == -1) exitWith {};

_actionIDs deleteAt _id;
_actions deleteAt _id;

missionNamespace setVariable ["ACE_onLoadInventory", [_currentId, _actionIDs, _actions]];
