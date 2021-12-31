The story title is "time-machine-conversations".
The story author is "Bill Maya".
The story headline is "Conversation Experiments for 'The Time Machine'".

When play begins:
	say "This is an attempt at implementing better conversations with various characters from The Time Machine using Eric Eve's conversation extensions. When I'm satisfied with the end result it will be integrated with the existing Time Machine code.[paragraph break]There are only two characters, Watchett and Humboldt, and two locations, Kitchen and Entryway.";
	Open title-characters window;
	Open list-characters window;
	[Open talking-to-title window;
	Open talking-to-character window;
	Open character-topics window;
	Open inventory-title window;
	Open inventory-list window;]
	[Now suggest-on-greeting is false;]
	Now the player is carrying the pocket watch;
	Now the player is carrying the poker.
[	
Every turn:
	refresh the inventory-list window.
]
[ WORDS - 2378 ]

Book - Setup

Part - Extensions


[Include Epistemology by Eric Eve.
Include Conversation Framework by Eric Eve.
Include Conversation Suggestions by Eric Eve.
Include Conversational Defaults by Eric Eve.]
Include Conversation Package by Eric Eve. [Can uncomment this Include line and comment out previous four Include lines]

Include Flexible Windows by Jon Ingold.

Part - User Interface

Chapter - Setup

[
The scale method of the side window is g-proportional. The measurement of the side window is 25.
The scale method of the banner window is g-fixed-size. The measurement of the banner window is 30.
]

The title-characters window is a text grid g-window spawned by the main window.
The position of the title-characters window is g-placeright.
The scale method of the title-characters window is g-proportional.
The measurement of the title-characters window is 25.

The list-characters window is a text buffer g-window spawned by the title-characters window.
The position of the list-characters window is g-placebelow.
The scale method of the list-characters window is g-proportional.
The measurement of the list-characters window is 98.

[The talking-to-title window is a text grid g-window spawned by the list-characters window.
The position of the talking-to-title window is g-placebelow.
The scale method of the talking-to-title window is g-proportional.
The measurement of the talking-to-title window is 75.

The talking-to-character window is a text buffer g-window spawned by the talking-to-title window.
The position of the talking-to-character window is g-placebelow.
The scale method of the talking-to-character window is g-proportional.
The measurement of the talking-to-character window is 95.

The character-topics window is a text buffer g-window spawned by the talking-to-character window.
The position of the character-topics window is g-placebelow.
The scale method of the character-topics window is g-proportional.
The measurement of the character-topics window is 95.

The inventory-title window is a text grid g-window spawned by the character-topics window.
The position of the character-topics window is g-placebelow.
The scale method of the inventory-title window is g-proportional.
The measurement of the inventory-title window is 75.

The inventory-list window is a text buffer g-window spawned by the inventory-title window.
The position of the inventory-list window is g-placebelow.
The scale method of the inventory-list window is g-proportional.
The measurement of the inventory-list window is 95.]

Chapter - Rules

[Rule for refreshing the inventory-list window:
	try taking inventory.]
	
Rule for refreshing the title-characters window:
	say "Characters in the Room".
	
Rule for refreshing the list-characters window:
	say "[Watchett][line break]";
	say "[Humboldt][line break]";
	say "Mr. Gernsback[line break]";
	say "Weena[line break]";
	say "Eloi".
	
Chapter - Styles

Table of User Styles (continued)
window	color	background color
title-characters	"#FFFFFF"	"#000000"		

[
Table of User Styles (continued)
window (a g-window)    	
style name (a glulx text style)    	
background color (a text)    	
color (a text)    	
first line indentation (a number)    	
fixed width (a truth state)    	
font weight (a font weight)    	
indentation (a number)    	
italic (a truth state)    	
justification (a text justification)    	
relative size (a number)    	
reversed (a truth state)
]

Part - Locations

The Kitchen is a room. "The Entryway is south."
The Kitchen is north of the Entryway.

The Entryway is a room. "The Kitchen is north."

Part - The Key

watchett-key is a truth state that varies.
watchett-key is false.

The key is a thing. The printed name is "workshop key".

To say key-start:
	say "Mr. Wells always kept it on his person.[no line break]".

To say key-middle:
	say "[one of]That's where it still must be.[no line break][or]But it never stayed there for long.[no line break][or]But it was always falling out of his pocket at the drop of a hat.[no line break][or]But he was always loosing it.[no line break][at random]".

To say key-end:
	if the player has the key:
		say "Looks like you found it.[no line break]";
	otherwise:
		say "[one of]Perhaps it's somewhere around the house.[no line break][or]The places I'd find it.[no line break][or]Where was the last place you saw Mr. Wells?[no line break][at random]".
		
Part - Other Things

