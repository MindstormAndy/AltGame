if (!variable_global_exists("found")) {
    global.found = false;
}
foundplayer = false;
interacted = false;
sightdelay = 15;
sightwidth = 8;
tempdelay = 0;
socialcost = 13;

tilemap = layer_tilemap_get_id("Tilemap_Walls")

path_start(my_path, 2, path_action_continue, true);
