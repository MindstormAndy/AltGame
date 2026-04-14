global.hostscreen = false
quiz_num = 0;

prompt_x = 75
prompt_y = 350
prompt_width = 450
prompt_height = 250

dialogue_x = 0;
dialogue_y = 464;

profile_x = 0;
profile_y = 464;

text_x = 768;
text_y = 585;

button1clicked = false
button2clicked = false
button3clicked = false
button4clicked = false

button1hovered = false
button2hovered = false
button3hovered = false
button4hovered = false

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


dialogue_quiz_array = [
{ prompt: "Hey man, it’s good to see you! How are you enjoying my party?", answers: ["Yeah, it’s fun!", "It’s alright.", "Could be better.", "I want to go home."]},
{ prompt: "Cool cool. Anyway, how has everyone been treating you?", answers: ["Everyone’s been really nice.", "They’ve been friendly.", "It’s been alright.", "They’ve been bullying me."]},
{ prompt: "Alright, nice. So, do you have any other small talk?", answers: ["What?", "Excuse me?", "What do you mean?", "Can you elaborate?"]},
{ prompt: "Ah, sorry man, I tend to get nervous talking with people.", answers: ["Wait, really?", "Same here!", "You too?", "Ditto!"]}
]

dialogue_array = [
	{ speaker: "Player", text: "So you have social anxiety too?"},
	{ speaker: "Host", text: "For sure. I mean who doesn’t have some anxiety when talking to new people, right?"},
	{ speaker: "Player", text: "But this is your party, I thought for sure that you wouldn’t have any trouble talking to the people here."},
	{ speaker: "Host", text: "Truth be told, I only know about two thirds of the people here. There were several plus ones that showed up, like yourself."},
	{ speaker: "Host", text: "Actually on that note I don’t think we’ve been properly introduced. I’m Host."},
	{ speaker: "Player", text: "I’m Player. My friend Friend brought me along, but I’ve been having some trouble feeling comfortable with so many strangers around."},
	{ speaker: "Host", text: "Nice to meet you Player. Believe me, I get it. I’ve had a few moments where I’ve struggled to figure out what to say to some of the people I don’t know without sounding awkward."},
	{ speaker: "Player", text: "Right? It feels like I’m just going to make a fool of myself given all of the pressure."},
	{ speaker: "Host", text: "I find that it helps to imagine that they’re just as nervous as you are. We all have some level of awkwardness in us, and mentally leveling the playing field can really help you boost your confidence."},
	{ speaker: "Player", text: "Thanks for the tip. I have to get going, but it was really nice meeting you Host."},
	{ speaker: "Host", text: "Same to you Player. I’ll see you around!"},
	{ speaker: "Player", text: "For sure!"}
];