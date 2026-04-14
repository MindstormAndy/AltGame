global.game_end = false;
global.cutscene = false;

profile_sprite = sPlayerProfile

dialogue_text = ""

dialogue_x = 0;
dialogue_y = 464;

profile_x = 0;
profile_y = 464;

text_x = 768;
text_y = 585;


file_grid = load_csv("Room1Dialogue.csv")


i = 1;
dialogue_array = [];

switch (room)
{
	case Room1:
		dialogue_array = [
			{ speaker: "Player", text: "Hey Friend. I’m about ready to go-"},
			{ speaker: "Friend", text: "Oh, hey Player! How are you enjoying the party?"},
			{ speaker: "Player", text: "It’s alright, but I’d actually like to head out if that’s okay."},
			{ speaker: "Friend", text: "Oh okay, let me go find my wallet real quick, think I left it in the other room."},
			{ speaker: "Player", text: "Hey wait up!"}
		];
		break;
	case Room2:
		dialogue_array = [
			{ speaker: "Player", text: "There you are! Did you find your wallet?"},
			{ speaker: "Friend", text: "Oh yeah I have it right here."},
			{ speaker: "Player", text: "Can we please leave now?"},
			{ speaker: "Friend", text: "In a minute, I have to say goodbye to some people. Don’t worry, I’ll be quick."},
			{ speaker: "Player", text: "And there they go again. Guess I better find them so they don’t get roped back into the party."}
		];
		break;
	case Room3:
		dialogue_array = [
			{ speaker: "Player", text: "Did you say bye to everyone?"},
			{ speaker: "Friend", text: "Just a few more, then I promise we can go."},
			{ speaker: "Player", text: "I really should have seen that coming."}
		];
		break;
	case Room4:
		dialogue_array = [
			{ speaker: "Player", text: "Seriously, are you ready to go yet? I’m at the end of my rope here."},
			{ speaker: "Friend", text: "Sure thing. I just need to go say thanks to Host for inviting me."}
		];
		break;
}

if (array_length(dialogue_array) > 0)
	dialogue_text = dialogue_array[0].text;
else
	dialogue_text = "";