The pocket watch is a thing.
The orrery is a thing.
The petal is a thing.
Food is a thing. Understand "dinner" or "supper" or "meals" or "meal" as food.
The poker is a thing.
The newspaper is a thing.

xyz-suggestion is a misc-suggestion. The printed name is "say XYZ". [The seqno is 2.]
abc-suggestion is a misc-suggestion. The printed name is "say ABC".

Part - Familiarity 

Wells is a familiar man.
Humboldt is a familiar man.
[Watchett is a familiar woman.] [Test with > tell humboldt about watchett and see what happens. ]

The key is familiar. The printed name is "workshop key".
The workshop-room is a familiar thing. Understand "workshop" as workshop-room. The printed name of workshop-room is "workshop".
The workshop-door is a familiar thing. Understand "workshop door" as workshop-door.
The front door is a familiar thing.

The pocket watch is familiar.
The orrery is familiar.
The petal is familiar.
Food is familiar.
The poker is familiar.
The newspaper is familiar.

Part - Subjects 

experiments are a subject. The printed name is "Wells['] experiments".
time travel is a subject.
her-work is a subject. Understand "work" or "her work" as her-work. The printed name of her-work is "her work".

Book - Characters

Part - Watchett

Watchett is a person. 
Watchett is female.
Watchett is in the Kitchen.
The printed name of Watchett is "Mrs. Watchett".
The description of Watchett is "Mrs. Watchett is [if Watchett is the current interlocutor]standing there looking patiently at you[otherwise]cleaning up after the evening meal."

Chapter - Suggestions 

The ask-suggestions are { Wells, workshop-room, time travel, her-work, self-suggestion }.
The tell-suggestions are { Humboldt }.
[The other-suggestions are { xyz-suggestion, abc-suggestion, yes-no-suggestion }.]

Chapter - Conversation 

Section - Hello

After saying hello to Watchett when the greeting type is explicit: 
	say "Mrs. Watchett pauses in her work. 'Good evening sir,' she replies."

After saying hello to Watchett when the greeting type is implicit:
	say "Mrs. Watchett pauses in her work and thinks before answering. [run paragraph on]"

Section - Requests - "Asking For [something]"

Instead of requesting Watchett for the key: say "'I'm sorry sir, I don't have it.'"

Section - Quizzing - "Asking About [something]"

After quizzing Watchett about Wells: say "[remove Wells ask suggestion][add experiments ask suggestion]'Always working too hard on his experiments, he is. He probably just needs a bit of a rest.'"
After quizzing Watchett about Humboldt: say "'The doctors has been a friend of Mr. Wells for years. Not as long as you but almost as long.'"
After quizzing Watchett about Watchett: say "[remove self-suggestion ask suggestion]'I[']m really not one to talk about myself,' she says. 'Can I help you in any other way?'"

After quizzing Watchett about the key:
	say "'[key-start] [key-middle] [key-end]'[line break]";
	now watchett-key is true.

After quizzing Watchett about workshop-room: 
	say "[remove workshop-room ask suggestion]";
	say "'I've never been in there, not even to clean. Mr. Wells had the only key to that door.'"


After quizzing Watchett about the workshop-door: [DEL say "[remove workshop-door ask suggestion]'Locked, always locked. Mr. Wells had the only key.'"]
	say "[remove workshop-door ask suggestion]";
	say "'Locked, always locked. Mr. Wells had the only key.'"

After quizzing Watchett about the front door: say "'Best you warm up by the fire first. Much too cold to be outside the way you're dressed.'"
After quizzing Watchett about the pocket watch: say "'That looks like Mr. Wells['] watch. I'd put it on the desk in the library for when he gets back.'"
After quizzing Watchett about the orrery: say "'Built by Mr. Wells,' she says. 'He's quite the inventor, he is.'"
After quizzing Watchett about the petal: say "'Very pretty, I guess. But you cannot tell much about the flower from a single petal.'"
After quizzing Watchett about food: say "'Still hungry after that meal all of you had?' she says. 'Perhaps a cup of tea to calm your stomach?'" 
After quizzing Watchett about her-work: 
	say "[remove her-work ask suggestion]";
	say "'Just cleaning up after tonight's meal,' she says. 'Should be done soon.'"

After quizzing Watchett about poker: say "'Perhaps you should put that back by the fire where it belongs. Best place for it, I think.' she says."

After quizzing Watchett about experiments:
	say "[remove experiments ask suggestion]";
	say "'I wouldn't know anything about Mr. Wells['] experiments. He never talked to me about his work. Did all his those things in his workshop behind closed doors. Raised a dreadful racket sometimes, I tell you.'"

After quizzing Watchett about time travel:
	say "[remove time travel ask suggestion]";
	say "'I wouldn't know anything about that. Running a house, one day at a time, that's my lot in life."

