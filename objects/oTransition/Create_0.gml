/// @description Sets variables

//sets transition length
length = 200

//sets animation speed
anim_speed = 12;

//sets start and end of the object based on the room and length
start_x = room_width;
end_x = start_x + room_width + length;

//sets covered to false, this is if the screen is covered by oTransition
covered = false;

//sets past and goal rooms to false
past_room = noone;
goal_room = noone;

//sets depth to -1000, this will make sure it covers everything
depth = -1000;

//set transition color to c_black
draw_set_colour(c_black);