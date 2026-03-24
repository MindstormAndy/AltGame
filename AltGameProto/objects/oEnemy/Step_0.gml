if (!global.found && !foundplayer && global.alive)
{
	// Only move and interact if this enemy hasn't seen 
	// the player yet.
	path_speed = 2;
	xdir = 0
	ydir = 0;
	
	// Change sprite based on direction
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
		// canseeplayer is true when the player is within a rectangular field of view in front of this enemy
		// and the line of sight is not obstructed by a wall.
		canseeplayer = (collision_rectangle(x, y + sightwidth, x + sightrange * xdir, y - sightwidth, oPlayer, false, true)  ||
					    collision_rectangle(x + sightwidth, y, x - sightwidth, y + sightrange * ydir, oPlayer, false, true)) &&

		// touchingplayer is true whenever the player and this enemy collide.
		!collision_line(x, y, oPlayer.x, oPlayer.y, tilemap, false, true);
		
		touchingplayer = collision_point(x, y, oPlayer, false, true)
	}


	// If this enemy can see the player, start a timer and increment it every tick until it reaches a set limit.
	// The question mark sprite is set in the Draw tab.
	if (canseeplayer)
	{
		tempdelay++;
	}
	else
	{
		tempdelay = 0;
	}
	// When the timer reaches the limit, if the enemy can still see the player, trigger the dialogue screen.
	if ((tempdelay == sightdelay && canseeplayer && !foundplayer) || touchingplayer)
	{
		sprite_index = spriteIdle
		foundplayer = true;
		
		global.shuffle_buttons = true;
		
		// This makes sure that the dialogue screen displays the correct dialogue for this enemy
		global.enemy_index = enemy_index

		global.enemy_big = spriteBig
		
		// This is what triggers the dialogue
		global.found = true;
		
		// Subtract from the current social battery level
		if (global.social_battery >= socialcost) global.social_battery -= socialcost;
		else global.social_battery = 0;
	}
}
else 
{
	path_speed = 0;
}