Section - Informing - "Telling About [something]"

After informing Watchett about Wells: say "'Very sad,' she says. 'I'm glad the doctor is involved.'"
After informing Watchett about Humboldt: 
	say "[remove Humboldt tell suggestion]";
	say "'That's very interesting. I'm sure the doctor knows what he's doing.'"

After informing Watchett about the key: say "'I told Mr. Wells that he should have a copy of that key made for times just like this,' she says, tutting softly to herself." 
After informing Watchett about the orrery: say "'Keeps perfect time,' she says. Nothing like it I've ever seen elsewhere."

After informing Watchett about time travel: say "'That's quite the imagination you have sir. You should consider writing books like that Frenchman Mr. Verne does.'"

Section - Imploring - "Asking For [subject]"

After imploring Watchett for "information": say "'You'll have to more specific, sir.'"

Section - Showing

Instead of showing noun to Watchett: try quizzing Watchett about noun.
Instead of showing something to Watchett: say "SHOWING [noun]".

Section - Goodbye

After saying goodbye to Watchett when the farewell type is explicit: 
	say "'GOODBYE TO YOU TO, SIR.'"
	
After saying goodbye to Watchett when the farewell type is implicit:
	say "WITH A BRIEF NOD YOU LEAVE THE ROOM. MRS. WATCHETT SAYS 'WELL I NEVER SAW SOMEONE SO RUDE.' AND CONTINUES HER WORK."

Section - Default Responses

Default ask response for Watchett: say "[one of]'I'm afraid I don't have much to say about that, sir. Anything else I can help you with?'[or]Thinking for a moment, she replies 'I wouldn't know anything about that, sir.'[at random]"

[Default answer response for ]
Default tell response for Watchett: say "[one of]'That's very interesting, sir.'[or]'I'm not sure I understand what you're talking about, sir.'[at random]"
[Default ask-tell response for ]

[Default give response for ]
[Default show response for ]
[Defautl give-show response for ]

Default ask-for response for Watchett: say "'I am afraid I cannot help you with that, sir.'"
[Default yes-no response for ]

[Default response for ]

Chapter - Testing

Test ask-watchett with "a key / a workshop-room / a workshop-door / a front door / a pocket watch / a orrery / a petal / a food / a her-work / a poker / a experiments / a time travel".
Test tell-watchett with "t wells / t humboldt / t key / t orrery / t time travel".
Test ask-for-watchett with "ask watchett for key / ask watchett for information".
Test show-watchett with "show watchett poker / show watchett pocket watch / show watchett snow".

Part - Humboldt 

Humboldt is a person.
Humboldt is male.
Humboldt is in the Entryway.
The printed name of Humboldt is "Dr. Humboldt".

Chapter - Suggestions

[The ask-suggestions are {  }.]
[The tell-suggestions are {  }.]
[The other-suggestions are {  }.]

Chapter - Conversation

Section - Hello

Section - Requests - "Asking For [something]"

Section - Quizzing - "Asking About [something]"

Section - Informing - "Telling About [something]"

Section - Imploring - "Asking For [subjecct]"

Section - Showing

Section - Goodbye

Section - Default Responses

[Default ask response for ]
[Default answer response for ]
[Default tell response for ]
[Default ask-tell response for ]

[Default give response for ]
[Default show response for ]
[Defautl give-show response for ]

[Default ask-for response for ]
[Default yes-no response for ]

[Default response for ]

Chapter - Conversation 

[Instead of telling Humboldt about "wells": try asking Humboldt about it.]
After informing Humboldt about Wells: say "I KNOW I KNOW ALL ABOUT IT." [try quizzing Humboldt about Wells.]

Instead of telling Humboldt about "workshop": try asking Humboldt about it.
Instead of telling Humboldt about "time machine": try asking Humboldt about it.

[After quizzing Humboldt about Wells: say "ASKING HUMBOLDT ABOUT WELLS."]
		
[Instead of asking Humboldt about "wells/madman/patient/lunatic":] 
After quizzing Humboldt about Wells:
	say "'I don't know enough to make a proper diagnosis right now. I'll know more after we get him to the hospital, calm him down, and do a proper examination.'"

Instead of asking Humboldt about "workshop/shop": 
	say "'Never seen the inside of it. I don't think anyone has. Best to ask Mrs. Watchett. She might have a key.'"

Instead of asking Humboldt about "time machine": 
	say "'Nonsense,' Humboldt says. 'Some scientific figmant of his imagination he's dreamed up to make up for some failed hypothesis. I've seen it a hundred times with these scientific types when one of their pet theories goes wrong. Never underestimate the mind's power to deceive and reprogram itself, my friend.'"

