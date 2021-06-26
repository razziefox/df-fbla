//Basic game info
#macro game_rc "m3"					//set release candidate value
#macro game_speed 60					//sets framerate
#macro game_width 320				//sets game width (Not window width)
#macro game_height 180				//sets game height (Not window height)
#macro game_default_scale 3		//sets default game scale

//Sets title bar name
#macro game_title string((game_display_name) + " [" + df_version() + "]")												//sets default title bar name
#macro Release:game_title string((game_display_name) + " [" + df_version() + "]")								//sets release title bar name
#macro Debug:game_title (string(game_display_name) + " [Debug Ver. " + df_version() + "]")			//sets debug title bar name
#macro Preview:game_title (string(game_display_name) + " [Preview Ver. " + df_version() + "]")	//sets preview title bar name

//Sets debug mode
#macro game_debug false							//sets debug mode to false by default
#macro Release:game_debug false			//sets debug mode to false for release
#macro Debug:game_debug true				//sets debug mode to true for debug
#macro Preview:game_debug false			//sets debug mode to false for development
