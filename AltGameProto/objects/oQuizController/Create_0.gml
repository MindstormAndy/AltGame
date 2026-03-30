global.found = false;
global.shuffle_buttons = true;
global.enemy_index = 0;
global.social_battery = 100;
global.num_interacted = 0;
global.bubbletext = "";
global.lost = false;
gpu_set_texfilter(false);

// Health Bar Variables
social_battery_max = global.social_battery;

healthbar_width = global.social_battery + 60;
healthbar_height = 64;
healthbar_x = 72;
healthbar_y = 8;

greatBubble = "I think that went pretty well!"
okBubble = "That could have gone better."
badBubble = "That was pretty awful..."
garbageBubble = "AAAAAAAAAAAA WHY DID I SAY THAT"

thoughtbubble_x = 1025
thoughtbubble_y = -20

prompt_x = 75
prompt_y = 350
prompt_width = 450
prompt_height = 250

button1x = 600
button1y = 200
button2x = 900
button2y = 200
button3x = 600
button3y = 375
button4x = 900
button4y = 375
button_width = 275
button_height = 150

button1c = c_orange
button2c = c_orange
button3c = c_orange
button4c = c_orange

timer_frames = 60 * timer_duration_secs
curr_frames = timer_frames

timer_x = 0
timer_y = 654
timer_width = 1280
timer_height = 64


enum prompt_values
{
	great,
	ok,
	bad,
	garbage
}

file_grid = load_csv("TestPrompts.csv")
for (var i = 0; i < ds_grid_width(file_grid); i++)
	for (var j = 0; j < ds_grid_height(file_grid); j++)
		file_grid[# i, j] = string_replace_all(file_grid[# i, j], "*", "'");


answer_array = array_create(4)
shuffled_array = array_create(4)

gui_scale = view_wport / 1280
prompt_font_size_gui = prompt_font_size*gui_scale;
answer_font_size_gui = answer_font_size*gui_scale;
end_font_size_gui = end_font_size*gui_scale;



