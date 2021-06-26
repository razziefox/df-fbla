/// @description Initialize Variables
grav = 0.1;											//sets gravity
hspd = 0;												//sets horizontal speed
vspd = 0;												//sets vertical speed
jmpspd = 2.4;										//sets jump height
spd =  1.8;											//sets player speed

max_flaps = 3;									//max amount of times the player can jump, or "flap like a bird"
flaps = max_flaps;								//current amount of times the player can jump
ground = true;									//sets value if player is on the ground
display_flaps = false;						//if true, flaps will display

anim_speed = 0.28;							//sets animation speed
image_index = 0;								//sets sprite frame to 0 (first frame)
image_speed = anim_speed;		//sets animation speed to image_speed

//sets all values to noone
pause = false;
gamepad_id = noone;
hug_block = false;

//sets enum for different sprite states
enum sprite_state {

	idle,
	walk,
	flap,
	fall,
	sit

}

//starts event zero, it loads player info
//this was made as a workaround with how game maker studio 2 handles events.
event_user(0);

//sets current state to idle
state = sprite_state.idle;