// Thought Bubble 
if (global.thinking)
{
	draw_sprite_ext(sThoughtBubble, 0, x, y, .5*bubble_sprite_flip_x, .5*bubble_sprite_flip_y, 0, c_white, 1)
	draw_set_color(c_black)
	draw_text_ext_transformed(x+bubble_x_offset+bubbleWidth/2, y+bubble_y_offset+bubbleHeight/3, global.bubbletext, 20, 250, .5, .5, 0)
	draw_set_color(c_white)
}