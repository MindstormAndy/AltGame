//utilities
if keyboard_check_pressed(vk_escape) game_end();
if keyboard_check_pressed(ord("R")) game_restart();
if keyboard_check_pressed(ord("F")) window_set_fullscreen(!window_get_fullscreen())

if (global.alive)
{


	if (!global.found)
	{
	image_speed = 1;
	
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
			sprite_index = sPlayerWalkFront;
		} else if _vertKey < 0 {
			sprite_index = sPlayerWalkBack;
		} else if _horizKey > 0 {
			sprite_index = sPlayerWalkRight;
		} else if _horizKey < 0 {
			sprite_index = sPlayerWalkLeft;
		}

		else {
			if sprite_index == sPlayerWalkFront {
				sprite_index = sPlayerFront; 
			} else if sprite_index = sPlayerWalkBack {
				sprite_index = sPlayerBack;
			} else if sprite_index == sPlayerWalkRight {
				sprite_index = sPlayerRight;
			} else if sprite_index == sPlayerWalkLeft {
				sprite_index = sPlayerLeft;
			}
		}
	}


	xspd = lengthdir_x(_spd, moveDir);
	yspd = lengthdir_y(_spd, moveDir);
	
	feetx1 = x - 8
	feety1 = y + 8
	feetx2 = x + 8
	feety2 = y + 16
	
	depth = -feety2;

	//collision
	//if place_meeting(x + xspd, y, tilemap)
	if check_collisions(feetx1 + xspd, feety1, feetx2 + xspd, feety2) //collision_rectangle(feetx1 + xspd, feety1, feetx2 + xspd, feety2, tilemap, false, true)
	{
		//while !place_meeting(x + _horizKey, y, tilemap) x += _horizKey;
		while !check_collisions(feetx1 + _horizKey, feety1, feetx2 + _horizKey, feety2) //, tilemap, false, true)
		{
			x += _horizKey;
			feetx1 += _horizKey;
			feetx2 += _horizKey;
		}
		xspd = 0;
	}
	//if place_meeting(x, y + yspd, tilemap)
	if check_collisions(feetx1, feety1 + yspd, feetx2, feety2 + yspd) //collision_rectangle(feetx1, feety1 + yspd, feetx2, feety2 + yspd, tilemap, false, true)
	{
		//while !place_meeting(x, y + _vertKey, tilemap) y += _vertKey;
		while !check_collisions(feetx1, feety1 + _vertKey, feetx2, feety2 + _vertKey) //, tilemap, false, true)
		{
			y += _vertKey;
			feety1 += _vertKey;
			feety2 += _vertKey;
		}
		yspd = 0;
	}

	

	//move the player
	x += xspd;
	y += yspd;



	}
	else {
		image_index = 0;
		image_speed = 0;
	}
}