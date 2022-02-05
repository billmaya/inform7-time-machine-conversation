The story title is "time-machine-conversations".
The story author is "Bill Maya".
The story headline is "Conversation Experiments for 'The Time Machine'".

To say introduction:
	say "This mini-game is an attempt at using Eric Eve's Conversation Package extension with characters, things, and locations from The Time Machine v1.0.[paragraph break]There are three locations:[paragraph break]• Kitchen[line break]• Entryway[line break]• Workshop[paragraph break]There are two characters:[paragraph break]• Mrs. Watchett (will always stay in the kitchen)[line break]• Dr. Humboldt. (will follow you from the Entryway to the Workshop and back)[paragraph break]Dr. Humboldt's responses will change depending on whether you are in the Entryway or the Workshop.[paragraph break]You can interact with each character by asking, telling, or showing them things but should say 'hello' to them before starting a conversation."

When play begins:
	say "[introduction]";
	open right-sidebar window;
	open title-characters window;
	open list-characters window;
	open title-talking-to window;
	open talking-to-character window;
	open title-topics window;
	open character-topics window;
	open title-inventory window;
	open list-inventory window;
	[refresh the list-inventory window; [??? - does not work]]
	now suggest-on-greeting is false;
	now the player is carrying the pocket watch;
	now the player is carrying the petal;
	now the player is carrying the poker.
	
Every turn:
	if the location of Humboldt is not the location of the player:
		if the player is not in the Kitchen:
			let the way be the best route from the location of Humboldt to the location of the player, using doors;
			try Humboldt going the way;
	[if current interlocutor is not nothing:]
		[say "I'M TALKING TO SOMEONE.";]
		[XYZ is the current interlocutor;]
		[xyz is a character variable;]
		[now was-talking-to is the current interlocutor;]
	refresh the list-characters window;
	refresh the talking-to-character window;
	refresh the character-topics window;
	refresh the list-inventory window.
	
[ WORDS - 4362 4334 ]

Volume - Setup

Book - Extensions

[Include Epistemology by Eric Eve.
Include Conversation Framework by Eric Eve.
Include Conversation Suggestions by Eric Eve.
Include Conversational Defaults by Eric Eve.]
Include Conversation Package by Eric Eve. [Can uncomment this Include line and comment out previous four Include lines]

Include Flexible Windows by Jon Ingold.

Book - User Interface

Part - Setup

The right-sidebar window is a graphics g-window spawned by the main window.
The position of the right-sidebar window is g-placeright.
The scale method of the right-sidebar window is g-fixed-size.
The measurement of the right-sidebar window is 290.

The title-characters window is a text grid g-window spawned by the right-sidebar window.
The position of the title-characters window is g-placeabove.
The scale method of the title-characters window is g-fixed-size.
The measurement of the title-characters window is 1.

The list-characters window is a text buffer g-window spawned by the right-sidebar window.
The position of the list-characters window is g-placeabove.
The scale method of the list-characters window is g-fixed-size.
The measurement of the list-characters window is 8.

The title-talking-to window is a text grid g-window spawned by the right-sidebar window.
The position of the title-talking-to window is g-placeabove.
The scale method of the title-talking-to window is g-fixed-size.
The measurement of the title-talking-to window is 1.

The talking-to-character window is a text buffer g-window spawned by the right-sidebar window.
The position of the talking-to-character window is g-placeabove.
The scale method of the talking-to-character window is g-fixed-size.
The measurement of the talking-to-character window is 1.

The title-topics window is a text grid g-window spawned by the right-sidebar window.
The position of the title-topics window is g-placeabove.
The scale method of the title-topics window is g-fixed-size.
The measurement of the title-topics window is 1.

The character-topics window is a text buffer g-window spawned by the right-sidebar window.
The position of the character-topics window is g-placeabove.
The scale method of the character-topics window is g-fixed-size.
The measurement of the character-topics window is 7.

The title-inventory window is a text grid g-window spawned by the right-sidebar window.
The position of the title-inventory window is g-placeabove.
The scale method of the title-inventory window is g-fixed-size.
The measurement of the title-inventory window is 1.

