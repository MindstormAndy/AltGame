if (!touchedplayer) {
	touchedplayer = true;
	global.bubbletext = text;
	global.thinking_trigger = true;
	if (!global.found) {
		alarm[0] = 180;
	}
}
