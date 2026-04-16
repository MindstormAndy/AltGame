if (!touchedplayer) {
	touchedplayer = true;
	global.bubbletext = text;
	global.thinking = true;
	if (!global.found) {
		alarm[0] = 180;
	}
}
