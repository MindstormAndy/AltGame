if (!variable_global_exists("found")) {
    global.found = false;
}
if (!variable_global_exists("doQuiz")) {
    global.doQuiz = false;
}
foundplayer = false;
interacted = false;
exclamation = false;
sightdelay = 15;
sightwidth = 8;
tempdelay = 0;
socialcost = 13;

// Start the enemy on the path determined by my_path
tilemap = layer_tilemap_get_id("Tilemap_Walls")

path_start(my_path, 2, path_action_continue, true);
