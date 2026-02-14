if (!variable_global_exists("found")) {
    global.found = false;
}
foundplayer = false;
interacted = false;
sightdelay = 15;
sightwidth = 8;
tempdelay = 0;
socialcost = 13;

path_start(my_path, 2, path_action_continue, true);
