draw_set_halign(fa_right)
draw_set_valign(fa_middle)

draw_text(1270, 15, global.bubbletext)


// Set alignment of text relative to given x and y positions.
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

// Old health bar (uncomment to see)
//draw_rectangle_colour(32*gui_scale, 4*gui_scale, 300*gui_scale, 28*gui_scale, c_black, c_black, c_black, c_black, false)
//draw_text_colour(108*gui_scale, 16*gui_scale, "SOCIAL BATTERY:", c_red, c_red, c_red, c_red, 256*gui_scale)
//draw_rectangle_colour(180*gui_scale, 12*gui_scale, 280*gui_scale, 20*gui_scale, c_ltgray, c_ltgray, c_ltgray, c_ltgray, false);
//draw_rectangle_colour(180*gui_scale, 12*gui_scale, (180 + global.social_battery)*gui_scale, 20*gui_scale, c_red, c_red, c_red, c_red, false)

// Health Bar

draw_sprite(sHealthBarBackground, 0, healthbar_x, healthbar_y);

if (global.social_battery/social_battery_max) > .5
{
	draw_sprite_stretched(sHealthGreen, 0, healthbar_x, healthbar_y, (global.social_battery/social_battery_max) * healthbar_width, healthbar_height);
	draw_sprite(sHealthBarGoodBorder, 0, healthbar_x, healthbar_y); 
}
else if (global.social_battery/social_battery_max) > .25 and (global.social_battery/social_battery_max) < .5
{
	draw_sprite_stretched(sHealthYellow, 0, healthbar_x, healthbar_y, (global.social_battery/social_battery_max) * healthbar_width, healthbar_height);	
	draw_sprite(sHealthBarMehBorder, 0, healthbar_x, healthbar_y);
}
else
{
	draw_sprite_stretched(sHealthRed, 0, healthbar_x, healthbar_y, (global.social_battery/social_battery_max) * healthbar_width, healthbar_height);
	draw_sprite(sHealthBarBadBorder, 0, healthbar_x, healthbar_y); 
}

	

