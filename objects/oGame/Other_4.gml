/// @description When a new room starts

//sets button_active to button_default, button_default is usually set by creation code
button_active = button_default;

//if oPlayer_One exist, set their spawn point
if instance_exists(oPlayer_One) {
	
	respawn_x = oPlayer_One.x
	respawn_y = oPlayer_One.y

}