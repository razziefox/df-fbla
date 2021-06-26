/// @description Loads variables

//sets gamepad_id to 1
gamepad_id = 2;

//sets sprites to each state
sprites[sprite_state.idle] = sPlayer_Two_idle;
sprites[sprite_state.walk] = sPlayer_Two_walk;
sprites[sprite_state.flap] = sPlayer_Two_flap;
sprites[sprite_state.fall] = sPlayer_Two_fall;
sprites[sprite_state.sit] = sPlayer_Two_sit;

//if object is in rIntro
if room = rIntro {

	//flip sprite
	image_xscale = -1
	
	//move to the right by 8 pixels
	x = oPlayer_One.x+8

}