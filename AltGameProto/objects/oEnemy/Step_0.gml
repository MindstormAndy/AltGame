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
	
		canseeplayer = (collision_rectangle(x, y + 8, x + sightrange * xdir, y - 8, oPlayer, false, true)  ||
					    collision_rectangle(x + 8, y, x - 8, y + sightrange * ydir, oPlayer, false, true)) &&
						!collision_line(x, y, oPlayer.x, oPlayer.y, oWall, false, true);
	}


	if (canseeplayer && !foundplayer)
	{
		foundplayer = true;
		global.found = true;
	}
}
else 
{
	path_speed = 0;
}