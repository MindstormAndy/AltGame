

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

i = 1;
dialogue_array = [];

switch (room)
{
	case Tutorial:
		dialogue_array = [
			{ speaker: "Player", text: "Hey Charlie, It feels like ages since we arrived at this party. I'd like to- [click to continue]"},
			{ speaker: "Friend", text: "Hold that thought, somebody keeps calling my name. I'll be right back."},
			{ speaker: "Player", text: "go now..."},
			{ speaker: "Player", text: "Knowing Charlie, they'll get too sidetracked. I better go catch up with them."},
			{ speaker: "Player", text: "I don't know how much social interaction I can take."},
			{ speaker: "Player", text: "I really don't want to talk to anyone else. I'll just do my best to avoid them."},
			{ speaker: "Player", text: "If anyone talks to me, I'll just try to respond the best I can. Hopefully I don't say something too embarassing."}
		];
		break;
	case Room1:
		dialogue_array = [
			{ speaker: "Player", text: "Hey, I'm about ready to go-"},
			{ speaker: "Friend", text: "Oh, hey Oliver! How are you enjoying the party?"},
			{ speaker: "Player", text: "It's alright, but I'd actually like to head out if that's okay."},
			{ speaker: "Friend", text: "Oh okay, let me go find my wallet real quick, I think I left it in the other room."},
			{ speaker: "Player", text: "Hey wait up!"}
		];
		break;
	case Room2:
		dialogue_array = [
			{ speaker: "Player", text: "There you are! Did you find your wallet?"},
			{ speaker: "Friend", text: "Oh yeah I have it right here."},
			{ speaker: "Player", text: "Can we please leave now?"},
			{ speaker: "Friend", text: "In a minute, I have to say goodbye to some people. Don't worry, I'll be quick."},
			{ speaker: "Player", text: "And there they go again. Guess I better find them so they don't get roped back into the party."}
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
			{ speaker: "Player", text: "Seriously, are you ready to go yet? I'm at the end of my rope here."},
			{ speaker: "Friend", text: "Sure thing. I just need to go say thanks to the host for inviting me."}
		];
		break;
}

if (array_length(dialogue_array) > 0)
	dialogue_text = dialogue_array[0].text;
else
	dialogue_text = "";
	
depth = 1