/// @description If player touches oMenu_Selection
if place_meeting(x, y, oPlayer) {

	//if the player chooses multiplayer, then global.coop = true
	if coop = true oGame.coop = true;
	
	//go to rIntro
	goto_room(rIntro);

}
