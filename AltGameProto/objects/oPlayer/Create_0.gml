//variables for movement
moveDir = 0;
moveSpd = 2;
xspd = 0;
yspd = 0;

global.alive = true;
tilemap = layer_tilemap_get_id("Tilemap_Walls")

bubbleWidth = sprite_get_width(sThoughtBubble)/2
bubbleHeight = sprite_get_height(sThoughtBubble)/2
bubble_x_offset = -bubbleWidth
bubble_y_offset = -bubbleHeight
bubble_sprite_flip_x = -1
bubble_sprite_flip_y = -1

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

if (room == Tutorial)
{
	global.bubbletext = "I can use the WASD Keys to move."
	global.thinking_trigger = true;
}