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
		
		if (keyboard_check_pressed(vk_space))
        {
            if (i < array_length(dialogue_array))
            {
				profile_sprite = dialogue_array[i].speaker = "Player" ? sPlayerProfile : sFriendProfile
                dialogue_text = dialogue_array[i].text;
                i++;
            }
            else
            {
                i = 1;
                global.cutscene = false;
                room_goto_next();
            }
        }
	}
}