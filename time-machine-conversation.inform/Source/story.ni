The story title is "time-machine-conversations".
The story author is "Bill Maya".
The story headline is "Conversation Experiments for 'The Time Machine'".

When play begins:
	say "This is an attempt at implementing better conversations with various characters from The Time Machine using Eric Eve's conversation extensions. When I'm satisfied with the end result it will be integrated with the existing Time Machine code.[paragraph break]There are only two characters, Watchett and Humboldt, and two locations, Kitchen and Entryway.";
	[Now suggest-on-greeting is false;]
	Now the player is carrying the pocket watch;
	Now the player is carrying the poker.

[ WORDS - 1713 ]

Book - Setup

Part - Extensions

[
Include Epistemology by Eric Eve.
Include Conversation Framework by Eric Eve.
Include Conversation Suggestions by Eric Eve.
Include Conversational Defaults by Eric Eve.
]

Include Conversation Package by Eric Eve. [Can uncomment this Include line and comment out previous four Include lines]

Part - Locations

The Kitchen is a room. "The Entryway is south."
The Kitchen is north of the Entryway.

The Entryway is a room. "The Kitchen is north."

Part - The Key

watchett-key is a truth state that varies.
watchett-key is false.

The key is a thing.

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

Part - Familiarity (for use with Conversation Package by Eric Eve)

Wells is a familiar man.
Humboldt is a familiar man.
[Watchett is a familiar woman.] [Test with > tell humboldt about watchett and see what happens. ]

The key is familiar. 
The workshop-room is a familiar thing. Understand "workshop" as workshop-room.
The workshop-door is a familiar thing. Understand "workshop door" as workshop-door.
The front door is a familiar thing.

The pocket watch is familiar.
The orrery is familiar.
The petal is familiar.
Food is familiar.
The poker is familiar.
The newspaper is familiar.

Part - Subjects (for use with Conversation Package by Eric Eve)

experiments are a subject.
time travel is a subject.
her-work is a subject. Understand "work" or "her work" as her-work. The printed name of her-work is "her work".

Book - Characters

Part - Watchett

Watchett is a person. 
Watchett is female.
Watchett is in the Kitchen.
The printed name of Watchett is "Mrs. Watchett".
The description of Watchett is "Mrs. Watchett is [if Watchett is the current interlocutor]standing there looking patiently at you[otherwise]cleaning up after the evening meal."

Chapter - Suggestions (for use with Conversation Package by Eric Eve)

The ask-suggestions are { Wells, key, time travel, experiments, her-work, self-suggestion }.
The tell-suggestions are { Humboldt }.
[The other-suggestions are { other }.]

Chapter - Conversation (for use with Conversation Package by Eric Eve)

Section - Hello

After saying hello to Watchett when the greeting type is explicit: 
	say "Mrs. Watchett pauses in her work. 'Good evening sir,' she replies."

After saying hello to Watchett when the greeting type is implicit:
	say "Mrs. Watchett pauses in her work and thinks before answering. [run paragraph on]"

Section - Requests - "Asking For [something]"

Instead of requesting Watchett for the key: say "'I'm sorry sir, I don't have it.'"

Section - Quizzing - "Asking About [something]"

After quizzing Watchett about Wells: say "'Always working too hard on his experiments, he is. He probably just needs a bit of a rest.'"
After quizzing Watchett about Humboldt: say "'The doctors been a friend of Mr. Wells for years. Not as long as you but almost as long.'"
After quizzing Watchett about Watchett: say "'I'm really not one to talk about myself,' she says. 'Can I help you in any other way?'"

After quizzing Watchett about the key:
	say "'[key-start] [key-middle] [key-end]'[line break]";
	now watchett-key is true.

After quizzing Watchett about workshop-room: say "'Never been in there, not even to clean. Only Mr. Wells had the key.'"
After quizzing Watchett about the workshop-door: say "'Locked, always locked. Mr. Well had the only key.'"
After quizzing Watchett about the front door: say "'Best you warm up by the fire first. Much too cold to be outside the way you're dressed.'"
After quizzing Watchett about the pocket watch: say "'That looks like Mr. Wells['] watch. I'd put it on the desk in the library for when he gets back.'"
After quizzing Watchett about the orrery: say "'Built by Mr. Wells,' she says. 'He's quite the inventor, he is.'"
After quizzing Watchett about the petal: say "'Very pretty, I guess. But you cannot tell much about the flower from a single petal.'"
After quizzing Watchett about food: say "'Still hungry after that meal all of you had?' she says. 'Perhaps a cup of tea to calm your stomach?'" 
After quizzing Watchett about her-work: say "'Just cleaning up after tonight's meal,' she says. 'Should be done soon.'"
After quizzing Watchett about poker: say "'Perhaps you should put that back by the fire where it belongs. Best place for it, I think.' she says."

After quizzing Watchett about experiments: say "'I wouldn't know anything Mr. Wells['] experiments. He never talked to me about his work. Did all his experiments in his workshop.'"
After quizzing Watchett about time travel: say "'I wouldn't know anything about. Running a house, that's my lot in life."

Section - Informing - "Telling About [something]"

After informing Watchett about Wells: say "'Very sad,' she says. 'I'm glad the doctor is involved.'"
After informing Watchett about Humboldt: say "'That's very interesting. I'm sure the doctor knows what he's doing.'"

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

Chapter - Suggestions (for use with Conversation Package by Eric Eve)

Chapter - Conversation (for use with Conversation Package by Eric Eve)

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

Chapter - Conversation (for use with Conversation Package by Eric Eve)

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

