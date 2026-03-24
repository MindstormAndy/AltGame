if (global.alive)
{
	// When colliding with the player, end the game if on last level otherwise go to next level.
	if (room == last_room)
	{	
		
		global.game_end = true;
	}
	else
	{

		room_goto_next()
	}

}