if (!foundplayer)
{
	path_speed = 2;
	xdir = 0
	ydir = 0;
	switch (direction)
	{
		case 0:
			xdir = 1;
			ydir = 0;
			sprite_index = spriteRight
			break;
		case 90:
			xdir = 0;
			ydir = -1;
			sprite_index = spriteBack
			break;
		case 180:
			xdir = -1;
			ydir = 0;
			sprite_index = spriteLeft
			break;
		case 270:
			xdir = 0;
			ydir = 1;
			sprite_index = spriteFront
			break;
	}

	if (instance_exists(oPlayer))
	{
	
		canseeplayer = (collision_rectangle(x, y + sightwidth, x + sightrange * xdir, y - sightwidth, oPlayer, false, true)  ||
					    collision_rectangle(x + sightwidth, y, x - sightwidth, y + sightrange * ydir, oPlayer, false, true)) &&
						!collision_line(x, y, oPlayer.x, oPlayer.y, oWall, false, true);
		touchingplayer = collision_point(x, y, oPlayer, false, true)
	}


	if (canseeplayer)
	{
		sprite_index = sEnemyAlert
		tempdelay++;
	}
	else
	{
		tempdelay = 0;
	}
	if (( tempdelay == sightdelay && canseeplayer || touchingplayer ) && !foundplayer)
	{
		sprite_index = spriteIdle
		foundplayer = true;
		global.shuffle_buttons = true;
		global.enemy_index = enemy_index
		global.found = true;
		if (global.social_battery >= socialcost) global.social_battery -= socialcost;
		else global.social_battery = 0;
	}
}
else 
{
	path_speed = 0;
}