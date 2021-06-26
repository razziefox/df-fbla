/// @description Animation

//sets start and end x, making the transition move
start_x = round(start_x - anim_speed);
end_x = round( end_x - anim_speed);

//if end_x is smaller or equal to room_width, then set covered to true
if end_x <= room_width covered = true;

//checks if end_x is smaller or equal to 0
if end_x <= 0 {
	
	//destroys itself
	instance_destroy(self);

	//checks if active from oTimer is true, if so then set running for oTimer to true
	if oTimer.active = true oTimer.running = true;
	
}

//checks if covered is true and past_room is current room
if covered = true and past_room = room {
		
		//checks if goal_room is not noone
		if goal_room != noone {
			
			//go to the goal room
			room_goto(goal_room);		
			
			
		} else room_goto_next();		//otherwise, just go to the next room
	
	}