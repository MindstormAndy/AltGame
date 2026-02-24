
if (global.found)
{
	if (global.shuffle_buttons)
	{
		prompt = file_grid[# 1, global.enemy_index]
		answer_array[0] = 
		{
			text : file_grid[# 2, global.enemy_index],
			value : prompt_values.great
		};
		answer_array[1] = 
		{
			text : file_grid[# 3, global.enemy_index],
			value : prompt_values.ok
		};
		answer_array[2] = 
		{
			text : file_grid[# 4, global.enemy_index],
			value : prompt_values.bad
		};
		answer_array[3] = 
		{
			text : file_grid[# 5, global.enemy_index],
			value : prompt_values.garbage
		};
		shuffled_array = array_shuffle(answer_array)
		global.shuffle_buttons = false;
		curr_frames = timer_frames;
	}
	
	prompt_font_size_gui = prompt_font_size*gui_scale;
	answer_font_size_gui = answer_font_size*gui_scale;
	timer_ratio = (curr_frames / timer_frames)*1216*gui_scale;
	
	draw_rectangle_colour(0, 0, 1280*gui_scale, 720*gui_scale, c_black, c_black, c_black, c_black, false);
	draw_sprite_stretched(sEnemy01Big, 0, 175*gui_scale, 50*gui_scale, 250*gui_scale, 250*gui_scale);
	draw_rectangle_colour(prompt_x*gui_scale, prompt_y*gui_scale, prompt_x*gui_scale + prompt_width*gui_scale, prompt_y*gui_scale + prompt_height*gui_scale, c_gray, c_gray, c_gray, c_gray, false);
	draw_rectangle_colour(button1x*gui_scale, button1y*gui_scale, button1x*gui_scale + button_width*gui_scale, button1y*gui_scale + button_height*gui_scale, button1c, button1c, button1c, button1c, false);
	draw_rectangle_colour(button2x*gui_scale, button2y*gui_scale, button2x*gui_scale + button_width*gui_scale, button2y*gui_scale + button_height*gui_scale, button2c, button2c, button2c, button2c, false);
	draw_rectangle_colour(button3x*gui_scale, button3y*gui_scale, button3x*gui_scale + button_width*gui_scale, button3y*gui_scale + button_height*gui_scale, button3c, button3c, button3c, button3c, false);
	draw_rectangle_colour(button4x*gui_scale, button4y*gui_scale, button4x*gui_scale + button_width*gui_scale, button4y*gui_scale + button_height*gui_scale, button4c, button4c, button4c, button4c, false);
	draw_rectangle_colour(32*gui_scale, 656*gui_scale, 1248*gui_scale, 698*gui_scale, c_gray, c_gray, c_gray, c_gray, false);
	draw_rectangle_colour(32*gui_scale + (1216-timer_ratio)/2, 656*gui_scale, 32*gui_scale + (1216-timer_ratio)/2 + timer_ratio, 698*gui_scale, c_red, c_red, c_red, c_red, false);
	
	draw_text_ext_transformed(button1x*gui_scale + button_width*gui_scale / 2, button1y*gui_scale + button_height*gui_scale / 2, shuffled_array[0].text, 20, (button_width*gui_scale - 10)/answer_font_size_gui, answer_font_size_gui, answer_font_size_gui, 0);
	draw_text_ext_transformed(button2x*gui_scale + button_width*gui_scale / 2, button2y*gui_scale + button_height*gui_scale / 2, shuffled_array[1].text, 20, (button_width*gui_scale - 10)/answer_font_size_gui, answer_font_size_gui, answer_font_size_gui, 0);
	draw_text_ext_transformed(button3x*gui_scale + button_width*gui_scale / 2, button3y*gui_scale + button_height*gui_scale / 2, shuffled_array[2].text, 20, (button_width*gui_scale - 10)/answer_font_size_gui, answer_font_size_gui, answer_font_size_gui, 0);
	draw_text_ext_transformed(button4x*gui_scale + button_width*gui_scale / 2, button4y*gui_scale + button_height*gui_scale / 2, shuffled_array[3].text, 20, (button_width*gui_scale - 10)/answer_font_size_gui, answer_font_size_gui, answer_font_size_gui, 0);
	draw_text_ext_transformed(prompt_x*gui_scale + prompt_width*gui_scale / 2, prompt_y*gui_scale + prompt_height*gui_scale / 2, prompt, 20, (prompt_width*gui_scale - 10)/prompt_font_size_gui, prompt_font_size_gui, prompt_font_size_gui, 0);
	
	

}
draw_text(32, 630, curr_frames)
draw_rectangle_colour(32, 4, 300, 28, c_black, c_black, c_black, c_black, false)
draw_text_colour(108, 16, "SOCIAL BATTERY:", c_red, c_red, c_red, c_red, 256)
draw_rectangle_colour(180, 12, 280, 20, c_ltgray, c_ltgray, c_ltgray, c_ltgray, false);
draw_rectangle_colour(180, 12, 180 + global.social_battery, 20, c_red, c_red, c_red, c_red, false)