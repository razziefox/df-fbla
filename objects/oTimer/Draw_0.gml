/// @description Draws timer

//sets text to align the left side
draw_set_halign(fa_left);

//draws sClock sprite
draw_sprite(sClock, 0, 6, base_y);

//draws amount of time currently
draw_text_colour(15.5,  base_y+1.5, string(df_convertTime(hours)) + ":" + string(df_convertTime(minutes)) + ":" + string(df_convertTime(seconds)), text_color, text_color, text_color, text_color, 1);