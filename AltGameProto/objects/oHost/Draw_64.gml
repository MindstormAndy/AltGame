if (global.hostscreen) {
	if (quiz_num < array_length(dialogue_quiz_array)) {
		
		sprite_index = sBossEnemy
		draw_sprite_stretched(sDialogueBackground, 0, 0, 0, 1280, 720)
		
		// Large enemy sprite
		draw_sprite_stretched(sBossEnemyProfile, 0, 175, 50, 250, 250);
		
		// Prompt text box
		draw_sprite_stretched(sPromptBox, 0, prompt_x, prompt_y, prompt_width, prompt_height);
		
		// Buttons
		if button1hovered == sButtonClicked
		{
			draw_sprite_stretched(sButtonClicked, 0, button1x, button1y, button_width, button_height);
		}
		else
			draw_sprite_stretched(sButton, 0, button1x, button1y, button_width, button_height)
		if button2hovered == sButtonClicked
		{
			draw_sprite_stretched(sButtonClicked, 0, button2x, button2y, button_width, button_height)
		}
		else
			draw_sprite_stretched(sButton, 0, button2x, button2y, button_width, button_height)
		if button3hovered == sButtonClicked
		{
			draw_sprite_stretched(sButtonClicked, 0, button3x, button3y, button_width, button_height)
		}
		else
			draw_sprite_stretched(sButton, 0, button3x, button3y, button_width, button_height)
		if button4hovered == sButtonClicked
		{
			draw_sprite_stretched(sButtonClicked, 0, button4x, button4y, button_width, button_height)
		}
		else
			draw_sprite_stretched(sButton, 0, button4x, button4y, button_width, button_height)
		
		draw_text_ext_transformed(button1x + button_width / 2, button1y + button_height / 2, dialogue_quiz_array[quiz_num].answers[0], 20, (button_width - 10), 1, 1, 0);
		draw_text_ext_transformed(button2x + button_width / 2, button2y + button_height / 2, dialogue_quiz_array[quiz_num].answers[1], 20, (button_width - 10), 1, 1, 0);
		draw_text_ext_transformed(button3x + button_width / 2, button3y + button_height / 2, dialogue_quiz_array[quiz_num].answers[2], 20, (button_width - 10), 1, 1, 0);
		draw_text_ext_transformed(button4x + button_width / 2, button4y + button_height / 2, dialogue_quiz_array[quiz_num].answers[3], 20, (button_width - 10), 1, 1, 0);
		draw_text_ext_transformed(prompt_x + prompt_width / 2, prompt_y + prompt_height / 2, dialogue_quiz_array[quiz_num].prompt, 20, (prompt_width - 10)/1.2, 1.2, 1.2, 0);
		
	}
	else if (quiz_num < (array_length(dialogue_quiz_array) + array_length(dialogue_array))){
		sprite_index = sHumanHost
		show_debug_message(quiz_num)
		show_debug_message((array_length(dialogue_quiz_array) + array_length(dialogue_array) - 1))
		draw_sprite_ext(sDialogueTextbox, 0, dialogue_x, dialogue_y, 2, 2, 0, c_white, 1)
		if (dialogue_array[quiz_num-4].speaker == "Player")
			draw_sprite_ext(sPlayerProfile, 0, profile_x, profile_y, 4, 4, 0, c_white, 1)
		else
			draw_sprite_ext(sHumanHostProfile, 0, profile_x, profile_y, 4, 4, 0, c_white, 1)
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_text_ext_transformed(text_x, text_y, dialogue_array[quiz_num-4].text, 20, 450, 2, 2, 0)
	}
	else {
		sprite_index = sHumanHost
		screen_fading(TitleScreen, 0.025, 0.025)
		instance_destroy(oQuizController)
	}
}