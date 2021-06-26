/// @description Loads variables

//sets gamepad_id to 1
gamepad_id = 1;

//sets sprites to each state
sprites[sprite_state.idle] = sPlayer_One_idle;
sprites[sprite_state.walk] = sPlayer_One_walk;
sprites[sprite_state.flap] = sPlayer_One_flap;
sprites[sprite_state.fall] = sPlayer_One_fall;
sprites[sprite_state.sit] = sPlayer_One_sit;

//checks if coop is true and oPlayer_Two doesn't exist
if oGame.coop = true and !instance_exists(oPlayer_Two) {

	//create oPlayer_Two
	instance_create_layer(self.x-8, self.y, "Player", oPlayer_Two);

}

//if object is in rIntro, then flip sprite
if (room = rIntro) image_xscale = -1;