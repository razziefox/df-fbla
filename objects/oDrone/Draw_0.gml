/// @description Draws drone

//checks if the state is "closed", if so then draw player sprite
if state = drone_state.closed draw_sprite(player_sprite, image_index, x-2, y+6);

//draw drone sprite based on current state
draw_sprite(sprite_index, image_index, x, y);