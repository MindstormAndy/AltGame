if (global.alive && global.social_battery <= 0)
{
	global.alive = false;
	global.doQuiz = false;
}

if (global.found && !global.shuffle_buttons && global.alive)
{
	mouse_gui_x = device_mouse_x_to_gui(0)
	mouse_gui_y = device_mouse_y_to_gui(0)

	if (curr_frames == 0)
	{
		global.found = false;
		global.doQuiz = false;
		global.num_interacted++;
		UpdateBattery(prompt_values.nothing);
		alarm[0] = 180;
	}
	if (point_in_rectangle(mouse_gui_x, mouse_gui_y, button1x, button1y, button1x+button_width, button1y+button_height))
	{
		button1c = sButtonClicked
		if (mouse_check_button_pressed(mb_left))
		{
			global.found = false;
			global.doQuiz = false;
			global.num_interacted++;
			UpdateBattery(shuffled_array[0].value);
			alarm[0] = 180;
		}
	}
	else
	{
		button1c = sButton
	}
	
	if (point_in_rectangle(mouse_gui_x, mouse_gui_y, button2x, button2y, button2x+button_width, button2y+button_height))
	{
		button2c = sButtonClicked
		if (mouse_check_button_pressed(mb_left))
		{
			global.found = false;
			global.doQuiz = false;
			global.num_interacted++;
			UpdateBattery(shuffled_array[1].value);
			alarm[0] = 180;
		}
	}
	else
	{
		button2c = sButton
	}
	
	if (point_in_rectangle(mouse_gui_x, mouse_gui_y, button3x, button3y, button3x+button_width, button3y+button_height))
	{
		button3c = sButtonClicked
		if (mouse_check_button_pressed(mb_left))
		{
			global.found = false;
			global.doQuiz = false;
			global.num_interacted++;
			UpdateBattery(shuffled_array[2].value);
			alarm[0] = 180;
		}
	}
	else
	{
		button3c = sButton
	}
	
	if (point_in_rectangle(mouse_gui_x, mouse_gui_y, button4x, button4y, button4x+button_width, button4y+button_height))
	{
		button4c = sButtonClicked
		if (mouse_check_button_pressed(mb_left))
		{
			global.found = false;
			global.doQuiz = false;
			global.num_interacted++;
			UpdateBattery(shuffled_array[3].value);
			alarm[0] = 180;
		}
	}
	else
	{
		button4c = sButton
	}
	if (curr_frames > 0) curr_frames--;
}
