function UpdateBattery(prompt_value){
	switch prompt_value
	{
		case prompt_values.great:
			if (global.social_battery <= 90) global.social_battery += 10;
			else global.social_battery = 100;
			break;
		case prompt_values.ok:
			break;
		case prompt_values.bad:
			if (global.social_battery >= 10) global.social_battery -= 10;
			else global.social_battery = 0;
			break;
		case prompt_values.garbage:
			if (global.social_battery >= 20) global.social_battery -= 20;
			else global.social_battery = 0;
			break;
	};
}