The list-inventory window is a text buffer g-window spawned by the right-sidebar window.
The position of the list-inventory window is g-placeabove.
The scale method of the list-inventory window is g-fixed-size.
The measurement of the list-inventory window is 16.

Part - Rules
	
Rule for refreshing the title-characters window:
	say "You Can Say Hello To". ["You Can Talk To"] ["Characters In The Room".]
	
Rule for refreshing the list-characters window:
	say "[list of people that are not player in location of player]".

Rule for refreshing the title-talking-to window:
	say "You Are Talking To".
	
Rule for refreshing the talking-to-character window:
	if current interlocutor is not nothing:
		say current interlocutor.
	
Rule for refreshing the title-topics window:
	say "Some Topics To Talk About".
	
Rule for refreshing the character-topics window:
	try listing suggested topics.
	
Rule for refreshing the title-inventory window:
	say "You Are Carrying".
	
Rule for refreshing the list-inventory window:
	try taking inventory.
	
Part - Styles

[Table of User Styles (continued)
window	color	background color	font weight	fixed width
title-characters	"#FFFFFF"	"#000000"	light-weight	false
title-talking-to	"#FFFFFF"	"#000000"	light-weight	false
title-topics	"#FFFFFF"	"#000000"	light-weight	false
title-inventory	"#FFFFFF"	"#000000"	light-weight	false]

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

Book - Locations

The Kitchen is a room. "The Entryway is south."
The Kitchen is north of the Entryway.

The Entryway is a room. "The Kitchen is north and the Workshop is east."
	
The Workshop is a room. "The Entryway is west."
The Workshop is east of the Entryway.
Understand "workshop" as Workshop.

Book - The Key

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
		
Book - Other Things

The pocket watch is a thing.
The orrery is a thing.
The petal is a thing.
Food is a thing. Understand "dinner" or "supper" or "meals" or "meal" as food.
The poker is a thing.
The newspaper is a thing.
The blueprints are a thing.
The fuse is a thing.
The time machine is a thing.

xyz-suggestion is a misc-suggestion. The printed name is "say XYZ". [The seqno is 2.]
abc-suggestion is a misc-suggestion. The printed name is "say ABC".

Book - Familiarity 

Wells is a familiar man.
Humboldt is a familiar man.
Watchett is a familiar woman. [Test with > ask/tell humboldt about watchett and see what happens. = Dr. Humboldt does not respond]

The key is familiar. The printed name is "workshop key".
The workshop-room is a familiar thing. Understand "workshop" as workshop-room. The printed name of workshop-room is "workshop".
The workshop-door is a familiar thing. Understand "workshop door" as workshop-door.
The front door is a familiar thing.
The blueprints are a familiar thing.

The pocket watch is familiar.
The orrery is familiar.
The petal is familiar.
Food is familiar.
The poker is familiar.
The newspaper is familiar.

Volume - Subjects 

experiments are a subject. The printed name is "Wells['] experiments".
her-work is a subject. Understand "work" or "her work" as her-work. The printed name of her-work is "her work".

diagnosis is a subject.
examination is a subject.

future is a subject. [Understand "802,701" or "802,701 A.D." as future.]
time travel is a subject.
Eloi are a subject. Understand "eloi" as Eloi.
Weena is a subject. Understand "weena" as Weena.
Morlocks are a subject. Understand "morlock" or "morlocks" as Morlocks.
river is a subject.
sphinx is a subject.
dome is a subject. Understand "domed building" as dome.
shaft is a subject. Understand "tunnels" as shaft.

information is a subject.

Volume - Characters

Book - Watchett

Watchett is a person. 
Watchett is female.
Watchett is in the Kitchen.
The printed name of Watchett is "Mrs. Watchett".
The description of Watchett is "Mrs. Watchett is [if Watchett is the current interlocutor]standing there looking patiently at you[otherwise]cleaning up after the evening meal."

Part - Suggestions 

The ask-suggestions are { Wells, workshop-room, time travel, her-work, self-suggestion }.
The tell-suggestions are { Humboldt }.
[The other-suggestions are { xyz-suggestion, abc-suggestion, yes-no-suggestion }.]

