/// @description Player logic

//combines both left and right to detect movement
moving = (input_left(gamepad_id) || input_right(gamepad_id));
	
	
///Gravity

//applies gravity unless its paused
if ((vspd < 10) and pause = false) vspd += grav;

//limits how much the player falls
if (vspd >= jmpspd) vspd = jmpspd;

//sets hspd to 0 whenever the player stops moving
if !moving hspd = 0; 



//pause the player if oTransition exists
if instance_exists(oTransition) pause = true;
else pause = false;

//if the player is paused, stop players movement and animations
if pause = true {

	//stops player movement
	hspd = 0;
	vspd = 0;
	
	//stops animations
	image_speed = 0;

} 
//if pause isn't true and image_speed hasn't been set to anim_speed, then set image_speed to anim_speed
else image_speed = anim_speed;



///Player input

//checks if action button is pressed and pause is set to false
if (input_a(gamepad_id) and pause = false) {
	
	//checks if flaps is above 0
	if flaps > 0 {
		
		//checks if player is not colliding with oInvisible_Collision, if it doesn't then remove a single flap
		if !place_meeting(x, y+1, oInvisible_Collision) flaps -= 1
		
		//makes the player jump
		vspd = -jmpspd;
		
		//play soundfx sfxFlap
		play_soundfx(sfxFlap);
		
	}
	
}

//checks if the left button is pressed
if (input_left(gamepad_id) and pause = false) {
	
	//moves player to the left
	hspd = (-spd);	
	
	//flips sprite to the left
	image_xscale = -1;	
	
}

//checks if the right button is pressed
if (input_right(gamepad_id) and pause = false) {
	
	//moves player to the right
	hspd = spd;
	
	//flips sprite to the right
	image_xscale = 1;
	
}



///Collisions 

//horizontal collision for oCollision
if (place_meeting(x+hspd,y,oCollision)) {
    while(!place_meeting(x+sign(hspd),y,oCollision)) {
        x += sign(hspd);
		
    }
    hspd = 0;
	
}

x = x + hspd;

//vertical collision for oCollision
if (place_meeting(x,y+vspd,oCollision)) {
	while (!place_meeting(x, y+sign(vspd), oCollision)) {
	
		y += sign(vspd);
	
	}
	
	vspd = 0;
}

y = y + vspd;

//checks if player is colliding with oBlock_disabled
//this fixes a bug with players getting stuck
if place_meeting(x, y, oBlock_disabled) {

	//sets hug_block to true
	hug_block = true;

} else hug_block = false



///Sprite aimation

//checks if player is touching the ground
if (place_meeting(x, y+1, oInvisible_Collision)) {

	//shows dust particle and plays landing sfx
	if ground = false and (!place_meeting(x, y+1, oBlock)) instance_create_layer(x, y-0.3, "Player", oDust);
	if ground = false and (!place_meeting(x, y+1, oBlock)) play_soundfx(sfxLand);
	
	//sets ground to true, and display_flaps to false
	ground = true;
	display_flaps = false;
	
	//if flaps doesn't equal to max_flaps, then set flaps to max_flaps
	if flaps != max_flaps flaps = max_flaps;

} else if (place_meeting(x, y+1, oBlock)) {		//checks if player is colliding with oBlock
	
	//sets ground to true
	ground = true;
	
	//sets display_flaps to true
	display_flaps = true;	
	
} else {
	
	//sets ground to false
	ground = false;
	
	//sets display_flaps to true
	display_flaps = true;
	
}

//checks if the player is touching the ground
if ground = true {

	//checks when the player moves
	if (moving!=0)  {
		
		//set state to walk
		state = sprite_state.walk;
		
	} 
	
	//checks if player presses down while not moving
	else if input_down(gamepad_id) {
		
		//set state to _sit
		state = sprite_state.sit;
		
	} else state = sprite_state.idle		//otherwise, just set the state to idle
	

} else if (vspd < 0) {		//checks if vspd is less then 0
	
	//set state to flap
	state = sprite_state.flap
	
} else state = sprite_state.fall;		//otherwise, set the state to fall


//sets current sprite to sprite_index
if sprite_index != sprites[state] sprite_index = sprites[state]; 