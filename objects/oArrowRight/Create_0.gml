/// @description Sets sprite-related variables and deactivate itself
image_index = 0;		//sets sprite frame to 0 (first frame)
image_speed = 0.1;	//sets animation speed

//deactivate itself after being created
instance_deactivate_object(self);