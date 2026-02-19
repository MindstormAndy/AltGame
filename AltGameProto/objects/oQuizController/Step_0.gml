if (global.found && !global.shuffle_buttons && mouse_check_button_pressed(mb_left))
{
	show_debug_message("Clicked!")
	if (point_in_rectangle(mouse_x*2, mouse_y*2, button1x, button1y, button1x+button_width, button1y+button_height))
	{
		show_debug_message("1");
		global.found = false;
		UpdateBattery(shuffled_array, 0);
	}
	else if (point_in_rectangle(mouse_x*2, mouse_y*2, button2x, button2y, button2x+button_width, button2y+button_height))
	{
		show_debug_message("2")
		global.found = false;
		UpdateBattery(shuffled_array, 1);
	}
	else if (point_in_rectangle(mouse_x*2, mouse_y*2, button3x, button3y, button3x+button_width, button3y+button_height))
	{
		show_debug_message("3")
		global.found = false;
		UpdateBattery(shuffled_array, 2);
	}
	else if (point_in_rectangle(mouse_x*2, mouse_y*2, button4x, button4y, button4x+button_width, button4y+button_height))
	{
		show_debug_message("4")
		global.found = false;
		UpdateBattery(shuffled_array, 3);
	}
	
}