Part - Conversation 

Chapter - Hello

After saying hello to Watchett when the greeting type is explicit: 
	say "Mrs. Watchett pauses in her work. 'Good evening sir,' she replies."

After saying hello to Watchett when the greeting type is implicit:
	say "Mrs. Watchett pauses in her work and thinks before answering. [run paragraph on]"

Chapter - Goodbye

After saying goodbye to Watchett when the farewell type is explicit: 
	say "'GOODBYE TO YOU TO, SIR.'"
	
After saying goodbye to Watchett when the farewell type is implicit:
	say "WITH A BRIEF NOD YOU LEAVE THE ROOM. MRS. WATCHETT SAYS 'WELL I NEVER SAW SOMEONE SO RUDE.' AND CONTINUES HER WORK."
	
Chapter - In The Kitchen

Section - Requests - "Ask [someone] for [thing]"

After requesting Watchett for the key: say "'I'm sorry sir, I don't have it.'"
After requesting Watchett for information: say "INFO INFO INFO."

Section - Quizzing - "Ask [someone] about [thing]"

After quizzing Watchett about Wells: say "[remove Wells ask suggestion][add experiments ask suggestion]'Always working too hard on his experiments, he is. He probably just needs a bit of a rest.'"
After quizzing Watchett about Humboldt: say "'The doctors has been a friend of Mr. Wells for years. Not as long as you but almost as long.'"
After quizzing Watchett about Watchett: say "[remove self-suggestion ask suggestion]'I[']m really not one to talk about myself,' she says. 'Can I help you in any other way?'"

After quizzing Watchett about the key:
	say "'[key-start] [key-middle] [key-end]'[line break]";
	now watchett-key is true.

After quizzing Watchett about workshop-room: 
	say "[remove workshop-room ask suggestion]";
	say "'I've never been in there, not even to clean. Mr. Wells had the only key to that door.'"

After quizzing Watchett about the workshop-door: 
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

Section - Informing - "Tell [someone] about [thing]"

After informing Watchett about Wells: say "'Very sad,' she says. 'I'm glad the doctor is involved.'"
After informing Watchett about Humboldt: 
	say "[remove Humboldt tell suggestion]";
	say "'That's very interesting. I'm sure the doctor knows what he's doing.'"

After informing Watchett about the key: say "'I told Mr. Wells that he should have a copy of that key made for times just like this,' she says, tutting softly to herself." 
After informing Watchett about the orrery: say "'Keeps perfect time,' she says. Nothing like it I've ever seen elsewhere."

After informing Watchett about time travel: say "'That's quite the imagination you have sir. You should consider writing books like that Frenchman Mr. Verne does.'"

Section - Imploring - "Ask [someone] for ['text']"

After imploring Watchett for "facts/details/ideas": say "'You'll have to more specific, sir.'"

Section - Showing

After showing noun to Watchett: try quizzing Watchett about noun.
After showing something to Watchett: say "SHOWING [noun]".

Chapter - Default Responses

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

Part - Testing

Test ask-watchett with "a key / a workshop-room / a workshop-door / a front door / a pocket watch / a orrery / a petal / a food / a her-work / a poker / a experiments / a time travel".
Test tell-watchett with "t wells / t humboldt / t key / t orrery / t time travel".
Test ask-for-watchett with "ask watchett for key / ask watchett for information".
Test show-watchett with "show watchett poker / show watchett pocket watch / show watchett snow".

Test basic-watchett with "say hi to watchett / ask watchett for key / ask watchett about wells / tell watchett about wells / ask watchett for information / ask watchett for experiments / show watch to watchett".

Book - Humboldt 

Humboldt is a person.
Humboldt is male.
Humboldt is in the Entryway.
The printed name of Humboldt is "Dr. Humboldt".

Part - Suggestions

The ask-suggestions are { Wells }.
[The tell-suggestions are {  }.]
[The other-suggestions are {  }.]

Part - Conversation

Chapter - Hello

Chapter - Goodbye

Chapter - Both Opening & Ending Scenes

Section - Requests - "Ask [someone] for [thing]"

