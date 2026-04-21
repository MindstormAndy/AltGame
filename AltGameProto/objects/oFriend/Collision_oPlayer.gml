

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
		
		if (keyboard_check_pressed(vk_space) or mouse_check_button_pressed(mb_left))
        {
            if (i < array_length(dialogue_array))
            {
				profile_sprite = dialogue_array[i].speaker = "Player" ? sPlayerProfile : sFriendProfile
                dialogue_text = dialogue_array[i].text;
                i++;
					
				if (room == Tutorial) and i = 3
				{
					sprite_index = -1
					mask_index = sFriend
				}
            }
            else
            {
	
				// Screen fading from one level to the next
				if room == Tutorial
			    {	
					screen_fading(Room1, 0.025, 0.025);
				}
				else if room == Room1
			    {	
					screen_fading(Room2, 0.025, 0.025);
				}
				else if room == Room2
				{
					screen_fading(Room3, 0.025, 0.025);
				}
				else if room == Room3
				{
					screen_fading(Room4, 0.025, 0.025);
				}
				else if room == Room4
				{
					screen_fading(Final, 0.025, 0.025);
				}
				alarm[0] = 40
            }
        }
	}
}