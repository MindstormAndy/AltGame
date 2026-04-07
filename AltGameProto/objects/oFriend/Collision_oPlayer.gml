if (global.alive)
{
	// When colliding with the player, end the game if on last level otherwise go to next level.
	//if (room == last_room)
	//{	
		
	//	global.game_end = true;
	//}
	if (room != last_room)
	{
		global.cutscene = true;
		switch (room)
		{
			case Room1:
				if i < ds_grid_width(file_grid)
					dialogue_text = file_grid[# 1, i];
				else
					
				break;
			case Room2:
				break;
			case Room3:
				break;
			case Room4:
				break;
			case Room5:
				break;
		}
		room_goto_next()
	}

}