Section - Quizzing - "Ask [someone] about [thing]"
	
To say science-fiction: say "'Science fiction if you ask me.'"
After quizzing Humboldt about time travel: say "[science-fiction]".

After quizzing Humboldt about the poker: say "'Where did you get that?'"
	
After quizzing Humboldt about Humboldt: say "Dr. Humboldt is much too professional and polite to start rambling on about himself, especially in this sort of situation."
After quizzing Humboldt about player: say "Perhaps you should focus on the situation at hand instead of yourself."
After quizzing Humboldt about Watchett: say "I think she is in the kitchen."

Section - Informing - "Tell [someone] about [thing]"	
	
After informing Humboldt about Wells: say "I KNOW I KNOW ALL ABOUT IT."
After informing Humboldt about the workshop-room: try quizzing Humboldt about the second noun. [break into Opening Scene and Ending Scene]
After informing Humboldt about the time machine: try quizzing Humboldt about the second noun.
	
Section - Imploring - "Ask [someone] for ['text']"

Section - Showing
	
Section - Testing
	
Test both-humboldt with "say hello to humboldt / ask humboldt about time travel / ask humboldt about poker / ask humboldt about himself / ask humboldt about watchettt / ask humboldt about self / tell humboldt about wells / tell humboldt about workshop / tell humboldt about time machine".

Chapter - Opening Scene Only

Section - Requests - "Ask [someone] for [thing]"

Section - Quizzing - "Ask [someone] about [thing]"

After quizzing Humboldt about Wells during Opening Scene: say "'I don't know enough to make a proper diagnosis right now. I'll know more after we get him to the hospital, calm him down, and do a proper examination.'"
After quizzing Humboldt about workshop-room during Opening Scene: say "'Never seen the inside of it. I don't think anyone has. Best to ask Mrs. Watchett. She might have a key.'"
After quizzing Humboldt about diagnosis during Opening Scene: say "'Too early to tell.'"
After quizzing Humboldt about examination during Opening Scene: say "'First thing to do is get him to my hospital. Get him admitted and sedated. Probably won't be able to do a proper examination until he's calmed down.'";
After quizzing Humboldt about time machine during Opening Scene: say "'Nonsense,' Humboldt says. 'Some scientific figmant of his imagination he's dreamed up to make up for some failed hypothesis. I've seen it a hundred times with these scientific types when one of their pet theories goes wrong. Never underestimate the mind's power to deceive and reprogram itself, my friend.'";
After quizzing Humboldt about pocket watch during Opening Scene: say "'Looks like Wells['] watch. I[']ll have my hands full with him so why don't you hold onto it until we get back.'"
After quizzing Humboldt about the petal during Opening Scene: say "'You going to find the rest of it so we can convince Wells that his story is nonsense, a figment of his imagination.'"
After quizzing Humboldt about the key during Opening Scene: say "'You[']ll have to ask Mrs. Watchett about that.'"

To say figment-imagination: say "'Figment of Wells['] imagination I assume.'"
After quizzing Humboldt about eloi during the Opening Scene: say "[figment-imagination]".
After quizzing Humboldt about weena during the Opening Scene: say "[figment-imagination]".
After quizzing Humboldt about morlocks during the Opening Scene: say "[figment-imagination]".
	
[After quizzing Humboldt about Humboldt during Opening Scene: say "Dr. Humboldt is much too professional and polite to start rambling on about himself, especially in this sort of situation."
After quizzing Humboldt about player during Opening Scene: say "Perhaps you should focus on the situation at hand instead of yourself."]
				
Section - Informing - "Tell [someone] about [thing]"

Section - Imploring - "Ask [someone] for ['text']"

Section - Showing

After showing noun to Humboldt during Opening Scene: try quizzing Humboldt about noun.
After showing something to Humboldt during Opening Scene: say "SHOWING [noun]".

Section - Testing

Test open-humboldt with "say hello to humboldt / ask humboldt about wells / ask humboldt about workshop / ask humboldt about diagnosis / ask humboldt about examination / ask humboldt about time machine / ask humboldt about pocket watch / ask humboldt about petal / ask humboldt about key / ask humboldt about eloi / ask humboldt about  weena / ask humboldt about morlocks / show poker to humboldt / show pocket watch to humboldt / show petal to humboldt".

