/// @description Insert description here

//checks if button_active from oGame is set to button_id
//if it does match, then change object to block_disabled
if oGame.button_active != button_id instance_change(block_disabled, true);