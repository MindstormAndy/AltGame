if (global.found && !global.shuffle_buttons && global.alive)
{
	mouse_gui_x = device_mouse_x_to_gui(0)
	mouse_gui_y = device_mouse_y_to_gui(0)

	if (curr_frames == 0)
	{
		global.found = false;
		UpdateBattery(prompt_values.garbage);
	}
	if (point_in_rectangle(mouse_gui_x, mouse_gui_y, button1x, button1y, button1x+button_width, button1y+button_height))
	{
		button1c = c_gray
		if (mouse_check_button_pressed(mb_left))
		{
			global.found = false;
			UpdateBattery(shuffled_array[0].value);
		}
	}
	else
	{
		button1c = c_orange
	}
	
	if (point_in_rectangle(mouse_gui_x, mouse_gui_y, button2x, button2y, button2x+button_width, button2y+button_height))
	{
		button2c = c_gray
		if (mouse_check_button_pressed(mb_left))
		{
			global.found = false;
			UpdateBattery(shuffled_array[1].value);
		}
	}
	else
	{
		button2c = c_orange
	}
	
	if (point_in_rectangle(mouse_gui_x, mouse_gui_y, button3x, button3y, button3x+button_width, button3y+button_height))
	{
		button3c = c_gray
		if (mouse_check_button_pressed(mb_left))
		{
			global.found = false;
			UpdateBattery(shuffled_array[2].value);
		}
	}
	else
	{
		button3c = c_orange
	}
	
	if (point_in_rectangle(mouse_gui_x, mouse_gui_y, button4x, button4y, button4x+button_width, button4y+button_height))
	{
		button4c = c_gray
		if (mouse_check_button_pressed(mb_left))
		{
			global.found = false;
			UpdateBattery(shuffled_array[3].value);
		}
	}
	else
	{
		button4c = c_orange
	}
	if (curr_frames > 0) curr_frames--;
}