if (!global.found)
{
	path_speed = 2;
	xdir = 0
	ydir = 0;
	switch (direction)
	{
		case 0:
			xdir = 1;
			ydir = 0;
			break;
		case 90:
			xdir = 0;
			ydir = -1;
			break;
		case 180:
			xdir = -1;
			ydir = 0;
			break;
		case 270:
			xdir = 0;
			ydir = 1;
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
		sprite_index = sEnemy
		tempdelay = 0;
	}
	if (( tempdelay == sightdelay && canseeplayer || touchingplayer ) && !foundplayer)
	{
		foundplayer = true;
		global.found = true;
		if (global.social_battery >= socialcost) global.social_battery -= socialcost;
		else global.social_battery = 0;
	}
	if (foundplayer)
	{
		sprite_index = sEnemyInteracted
	}
}
else 
{
	path_speed = 0;
}