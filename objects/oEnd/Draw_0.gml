/// @description Draw victory screen! Victory!

//sets text to align in the center
draw_set_halign(fa_center);

//draws the text "Delivered!"
draw_text_colour(room_width/2, 1*(room_height/3), "Delivered!", text_color, text_color, text_color, text_color, 1);

//draws sClock sprite
draw_sprite(sClock, 0, room_width/2-22 , (1.5*(room_height/3))-1.5);

//draws current time that has been received
draw_text_colour(room_width/2+4, 1.5*(room_height/3), "" + string(df_convertTime(oTimer.hours)) + ":" + string(df_convertTime(oTimer.minutes)) + ":" + string(df_convertTime(oTimer.seconds)), text_color, text_color, text_color, text_color, 1);

//draws the text "Press the flap button to restart"
draw_text_colour(room_width/2, 2.5*(room_height/3), "Press the flap button to restart", text_color, text_color, text_color, text_color, 1);