Chapter - Ending Scene Only

Section - Requests - "Ask [someone] for [thing]"

Section - Quizzing - "Ask [someone] about [thing]"

After quizzing Humboldt about Wells during Ending Scene: say "'He's sedated and resting.'"
After quizzing Humboldt about workshop-room during Ending Scene: say "Humboldt looks around the workshop. He examines [one of]some machinery[or]some tools[or]the blackboard equations[or]the blackboard diagrams[or]the workbench[or]the time machine[at random]. '[one of]Interesting[or]Fascinating[or]Hmm[or]That's odd[at random]' is his only comment."
After quizzing Humboldt about diagnosis during Ending Scene: say "'Unless you found some new evidence it doesn't look good for Wells. He still believes he travelled to the year 802,701 A.D.'"
After quizzing Humboldt about examination during Ending Scene: say "'The preliminaries are already completed. I'll write my summary after you tell me what you found here."
After quizzing Humboldt about time machine during Ending Scene: say "'Outside my area of expertise, I'm afraid.'"
After quizzing Humboldt about pocket watch during Ending Scene: say "'I[']m glad to see that you have held onto Wells['] watch.'"
After quizzing Humboldt about the petal during Ending Scene: say "'I gave that to you earlier. You were supposed to find the rest of it so we could convince Wells that his story was nonsense, a figment of his imagination. Did you find it?'"
After quizzing Humboldt about the key during Ending Scene: say "'[one of]I knew you would find it. [or]Mrs. Watchett knew where it was, I bet. [or]Good job. [or]Obviously it[']s the workshop key since we[']re standing in the bloody place. [at random]What have you found?'"
After quizzing Humboldt about the blueprints during the Ending Scene: say "'Your guess is as good as mind.'"
After quizzing Humboldt about the fuse during the Ending Scene: say "'Looks like it fits into that contraption Wells has constructed.'"

After quizzing Humboldt about eloi during the Ending Scene: say "[figment-imagination]".
After quizzing Humboldt about weena during the Ending Scene: say "[figment-imagination]".
After quizzing Humboldt about morlocks during the Ending Scene: say "[figment-imagination]".

After quizzing Humboldt about the blueprints during Ending Scene: say "Humboldt takes the blueprints and walks over to the time machine. Shuffling the pages he manages to tie each blueprint diagram with its counterpart on the physical machine. After satisfying himself he returns the blueprints to you. 'Impressive workmanship. But there's no proof that it does what Wells says it does,' he says."
After quizzing Humboldt about the fuse during the Ending Scene: say "Humbold briefly examines the fuse, turning it over in his hands, before returning it to you." [BURNT OUT vs. WORKING ?]

[After quizzing Humboldt about Humboldt during Ending Scene: say "Dr. Humboldt is much too professional and polite to start rambling on about himself, especially in this sort of situation."
After quizzing Humboldt about player during Ending Scene: say "Perhaps you should focus on the situation at hand instead of yourself."]

Section - Informing - "Tell [someone] about [thing]"

After informing Humboldt about the petal during the Ending Scene: say "'I know all that. But did you find the rest of the flower?'"
After informing Humboldt about the time machine during the Ending Scene: say "'I'd like to believe that it does what you say it does but we've no proof.'"
After informing Humboldt about the workshop-room during the Ending Scene: say "Humboldt listens dispassionately as you enthusiastically point out various areas of the workshop, a nonplussed look on his face."
After informing Humboldt about the fuse during the Ending Scene: say "Humboldt nods slightly as you explain how the fuse is necessary for the time machine[']s operation."

After informing Humboldt about time travel during the Ending Scene:
	say "Humboldt listens as you try to expain your time travel experience in the future as best you can with a [patience of Humboldt] look on his face.";
	follow Patience rules.

After informing Humboldt about the future during the Ending Scene:
	say "Humboldt listens as you recount your experiences in 802,701 A.D. with a [patience of Humboldt] look on his face.";
	follow Patience rules.