if (global.alive && !global.game_end)
{
	if (global.found)
	{
		// shuffle_buttons is only true on the first frame of the dialogue screen being open.
		// This ensures that the dialogue options are in a random order but still influence health correctly.
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
		
		// Set the font size based on the size of the screen (which may change during the game)
		prompt_font_size_gui = prompt_font_size*gui_scale;
		answer_font_size_gui = answer_font_size*gui_scale;
		end_font_size_gui = end_font_size*gui_scale;
		
		// timer_ratio keeps track of how wide the timer bar should be.
		timer_ratio = (curr_frames / timer_frames)*1216*gui_scale;
		
		// Black background
		draw_rectangle_colour(0, 0, 1280*gui_scale, 720*gui_scale, c_black, c_black, c_black, c_black, false);
		
		// Large enemy sprite
		draw_sprite_stretched(global.enemy_big, 0, 175*gui_scale, 50*gui_scale, 250*gui_scale, 250*gui_scale);
		
		// Prompt text box
		draw_sprite_stretched(sPromptBox, 0, prompt_x*gui_scale, prompt_y*gui_scale, prompt_width*gui_scale, prompt_height*gui_scale);
		
		// Buttons
		draw_rectangle_colour(button1x*gui_scale, button1y*gui_scale, button1x*gui_scale + button_width*gui_scale, button1y*gui_scale + button_height*gui_scale, button1c, button1c, button1c, button1c, false);
		draw_rectangle_colour(button2x*gui_scale, button2y*gui_scale, button2x*gui_scale + button_width*gui_scale, button2y*gui_scale + button_height*gui_scale, button2c, button2c, button2c, button2c, false);
		draw_rectangle_colour(button3x*gui_scale, button3y*gui_scale, button3x*gui_scale + button_width*gui_scale, button3y*gui_scale + button_height*gui_scale, button3c, button3c, button3c, button3c, false);
		draw_rectangle_colour(button4x*gui_scale, button4y*gui_scale, button4x*gui_scale + button_width*gui_scale, button4y*gui_scale + button_height*gui_scale, button4c, button4c, button4c, button4c, false);
		
		// Timer gray background
		draw_rectangle_colour(32*gui_scale, 656*gui_scale, 1248*gui_scale, 698*gui_scale, c_gray, c_gray, c_gray, c_gray, false);
		
		// Timer size-changing red box
		draw_rectangle_colour(32*gui_scale + (1216-timer_ratio)/2, 656*gui_scale, 32*gui_scale + (1216-timer_ratio)/2 + timer_ratio, 698*gui_scale, c_red, c_red, c_red, c_red, false);

		// Change button sprite whether player is hovering over it or not
		
		if button1c == sButtonClicked
		{
			draw_sprite_stretched(sButtonClicked, 0, button1x*gui_scale, button1y*gui_scale, button_width*gui_scale, button_height*gui_scale);
		}
		else
			draw_sprite_stretched(sButton, 0, button1x*gui_scale, button1y*gui_scale, button_width*gui_scale, button_height*gui_scale)
		if button2c == sButtonClicked
		{
			draw_sprite_stretched(sButtonClicked, 0, button2x*gui_scale, button2y*gui_scale, button_width*gui_scale, button_height*gui_scale)
		}
		else
			draw_sprite_stretched(sButton, 0, button2x*gui_scale, button2y*gui_scale, button_width*gui_scale, button_height*gui_scale)
		if button3c == sButtonClicked
		{
			draw_sprite_stretched(sButtonClicked, 0, button3x*gui_scale, button3y*gui_scale, button_width*gui_scale, button_height*gui_scale)
		}
		else
			draw_sprite_stretched(sButton, 0, button3x*gui_scale, button3y*gui_scale, button_width*gui_scale, button_height*gui_scale)
		if button4c == sButtonClicked
		{
			draw_sprite_stretched(sButtonClicked, 0, button4x*gui_scale, button4y*gui_scale, button_width*gui_scale, button_height*gui_scale)
		}
		else
				draw_sprite_stretched(sButton, 0, button4x*gui_scale, button4y*gui_scale, button_width*gui_scale, button_height*gui_scale)
		

		draw_text_ext_transformed(button1x*gui_scale + button_width*gui_scale / 2, button1y*gui_scale + button_height*gui_scale / 2, shuffled_array[0].text, 20*gui_scale, (button_width*gui_scale - 10)/answer_font_size_gui, answer_font_size_gui, answer_font_size_gui, 0);
		draw_text_ext_transformed(button2x*gui_scale + button_width*gui_scale / 2, button2y*gui_scale + button_height*gui_scale / 2, shuffled_array[1].text, 20*gui_scale, (button_width*gui_scale - 10)/answer_font_size_gui, answer_font_size_gui, answer_font_size_gui, 0);
		draw_text_ext_transformed(button3x*gui_scale + button_width*gui_scale / 2, button3y*gui_scale + button_height*gui_scale / 2, shuffled_array[2].text, 20*gui_scale, (button_width*gui_scale - 10)/answer_font_size_gui, answer_font_size_gui, answer_font_size_gui, 0);
		draw_text_ext_transformed(button4x*gui_scale + button_width*gui_scale / 2, button4y*gui_scale + button_height*gui_scale / 2, shuffled_array[3].text, 20*gui_scale, (button_width*gui_scale - 10)/answer_font_size_gui, answer_font_size_gui, answer_font_size_gui, 0);
		draw_text_ext_transformed(prompt_x*gui_scale + prompt_width*gui_scale / 2, prompt_y*gui_scale + prompt_height*gui_scale / 2, prompt, 20*gui_scale, (prompt_width*gui_scale - 10)/prompt_font_size_gui, prompt_font_size_gui, prompt_font_size_gui, 0);
		
		
	}
}
else if (!global.alive)
{
	// Scenario when social battery runs out
	draw_rectangle_colour(0, 0, 1280*gui_scale, 720*gui_scale, c_black, c_black, c_black, c_black, false);
	draw_text_ext_transformed(640*gui_scale, 360*gui_scale, "You run out of social battery and pass out. The friend who invited you drags you to his car and takes you home. You interacted with " + string(global.num_interacted) + " people.", 20*gui_scale, (1080*gui_scale)/end_font_size_gui, end_font_size_gui, end_font_size_gui, 0);
}
else if (global.game_end)
{
	// Scenario when you reach the end of the last level
	draw_rectangle_colour(0, 0, 1280*gui_scale, 720*gui_scale, c_black, c_black, c_black, c_black, false);
	draw_text_ext_transformed(640*gui_scale, 360*gui_scale, "Finally, you found the friend who invited you right at the front door. You tell him you need to go leave so he drives you home. What a nice guy. You interacted with " + string(global.num_interacted) + " people.", 20*gui_scale, (1080*gui_scale)/end_font_size_gui, end_font_size_gui, end_font_size_gui, 0);

}