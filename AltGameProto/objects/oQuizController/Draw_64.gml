if (global.found)
{
	draw_rectangle_colour(0, 0, 1280, 720, c_black, c_black, c_black, c_black, false);
	draw_sprite_stretched(sEnemyBig, 0, 200, 100, 250, 250);
	draw_rectangle_colour(button1x, button1y, button1x + button_width, button1y + button_height, c_orange, c_orange, c_orange, c_orange, false);
	draw_rectangle_colour(button2x, button2y, button2x + button_width, button2y + button_height, c_orange, c_orange, c_orange, c_orange, false);
	draw_rectangle_colour(button3x, button3y, button3x + button_width, button3y + button_height, c_orange, c_orange, c_orange, c_orange, false);
	draw_rectangle_colour(button4x, button4y, button4x + button_width, button4y + button_height, c_orange, c_orange, c_orange, c_orange, false);
	draw_rectangle_colour(32, 656, 1248, 698, c_gray, c_gray, c_gray, c_gray, false);
	draw_rectangle_colour(32, 656, 32 + 1216 * global.social_battery / 100, 698, c_red, c_red, c_red, c_red, false);

	draw_text_ext( button1x + 10, button1y + 1, plcholder_text, 20, button_width - 10);
}