After informing Humboldt about Eloi during the Ending Scene:
	say "Humboldt listens as you recount your experience with the Eloi with a [patience of Humboldt] look on his face.";
	follow Patience rules.

After informing Humboldt about Weena during the Ending Scene:
	say "Humboldt listens to you recount your experience with Weena with a [patience of Humboldt] look on his face.";
	follow Patience rules.

After informing Humboldt about Morlocks during the Ending Scene:
	say "Humboldt listens to you recount your experience with the Morlocks with a [patience of Humboldt] look on his face.";
	follow Patience rules.
	
After informing Humboldt about river during the Ending Scene:
	say "Humboldt listens to you recount your experience at the river with a [patience of Humboldt] look on his face.";
	follow Patience rules.

After informing Humboldt about sphinx during the Ending Scene:
	say "Humboldt listens to you recount your description of the clearing and the sphinx with a [patience of Humboldt] look on his face.";
	follow Patience rules.
	
After informing Humboldt about dome during the Ending Scene:
	say "Humboldt listens to you recount your description of the domed building with a [patience of Humboldt] look on his face.";
	follow Patience rules.
	
After informing Humboldt about shaft during the Ending Scene:
	say "Humboldt listens to you recount your description of the shaft and tunnels with a [patience of Humboldt] look on his face.";
	follow Patience rules.

Section - Imploring - "Ask [someone] for ['text']"

Section - Showing

After showing noun to Humboldt during Ending Scene: try informing Humboldt about noun. [<- Informing, not Quizzing i.e. Tell [someone] about [thing] vs. Ask [someone] about [thing]]
After showing something to Humboldt during Ending Scene: say "SHOWING [noun]".

Section - Testing

Test end-humboldt with "say hello to humboldt / ask humboldt about wells / ask humboldt about workshop / ask humboldt about diagnosis / ask humboldt about examination / ask humboldt about time machine / ask humboldt about pocket watch / ask humboldt about petal / ask humboldt about key / ask humboldt about fuse / ask humboldt about blueprints / ask humboldt about eloi / ask humboldt about  weena / ask humboldt about morlocks / show poker to humboldt / show pocket watch to humboldt / show petal to humboldt / tell humboldt about petal / tell humboldt about time machine / tell humboldt about workshop / tell humboldt about fuse".

Test patience-humboldt with "say hello to humboldt / tell humboldt about time travel / tell humboldt about future / tell humboldt about eloi / tell humboldt about weena / tell humboldt about morlocks / tell humboldt about river / tell humboldt about sphinx / tell humboldt about dome / tell humboldt about shaft / tell humboldt about tunnels".

Chapter - Default Responses

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

Part - Testing

Test basic-humboldt with "say hi to humboldt / ask humboldt about wells / ask humboldt about workshop / ask humboldt about diagnosis / ask humboldt about examination".



Part - Patience

[Writing §4.9. Using new kinds of value in properties]
patience is a kind of a value.
The patiences are accepting, tolerant, impatient, frustrated, angry. 
	
Humboldt has patience. Humboldt is accepting.
	
Patience rules is a rulebook. [Writing §19. Rulebooks - §19.2, §19.3, §19.8]

A patience rule:
	if the patience of Humboldt is:
		-- accepting:
			now the patience of Humboldt is tolerant;
		-- tolerant:
			now the patience of Humboldt is impatient;
		-- impatient:
			now the patience of Humboldt is frustrated;
		-- frustrated:
			now the patience of Humboldt is angry;
		-- angry:
			now the patience of Humboldt is angry.
	
Volume - Scenes

Book - Opening Scene

Opening Scene is a scene.

Opening Scene begins when play begins.

When Opening Scene begins: say "OPENING SCENE BEGINS."

Opening Scene ends when player is in the Workshop.

When Opening Scene ends: say "OPENING SCENE ENDS."

Book - Ending Scene

Ending Scene is a scene.

Ending Scene begins when Opening Scene ends.

When Ending Scene begins: say "ENDING SCENE BEGINS."

When Ending Scene ends: say "ENDING SCENE ENDS."


