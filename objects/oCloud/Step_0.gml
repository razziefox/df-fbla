/// @description Movement

//moves object to the left
x -= spd;

//checks if 0 is bigger then x, if so then set x back to the right side of the screen
if x < 0 x = (room_width + sprite_width)