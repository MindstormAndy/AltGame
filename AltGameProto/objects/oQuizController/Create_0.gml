global.found = false;
global.shuffle_buttons = true;
global.enemy_index = 0;
global.social_battery = 100;
global.num_interacted = 0;
global.lost = false;
global.doQuiz = false;
global.hostscreen = false;
global.thinking_trigger = false;
global.thinking_enemy = false;
global.last_level = false;
gpu_set_texfilter(false);

// Health Bar Variables
social_battery_max = global.social_battery;

healthbar_width = global.social_battery + 60;
healthbar_height = 64;
healthbar_x = 72;
healthbar_y = 8;

greatBubble = "I think that went pretty well!"
okBubble = "That could have gone better."
badBubble = "That went pretty poorly..."
garbageBubble = "AAAAAAAAAAAA WHY DID I SAY THAT"
nothingBubble = "I don't know what to say..."

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
	garbage,
	nothing
}

dialogue_array = 
[
	["Did you see the game last night?", "Yeah, it was a blast.", "I don't really watch sports.", "There was a game?", "Who watches sports nowadays?"], 
	["Hey, how are you doing?", "I'm good, thanks.", "Great. Just great.", "Fine.", "My soul is empty."], 
	["Hey man! Are you enjoying the party?", "For sure!", "It's alright I guess.", "It's kind of lame honestly.", "What party?"], 
	["Where are you headed?", "I'm heading out, have a good one.", "I'm leaving.", "Bathroom?", "Your mother's house."], 
	["You should come dance!", "No thanks, I have two left feet.", "No I can't.", "I don't wanna.", "There's enough fools on the dance floor."], 
	["Have you seen the dog?", "Yeah, he's adorable.", "I've seen him around.", "There's a dog?", "Oh yeah, the fleabitten mutt."], 
	["Do you want to talk about politics?", "I'm really not comfortable with that.", "Not really.", "I don't know.", "Absolutely!"], 
	["Do you want to talk about religion?", "I'm really not comfortable with that.", "Not really.", "I don't know.", "Is yours different from mine?"], 
	["Do you want some cake and ice cream?", "Sure! That sounds amazing.", "Maybe later.", "The cake is a lie.", "Shouldn't you be eating healthy? Try a salad."]
]


answer_array = array_create(4)
shuffled_array = array_create(4)

gui_scale = view_wport / 1280
prompt_font_size_gui = prompt_font_size*gui_scale;
answer_font_size_gui = answer_font_size*gui_scale;
end_font_size_gui = end_font_size*gui_scale;


draw_set_colour(c_white)

depth = 1

