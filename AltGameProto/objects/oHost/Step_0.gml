depth = -bbox_bottom
if instance_find(oPlayer, 0).y < 220
{
	global.hostscreen = true;	
	
	
}
if (global.hostscreen)
{
	mouse_gui_x = device_mouse_x_to_gui(0)
	mouse_gui_y = device_mouse_y_to_gui(0)
	button1hovered = point_in_rectangle(mouse_gui_x, mouse_gui_y, button1x, button1y, button1x+button_width, button1y+button_height)
	button1clicked = mouse_check_button_pressed(mb_left) and button1hovered
	button2hovered = point_in_rectangle(mouse_gui_x, mouse_gui_y, button2x, button2y, button2x+button_width, button2y+button_height)
	button2clicked = mouse_check_button_pressed(mb_left) and button2hovered
	button3hovered = point_in_rectangle(mouse_gui_x, mouse_gui_y, button3x, button3y, button3x+button_width, button3y+button_height)
	button3clicked = mouse_check_button_pressed(mb_left) and button3hovered
	button4hovered = point_in_rectangle(mouse_gui_x, mouse_gui_y, button4x, button4y, button4x+button_width, button4y+button_height)
	button4clicked = mouse_check_button_pressed(mb_left) and button4hovered
	
	if ((button1clicked or button2clicked or button3clicked or button4clicked) and quiz_num < array_length(dialogue_quiz_array))
	{
		audio_play_sound_ext({sound: ClickSound})
		quiz_num++
	}
	if ((quiz_num >= array_length(dialogue_quiz_array)) and(quiz_num < (array_length(dialogue_quiz_array) + array_length(dialogue_array)) and (keyboard_check_pressed(vk_space) or mouse_check_button_pressed(mb_left))))
	{
		audio_play_sound_ext({sound: ClickSound})
		quiz_num++
	}
	
	if (quiz_num >= (array_length(dialogue_quiz_array) + array_length(dialogue_array)))
	{
		show_debug_message("Quiz complete! quiz_num = " + string(quiz_num))
		global.last_level = true;
		screen_fading(TitleScreen, 0.017, 0.017)
	}
	
	
	if (quiz_num < array_length(dialogue_quiz_array)) sprite_index = sBossEnemy
	else sprite_index = sHumanHost
}