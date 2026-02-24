global.found = false;
global.shuffle_buttons = true;
global.enemy_index = 0;
global.social_battery = 100;
global.lost = false;
gpu_set_texfilter(false);

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

timer_seconds = 3
timer_frames = 60 * timer_seconds
curr_frames = timer_frames


enum prompt_values
{
	great,
	ok,
	bad,
	garbage
}

file_grid = load_csv("TestPrompts.csv")
answer_array = array_create(4)
shuffled_array = array_create(4)

gui_scale = view_wport / 1280

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

