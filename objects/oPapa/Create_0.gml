/// @description Decides to destroy itself or not

//checks if random number doesn't matches with 28
if irandom_range(1, 1000) != 28 {

	//destroy itself
	instance_destroy(self);

}