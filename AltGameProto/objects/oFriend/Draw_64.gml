if (global.cutscene)
{
	draw_sprite_ext(sDialogueTextbox, 0, dialogue_x, dialogue_y, 2, 2, 0, c_white, 1)
	draw_sprite_ext(profile_sprite, 0, profile_x, profile_y, 4, 4, 0, c_white, 1)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_text_ext_transformed(text_x, text_y, dialogue_text, 20, 450, 2, 2, 0)
}