// Update the social battery differently depending on the given prompt value.
function UpdateBattery(prompt_value){
	switch prompt_value
	{
		case prompt_values.great:
			global.bubbletext = greatBubble;
			if (global.social_battery <= 90) global.social_battery += 10;
			else global.social_battery = 100;
			break;
		case prompt_values.ok:
			global.bubbletext = okBubble;
			break;
		case prompt_values.bad:
			global.bubbletext = badBubble;
			if (global.social_battery >= 10) global.social_battery -= 10;
			else global.social_battery = 0;
			break;
		case prompt_values.garbage:
			global.bubbletext = garbageBubble;
			if (global.social_battery >= 20) global.social_battery -= 20;
			else global.social_battery = 0;
			break;
		case prompt_values.nothing:
			global.bubbletext = nothingBubble;
			if (global.social_battery >= 20) global.social_battery -= 20;
			else global.social_battery = 0;
			break;
	};
}