//utilities
if keyboard_check_pressed(vk_escape) game_end();
if keyboard_check_pressed(ord("R")) game_restart();
if keyboard_check_pressed(ord("F")) window_set_fullscreen(!window_get_fullscreen())


if (!global.found)
{
//get inputs
rightKey = keyboard_check(ord("D"));
leftKey = keyboard_check(ord("A"));
upKey = keyboard_check(ord("W"));
downKey = keyboard_check(ord("S"));



//player movement

//get the direction
var _horizKey = rightKey - leftKey;
var _vertKey = downKey - upKey;
moveDir = point_direction(0, 0, _horizKey, _vertKey);

//get the x and y speeds
var _spd = 0;
var _inputLevel = point_distance(0, 0, _horizKey, _vertKey);
_inputLevel = clamp(_inputLevel, 0, 1);
_spd = moveSpd * _inputLevel;


//player sprite direction
if _horizKey = 0 or _vertKey = 0 {
	if _vertKey > 0 {
		sprite_index = sPlayer;
	} else if _vertKey < 0 {
		sprite_index = sPlayerBack;
	} else if _horizKey > 0 {
		sprite_index = sPlayerRight;
	} else if _horizKey < 0 {
		sprite_index = sPlayerLeft;
	}
}



xspd = lengthdir_x(_spd, moveDir);
yspd = lengthdir_y(_spd, moveDir);

//collision
if place_meeting(x + xspd, y, oWall)
{
	while !place_meeting(x + _horizKey, y, oWall) x += _horizKey;
	xspd = 0;
}
if place_meeting(x, y + yspd, oWall)
{
	while !place_meeting(x, y + _vertKey, oWall) y += _vertKey;
	yspd = 0;
}


	

//move the player
x += xspd;
y += yspd;



}