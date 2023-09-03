VAR asked_about_rob = false
VAR spoken_with_foreman = false


=== Intro ===
The setting is California, 1851. The infamous Gold Rush is in full swing.

Thousands of prospectors, adventurers, and fortune-seekers have flocked to the west to seek their fortune.

//Showing Victim

Some have come across unimaginable wealth.

//Showing Hesutu, mining

Others are just trying to make a living.

//Camera pans around the mine, the sound of pickaxes striking rock, and the flickering light of lanterns

But in the dark tunnels of the California mines, danger lurks around every corner.

//The scene changes to show the detective, Nicholas Fairchild, standing at the entrance of the mine.

Nicholas Fairchild, a Pinkerton detective, has been hired to investigate a series of thefts at a mine owned by Bill Thompson.

//The screen fades to black, and the game begins.

//The scene starts with Nicholas and John standing at the entrance of the mine. Bill Thompson, the mine owner, approaches them

Bill: "Ah, you must be Mr. Harper, the detective. Some of my colleagues have told me wonderful things about what you do. I'm Bill Thompson, the owner of this mine."

//The player is given a choice of how to respond.

* Get started.
  "Pleased to meet you, Mr. Thompson. I understand the mine has been operating very nicely for you. Anyway, I'll get started right away."
-> DONE

* Inquire.
  "Yes, that's right. I understand there have been some thefts recently?"
    Bill: "Indeed, there have. It's been a real problem, and I'm at my wit's end. I'm hoping you can get to the bottom of it."
    Nicholas: "I'll do what I can, of course. I'll start by familiarizing myself with the people here at the mine."
-> DONE

=== Investigation1 ===
//This is the content of the knot.

//Nicholas is now free to move around and interact with the environment and the other characters.

= sheriff_intro
"The sheriff is a middle-aged man with a stern expression and a no-nonsense demeanor."
* Introduce yourself.
  "Good day, sir. I am Detective Nicholas Fairchild. I have been engaged to investigate the recent thefts in this mine."
  "The sheriff nods curtly. 'I'm Sheriff Hawkins. 'Bout time someone came to look into this mess.'"
  -> sheriff_questions
* Never mind.
-> DONE

= sheriff_questions
* Ask about the thefts.
  "'Have you observed anything unusual of late, Sheriff? Any peculiar behavior from the miners or anything out of the ordinary?'"
  "'Ain't seen nothin' myself, but I can't be everywhere at once. Bill's got me watchin' over everyone to make sure it don't happen again. He's real protective of his property like that. Real good head for business.'"
  -> sheriff_questions
* Ask casual questions.
  "'How's the day treating you, Sheriff?'"
  "'Been better, been worse. Just another day in paradise.' He says sarcastically."
  -> sheriff_questions
* Never mind.
-> DONE

= foreman_intro
"Tom Carter, the foreman, is a serious-looking man in his forties with a strong build and a no-nonsense demeanor. He has a pocket watch in his vest pocket."
* Introduce yourself.
  "Greetings, Mr. Carter. I am Nicholas Fairchild, the detective assigned to investigate the recent thefts."
  "Tom nods. 'Tom Carter, foreman. About time someone took this matter seriously. We've been plagued with troubles of late.'"
  -> foreman_questions
* Never mind.
  -> DONE

= foreman_questions
* Inquire about the thefts.
  "'Have you perceived any oddities of late, Mr. Carter? Any peculiar conduct amongst the miners, or anything out of the ordinary?'"
  "'I've been run ragged managing other issues. Haven't had much time to observe. But I can tell you, spirits are low, and folks are tense.'"
  -> foreman_questions
* Probe about the other issues.
  "'What other issues have been occupying your time?'"
  "'The mine's been demanding a lot of attention to keep operational. We're short-handed, and the men are working long hours just to keep up, myself included.'"
  -> foreman_questions
* Compliment the pocket watch.
  "'That's a fine pocket watch you have there, Mr. Carter.'"
  "Tom smiles, a rare occurrence. 'Thank you, Mr. Fairchild. It was a gift from my father.'"
  -> foreman_questions
* Make small talk.
  "'How many years have you been involved in mining, Mr. Carter?'"
  "'Most of my life, in one way or another. Been foreman here for the past five years. As you know, business has picked up lately, but we haven't seen much of that other than the extra workload.'"
  ~ spoken_with_foreman = true
  -> foreman_questions
* Never mind.
-> DONE

  
= hesutu_intro
"Hesutu is a young man in his late twenties with a reserved and cautious demeanor."
* Introduce yourself.
  "Greetings. I am Nicholas Fairchild. I'm a detective, assigned to investigate a series of recent thefts."
  "Hesutu nods slightly. 'Hesutu.' He says simply."
  -> hesutu_questions
* Never mind.
  -> DONE

= hesutu_questions
* Inquire about the thefts.
  "'Have you noticed anything unusual lately, Hesutu? Any strange behavior amongst the miners, or anything out of the ordinary?'"
  "'No.' He says quietly."
  -> hesutu_questions
* Ask about his tribe.
  "'Are you from a nearby tribe, Hesutu? May I ask which one?'"
  "'Miwok.' He replies."
  -> hesutu_questions
* Make small talk.
  "'How long have you been working in the mine, Hesutu?'"
  "'Few months.' He replies."
  -> hesutu_questions
* Never mind.
-> DONE
  
= rob_intro
"Robert 'Rob' Davis is a charismatic man in his mid-forties with graying hair and a neatly trimmed mustache. He is wearing a suit and hat, as befitting his status as a businessman."
* Introduce yourself.
  "Greetings, Mr. Davis. I am Nicholas Fairchild, the detective assigned to investigate the recent thefts."
  "Rob extends his hand. 'Pleased to meet you, Mr. Fairchild. I'm Rob Davis, a business partner of the mine. I must say, it's about time someone looked into this matter.'"
  -> rob_questions
* Never mind.
  -> DONE

= rob_questions
* Inquire about the thefts.
  "'Have you observed anything unusual lately, Mr. Davis? Any peculiar behavior amongst the miners, or anything out of the ordinary?'"
  "'I can't say I have, Mr. Fairchild. I leave the day-to-day operations to the foreman and the mine owner. My focus is on the business side of things.'"
  -> rob_questions
* Ask about his relationship with the mine owner.
  { asked_about_rob:
    "'I've heard rumors that you and the mine owner have had your share of disagreements. Is there any truth to that?'"
    "Rob raises an eyebrow. 'We've had our differences, as any business partners do, but nothing out of the ordinary. I have the utmost respect for him, of course.'"
  }
  -> rob_questions
* Make small talk.
  "'How long have you been involved in the mining business, Mr. Davis?'"
  "'Oh, for many years now. It's been a rewarding, if challenging, endeavor.'"
  -> rob_questions
* Never mind.
-> DONE

  
= wilsons_intro
"James and John Wilson are two burly miners in their thirties, covered in dirt and sweat from a hard day's work in the mine."
* Introduce yourself.
  "Greetings, gentlemen. I am Nicholas Fairchild, a detective assigned to investigate some recent thefts that have been taking place here in the mines."
  "James grins and extends his hand. 'Pleased to meetcha, Mr. Fairchild. I'm James, and this here's my brother, John.' John nods."
  -> wilsons_questions
* Never mind.
  -> DONE

= wilsons_questions
* Inquire about the thefts.
  "'Have you gentlemen observed anything unusual lately? Any peculiar behavior amongst the miners, or anything out of the ordinary?'"
  "John shakes his head. 'Nah, ain't seen nothin'. Too busy workin' to notice much else.' James nods in agreement."
  -> wilsons_questions
* Ask about Rob.
  "'What can you tell me about Mr. Davis, the business partner of the mine owner?'"
  "James shrugs. 'He's alright, I s'pose. Keeps to hisself mostly. Don't really mingle with the likes of us.' John adds, 'Heard him and the boss arguin' a time or two, though.'"
  ~ asked_about_rob = true
  -> wilsons_questions
* Make small talk.
  "'How long have you gentlemen been working in the mine?'"
  "John answers, 'Been workin' here 'bout ten years now. It's hard work, but it pays the bills.' James adds, 'Yeah, but it don't pay enough for all the trouble we been havin' lately.' John shoots him a warning look."
  -> wilsons_questions
* Never mind.
-> DONE
 
= hank_intro
"Hank Miller is a young, attractive man with a mild-mannered demeanor."
* Introduce yourself.
  "Greetings, Mr. Miller. I am Nicholas Fairchild, the detective assigned to investigate the recent thefts in this mine."
  "Hank smiles politely. 'Nice to meet ya, Mr. Fairchild. I'm Hank Miller. Sure hope ya can figure out them thefts.'"
  -> hank_questions
* Never mind.
  -> DONE

= hank_questions
* Inquire about the mine owner.
  "'What can ya tell me about the mine owner, Mr. Miller?'"
  "'Oh, he's a good fella, real generous and kind-hearted. Always lookin' out for us folks workin' for him.'"
  -> hank_questions
* Press Hank on the work conditions in the mine.
  { spoken_with_foreman:
    "'I hear there's been a heap of trouble at the mine lately. Know anything 'bout that?'"
    "'Well, I know the foreman's been workin' all hours tryin' to keep the mine runnin'. We're all feelin' it, that's for sure.'"
  }
  -> hank_questions
* Make small talk.
  "'How long ya been workin' at the mine, Mr. Miller?'"
  "'Just a few months. It's hard work, but it pays the bills.'"
  -> hank_questions
* Never mind.
-> DONE

= wooden_supports
"The wooden supports look old and worn, but they seem to be holding up for now."
* Examine the supports more closely.
    "You take a closer look at the supports. They are definitely showing signs of wear and tear, and you notice a few cracks in the wood. It's a wonder they are still holding up the mine."
    -> wooden_supports
* Continue looking around.
    -> DONE

= lamps
"One of the many lamps that light up the mine."
* Examine the lamp.
  "You take a closer look at the lamp. It's a typical oil lamp. The flame flickers steadily."
  -> lamps_questions
* Continue looking around.
-> DONE

= lamps_questions
* Check the oil level.
    "You check the oil level in the lamp. It's about half full, which means it should last for several more hours."
    -> lamps_questions
* Leave the lamp.
-> DONE

= mine_cart
"A mine cart sits on the tracks, empty and abandoned."
* Examine the mine cart.
  "You take a closer look at the mine cart. It's empty, but there are some scratches on the inside that look recent. It seems like it was used not too long ago."
  -> mine_cart_questions
* Continue looking around.
-> DONE

= mine_cart_questions
* Look for any clues inside the cart.
    "You search the mine cart carefully, but you don't find anything of interest. Just some dirt and a few small rocks."
    -> mine_cart_questions
* Leave the mine cart.
-> DONE

= pickaxe
"A lone pickaxe lies on the ground, leaning against the wall."
* Examine the pickaxe.
  "You take a closer look at the pickaxe. It looks like any other pickaxe, but the fact that it sits unused strikes you as odd."
  -> pickaxe_questions
* Continue looking around.
-> DONE

= pickaxe_questions
* Pick up the pickaxe.
    "You pick up the pickaxe and examine it more closely. The handle is worn from use, and the head is covered in dirt. It doesn't seem like there's anything unusual about it."
    -> pickaxe_questions
* Leave the pickaxe.
-> DONE

=== CaveInCutscene ===

"CRACK! The wooden supports creak ominously."

Sheriff: "Did you hear that?"

Nicholas: "Watch out!"

"The lamps flicker and go out, plunging the mine into darkness."

Sheriff: "Damn it, where are my matches?"

//The lantern is lit, revealing the mine owner, Bill Thompson, lying dead on the ground.

Sheriff: "Oh no, it's Bill!"

Rob: "Good God!"

Nicholas: "He's dead. It looks like he was killed with this pickaxe."

Sheriff: "We're trapped in here. The cave-in has blocked the exit."

* Continue
  -> CutScene1

= CutScene1

Nicholas: "We need to stay calm. But first, everyone needs to stay in the main room. I'm going to get to the bottom of who the killer is."

//Mike Wilson, Hesutu, and Tom Carter rush in.

Mike: "What the hell happened?!"

Hesutu: "Is he...?"

Tom: "Bill! No!"

Hank: "And how do we know you're not the killer, detective?"

* Continue
  -> CutScene2

= CutScene2

Nicholas: "I understand your suspicion, Mr. Miller. But I assure you, I am here to help. I can prove my own innocence in time. For now, we need to focus on finding the killer."Based on the proximity of the pickaxe to the corpse and to each person's position when the lights went out, the only possible suspects are Jim Wilson, Rob Davis, and Hank Miller. Isn't that right, Mr. Carter?"

Tom: "I'd say so. I checked the time just before the lights went out and then again when they came back on. Only a few seconds passed, not nearly enough time for someone to move across the room, commit the murder, and then return to their original position."

Jim: "What in tarnation?! This is hogwash!"

* Continue
  -> CutScene3

= CutScene3

Rob: "Preposterous! Surely you jest, detective."

Hank: "I can't believe my ears. This is absurd!"

Nicholas: "Given the circumstances, it is plausible that the three suspects may not provide an accurate recollection of the events leading up to the cave-in. Instead, I shall interview those who are certainly innocent to construct a solid understanding of the transpired events, which will aid in accurately identifying the perpetrator. That means that Mr. Mike Wilson, Mr. Thomas Carter, and Hesutu will be our prime witnesses. To start, I'd love to hear a recounting of events from Mr. Carter. Is that alright with you, Mr. Carter?

Tom: Sure thing.
-> DONE

//Fade to black

=== TomRecollection ===

VAR asked_about_day = false
VAR asked_about_argument = false
VAR asked_about_hank = false
-> tom_jim_intro

= tom_jim_intro
"Jim Wilson is a hardworking miner, but he sure can be a hot-head at times."
* Mention the argument with Mike.
  "'Heard you and Mike had a bit of a spat earlier. Everything alright?'"
  "Jim looks a bit sheepish. 'Yeah, it was nothing really. Just a bit of a misunderstanding about some missing tools. We sorted it out.'"
  -> tom_jim_questions
* Comment on the working conditions.
  "'It's been a tough day, hasn't it? Those old supports are giving us a hard time.'"
  "Jim frowns. 'Yeah, it's been rough. We're all feeling the strain. But we need the money, don't we?'"
  -> tom_jim_questions
* Mention Rob Davis.
  "'Saw Rob hanging around earlier. He always seems to be lurking, doesn't he?'"
  "Jim scowls. 'Yeah, that man is always sniffing around, looking for ways to squeeze more money out of us.'"
  -> tom_jim_questions
* Ask about the thefts.
  "'There have been some thefts around the mine lately. Have you noticed anything unusual?'"
  "Jim looks defensive. 'I haven't taken anything, if that's what you're asking. I've got enough problems without being accused of stealing.'"
  -> tom_jim_questions
* Never mind.
  -> DONE

= tom_jim_questions
* Press about the argument.
  "'Glad to hear it was just a misunderstanding. We don't need any more trouble, do we?'"
  "Jim shifts uncomfortably. 'No, we don't. I felt bad about it, to be honest. I accused Mike of taking my tools, but I found them later. I apologized and everything.'"
  ~ asked_about_argument = true
  -> tom_jim_questions
* Ask about Hank Miller.
  "'What do you think of Hank Miller? He seems like a good lad.'"
  "Jim shrugs. 'Yeah, he's alright. Always willing to lend a hand. A bit green, maybe, but he's learning.'"
  ~ asked_about_hank = true
  -> tom_jim_questions
* Ask about the rest of the day.
  "'Anything else interesting happen today?'"
  "Jim thinks for a moment. 'Not really. Just the usual stuff. Although I did see Rob talking to Hank privately. I didn't think much of it at the time.'"
  ~ asked_about_day = true
  -> tom_jim_questions
* Never mind.
  -> DONE


 = tom_rob_intro
"Rob Davis is a business partner of the mine, always dressed sharply and carrying himself with an air of importance."
* Mention Jim's observation.
  { asked_about_day:
    "'Jim mentioned he saw you talking to Hank privately. Anything I should be aware of?'"
    "Rob raises an eyebrow. 'Just discussing some business matters. Nothing for you to worry about, Tom.'"
    -> tom_rob_questions
  }
* Comment on the mine's condition.
  "'The mine's been in a rough state lately. It's been hard keeping everything running smoothly.'"
  "Rob nods sympathetically. 'I can imagine. It's a tough job you have, Tom. But I know you're doing your best.'"
  -> tom_rob_questions
* Ask about the thefts.
  "'Any progress on figuring out who's behind the thefts?'"
  "Rob shakes his head. 'Unfortunately, no. It's been frustrating, to say the least. But I have every confidence that you'll help us figure it out.'"
  -> tom_rob_questions
* Never mind.
  -> DONE

= tom_rob_questions
* Press about the conversation with Hank.
  { asked_about_day:
    "'I understand it's business, but everything affects the mine and the men working here.'"
    "Rob sighs. 'I know, Tom. I didn't mean to be dismissive. We were discussing the possibility of bringing in some additional help to ease the workload.'"
    -> tom_rob_questions
  }
* Ask about his relationship with Bill.
  "'How's your relationship with Bill these days? I know you two have had your differences.'"
  "Rob looks a bit uncomfortable. 'We've had our disagreements, certainly. But we're both committed to making this mine a success.'"
  -> tom_rob_questions
* Mention the argument between Jim and Mike.
  { asked_about_argument:
    "'Jim and Mike had a bit of an argument earlier about some missing tools. Seems to be resolved now, though.'"
    "Rob looks concerned. 'I hate to hear that. It's important for everyone to get along, especially in times like these.'"
    -> tom_rob_questions
  }
* Never mind.
  -> DONE

= tom_hank_intro
"Hank Miller is a young and enthusiastic miner, always eager to prove himself."
* Ask about his conversation with Rob.
  { asked_about_day:
    "'Jim mentioned he saw you talking to Rob privately. Anything I should be aware of?'"
    "Hank looks surprised and a bit nervous. 'Oh, uh, it was nothing important. Just some general stuff about the mine.'"
    -> tom_hank_questions
  }
* Comment on the mine's condition.
  "'The mine's been in a rough state lately. It's been hard keeping everything running smoothly.'"
  "Hank nods vigorously. 'Yeah, it's been tough. But we're all doing our best, right?'"
  -> tom_hank_questions
* Ask about the thefts.
  "'There have been some thefts around the mine lately. Have you noticed anything unusual?'"
  "Hank looks defensive and a bit panicked. 'I-I haven't taken anything, if that's what you're asking. I'm just here to do my job.'"
  -> tom_hank_questions
* Never mind.
  -> DONE

= tom_hank_questions
* Press about the conversation with Rob.
  { asked_about_day:
    "'I understand it's just general stuff, but everything affects the mine and the men working here.'"
    "Hank nods, looking a bit relieved. 'I know, Tom. I didn't mean to be dismissive. We were just discussing the possibility of bringing in some additional help to ease the workload.'"
    -> tom_hank_questions
  }
* Ask about his relationship with Bill.
  "'How's your relationship with Bill these days? I know he's the owner, but you two seem to get along well.'"
  "Hank blushes slightly and stammers a bit. 'Y-Yeah, we get along fine. He's a good boss.'"
  -> tom_hank_questions
* Mention the argument between Jim and Mike.
  { asked_about_argument:
    "'Jim and Mike had a bit of an argument earlier about some missing tools. Seems to be resolved now, though.'"
    "Hank looks concerned and a bit guilty. 'I hate to hear that. It's important for everyone to get along, especially in times like these.'"
    -> tom_hank_questions
  }
* Never mind.
  -> DONE


= tom_hesutu_intro
"Hesutu is a member of the Miwok tribe and a relatively new addition to the mining team."
* Ask about his day.
  "'How was your day, Hesutu? Anything unusual happen?'"
  "Hesutu shakes his head."
  -> tom_hesutu_questions
* Comment on the mine's condition.
  "'The mine's been in a rough state lately. It's been hard keeping everything running smoothly.'"
  "Hesutu nods."
  -> tom_hesutu_questions
* Ask about the thefts.
  "'There have been some thefts around the mine lately. Have you noticed anything unusual?'"
  "Hesutu frowns. 'I have not seen anything.'"
  -> tom_hesutu_questions
* Never mind.
  -> DONE

= tom_hesutu_questions
* Ask about his relationship with the other miners.
  "'How are you getting along with the other miners? Any issues?'"
  "Hesutu shrugs. 'I keep to myself."
  -> tom_hesutu_questions
* Ask about his thoughts on the mine owner, Bill.
  "'What do you think of Bill, the mine owner?'"
  "Hesutu looks thoughtful. 'I do not know him well.'"
  -> tom_hesutu_questions
* Mention the argument between Jim and Mike.
  { asked_about_argument:
    "'Jim and Mike had a bit of an argument earlier about some missing tools. Seems to be resolved now, though.'"
    "Hesutu nods. 'It is good that it is resolved.'"
    -> tom_hesutu_questions
  }
* Never mind.
  -> DONE

= tom_mike_intro
"Mike Wilson, Jim's brother, has been working in the mine for several years."
* Ask about his day.
  "'How was your day, Mike? Anything unusual happen?'"
  "Mike rubs his forehead. 'Same as always, Tom. Back-breaking work and not much to show for it.'"
  -> tom_mike_questions
* Comment on the mine's condition.
  "'The mine's been in a rough state lately. It's been hard keeping everything running smoothly.'"
  "Mike grimaces. 'Tell me about it. Feels like everything's falling apart around us.'"
  -> tom_mike_questions
* Ask about the thefts.
  "'There have been some thefts around the mine lately. Have you noticed anything unusual?'"
  "Mike shakes his head, looking worried. 'I haven't seen anything, but it's got everyone on edge. We can't afford to lose anything else.'"
  -> tom_mike_questions
* Never mind.
  -> DONE

= tom_mike_questions
* Ask about his relationship with Jim.
  "'How are things between you and Jim? I heard there was a bit of an argument earlier.'"
  "Mike looks a bit embarrassed. 'Yeah, we had a spat about some missing tools. Turns out it was a misunderstanding. We're good now.'"
  ~ asked_about_argument = true
  -> tom_mike_questions
* Ask about his thoughts on Rob Davis.
  "'What do you think of Rob Davis?'"
  "Mike raises an eyebrow. 'He's a bit of a mystery, isn't he? Always dressed sharp, but doesn't say much to us miners.'"
  -> tom_mike_questions
* Ask about his thoughts on Hank Miller.
  "'What do you think of Hank Miller?'"
  "Mike grins. 'Hank's alright. Young and a bit naive, but he's got a good heart.'"
  -> tom_mike_questions
* Never mind.
  -> DONE

= transition_to_present_day1
"As Tom finishes his recollection of the past, the scene transitions back to the present day. The detective, having listened intently to Tom's account, prepares to interview Mike Wilson."
*Continue
-> DONE

=== MikeRecollection ===

VAR talked_to_jim = false
VAR talked_to_rob = false
VAR talked_to_hank = false
VAR talked_to_bill = false
VAR talked_to_hesutu = false
VAR asked_about_thefts = false
VAR asked_about_mine_condition = false
VAR jim_negative_attitude = false
VAR jim_stealing = false
VAR hesutu_noticed_stealing = false
VAR rob_disagrees_with_bill = false
-> MikeRecollection

= mike_jim_intro
"Jim Wilson, your brother, has been working in the mine alongside you for several years."
* Ask about his day.
  "'Rough day, huh?'"
  "Jim grunts. 'You can say that again.'"
  -> mike_jim_questions
* Comment on the mine's condition.
  "'This mine is falling apart.'"
  "Jim nods. 'Tell me about it. And Bill doesn't seem to care one bit.'"
  ~ jim_negative_attitude = true
  -> mike_jim_questions
* Ask about the thefts.
  "'Heard about the thefts. Any idea who's behind it?'"
  "Jim shifts uncomfortably. 'No clue, man. It's messed up though.'"
  -> mike_jim_questions
* Never mind.
  -> DONE

= mike_jim_questions
* Press about the thefts.
  "'You sure you haven't seen anything suspicious? We gotta look out for each other.'"
  "Jim looks down. 'I swear, Mike. I haven't seen anything. I'd tell you if I did.'"
  ~ jim_stealing = true
  -> mike_jim_questions
* Confront about Hesutu's observation.
  { hesutu_noticed_stealing:
    "'Hesutu said he saw you taking some things.'"
    "Jim looks shocked. 'What? No, that's not true. I don't know why he would say that.'"
    "'Hm.'" Your trust in Jim wavers.
    -> mike_jim_questions
  }
* Ask about his thoughts on Rob Davis.
  "'What's your take on Rob?'"
  "Jim shrugs. 'Seems alright. Always busy with something though.'"
  -> mike_jim_questions
* Ask about his thoughts on Hank Miller.
  "'How's Hank doing? He's still learning the ropes, right?'"
  "Jim smiles. 'Yeah, he's getting there. Good kid.'"
  -> mike_jim_questions
* Never mind.
  -> DONE

= mike_hesutu_intro
"Hesutu is a member of the Miwok tribe and a relatively new addition to the mining team."
* Ask about his day.
  "'How's it going, Hesutu?'"
  "Hesutu nods. 'It is well.'"
  -> mike_hesutu_questions
* Comment on the mine's condition.
  "'This mine is a mess, isn't it?'"
  "Hesutu frowns. 'Yes, it is not good.'"
  -> mike_hesutu_questions
* Ask about the thefts.
  "'Heard about the thefts. Seen anything unusual?'"
  { jim_stealing:
    "Hesutu hesitates. 'I have seen your brother, Jim, taking things.'"
    ~ hesutu_noticed_stealing = true
    -> mike_hesutu_questions
  }
  "Hesutu shakes his head. 'I have not seen anything unusual.'"
  -> mike_hesutu_questions
* Never mind.
  -> DONE

= mike_hesutu_questions
* Ask about his relationship with the other miners.
  "'How are you getting along with the others?'"
  "Hesutu shrugs. 'I keep to myself mostly.'"
  -> mike_hesutu_questions
* Ask about his thoughts on the mine owner, Bill.
  "'What do you think of Bill?'"
  "Hesutu looks thoughtful. 'He seems like a fair man.'"
  -> mike_hesutu_questions
* Never mind.
  -> DONE
  
  = mike_tom_intro
"The detective has already heard about your conversation with him earlier. There's no need to go over it again."
-> DONE

= mike_hank_intro
"Hank Miller is a young and enthusiastic miner, always eager to prove himself."
* Ask about his day.
  "'How's your day been, Hank?'"
  "Hank smiles. 'Not too bad, Mike. Just trying to keep up with you guys.'"
  -> mike_hank_questions
* Comment on the mine's condition.
  "'This mine seems to be falling apart, doesn't it?'"
  "Hank nods, looking serious. 'Yeah, it's a bit worrying. But we're all doing our best.'"
  -> mike_hank_questions
* Ask about the thefts.
  "'Heard about the thefts?'"
  "Hank shakes his head. 'I wish I could help, Mike. But I haven't seen anything unusual. If you see or hear anything, make sure you tell Rob.'"
  -> mike_hank_questions
* Never mind.
  -> DONE

= mike_hank_questions
* Ask about his conversation with Rob.
  { asked_about_day:
    "'Jim mentioned he saw you talking to Rob. Anything important?'"
    "Hank looks surprised. 'Oh, it was nothing really. Just some general stuff about the mine.'"
    -> mike_hank_questions
  }
* Ask about his relationship with Bill.
  "'How are you getting along with Bill?'"
  "Hank blushes slightly. 'He's a good boss. Treats me well.'"
  -> mike_hank_questions
* Mention the argument between Jim and Mike.
  { asked_about_argument:
    "'Jim and I had a bit of an argument earlier about some missing tools. All sorted now though.'"
    "Hank looks relieved. 'Glad to hear it. It's important for everyone to get along, especially in times like these.'"
    -> mike_hank_questions
  }
* Never mind.
  -> DONE

= mike_rob_intro
"Rob Davis is a business partner of the mine, always dressed sharply and carrying himself with an air of importance."
* Ask about his day.
  "'How's your day been, Rob?'"
  "Rob smiles. 'Busy as always, Mike. There's always something to be done.'"
  -> mike_rob_questions
* Comment on the mine's condition.
  "'The mine's been in a rough state lately.'"
  "Rob nods, looking serious. 'Indeed, it has. It's a constant battle to keep everything running smoothly.'"
  -> mike_rob_questions
* Ask about the thefts.
  "'Any idea who's behind the thefts?'"
  "Rob shakes his head. 'I wish I knew, Mike. It's a serious concern for all of us.'"
  -> mike_rob_questions
* Never mind.
  -> DONE

= mike_rob_questions
* Ask about his relationship with Bill.
  "'How are things between you and Bill?'"
  "Rob looks slightly uncomfortable. 'We have our disagreements, as any partners do. But we're both committed to the success of the mine.'"
  -> mike_rob_questions
* Press about disagreements with Bill.
  "'Those disagreements must be tough. Anything serious?'"
  "Rob hesitates for a moment. 'Well, I do think the mine could be run more efficiently. There are certain... decisions that Bill has made that I don't necessarily agree with.'"
  ~ rob_disagrees_with_bill = true
  -> mike_rob_questions
* Mention the argument between Jim and Mike.
  { asked_about_argument:
    "'Jim and I had a bit of an argument earlier about some missing tools. All sorted now though.'"
    "Rob looks concerned. 'I'm glad to hear it's resolved. It's important for everyone to get along, especially in times like these.'"
    -> mike_rob_questions
  }
* Ask about his thoughts on Hank Miller.
  "'What do you think of Hank Miller?'"
  "Rob smiles. 'Hank is a hard worker. He's got a bright future ahead of him.'"
  -> mike_rob_questions
* Never mind.
  -> DONE

= transition_to_present_day2
"As Mike finishes his recollection of the past, the scene transitions back to the present day. The detective, having listened intently to Mike's account, prepares to interview Hesutu."
*Continue
-> DONE
=== HesutuRecollection ===

= hesutu_mike_recollection
"The detective has already heard my conversation with Mike."
-> DONE

= hesutu_tom_recollection
"The detective has already heard my conversation with Tom."
-> DONE

= hesutu_jim_intro
"Jim Wilson, Mike's brother."
* Greet.
  "'Hello.'"
  "Jim looks startled and slightly annoyed. 'Oh, it's you.'"
  -> hesutu_jim_questions
* Comment on the mine's condition.
  "'The mine seems to be in a bad state.'"
  "Jim nods, looking around nervously. 'Yeah, it's a mess. But what's it to you?'"
  -> hesutu_jim_questions
* Ask about the thefts.
  "'Have you heard about the thefts?'"
  "Jim shifts uncomfortably. 'Yeah, I've heard. Terrible business.'"
  -> hesutu_jim_questions
* Never mind.
  -> DONE

= hesutu_jim_questions
* Press about the thefts.
  "'It is important to find out who is responsible.'"
  "Jim looks down, avoiding eye contact. 'Yeah, well, I don't know anything about it, so you can stop looking at me like that.'"
  -> hesutu_jim_questions
* Ask about his thoughts on Rob Davis.
  "'What do you think of Rob Davis?'"
  "Jim shrugs. 'He's alright, I guess. Doesn't really matter to me.'"
  -> hesutu_jim_questions
* Ask about his thoughts on Hank Miller.
  "'What do you think of Hank Miller?'"
  "Jim smirks. 'Hank? He's a good-for-nothing kid. Doesn't know the first thing about hard work.'"
  -> hesutu_jim_questions
* Confront about stealing.
  "'I saw you taking something from the mine.'"
  "Jim's face turns red with anger. 'What? You accusing me of stealing? You better watch your mouth.'"
  -> hesutu_jim_confrontation

= hesutu_jim_confrontation
* Press about stealing.
  "'I saw you, Jim. It is not right to steal.'"
  "Jim looks desperate and angry. 'I don't need to be lectured by the likes of you. Fine, I took it. Times are tough, alright? Here, take some gold and keep your mouth shut.'"
  -> hesutu_jim_decision
* Never mind.
  -> DONE

= hesutu_jim_decision
* Accept the bribe.
  "'I will accept your offer.'"
  "Jim looks relieved but still angry. 'Good. Now get out of my sight.'"
  -> DONE
* Refuse the bribe.
  "'I cannot accept your offer.'"
  "Jim looks furious. 'Fine, be that way. Just remember, you had your chance.'"
  -> DONE

= hesutu_rob_intro
* Ask about his day.
  "'How was your day?'"
  "Rob smiles politely. 'It was fine.'"
  -> hesutu_rob_questions
* Comment on the mine's condition.
  "'The mine seems to be in a bad state.'"
  "Rob nods, looking serious. 'Yes, it is concerning. We are doing everything we can to address the issues.'"
  -> hesutu_rob_questions
* Ask about the thefts.
  "'Have you heard about the thefts?'"
  "Rob frowns. 'Yes, it is very troubling. We are doing our best to get to the bottom of it.'"
  -> hesutu_rob_questions
* Never mind.
  -> DONE

= hesutu_rob_questions
* Press about the mine's condition.
  "'It seems like the mine has been neglected.'"
  "Rob looks uncomfortable. 'Well, there have been some disagreements about how best to manage the mine. But rest assured, we are doing everything we can to improve the situation.'"
  -> hesutu_rob_questions
* Ask about his relationship with Bill.
  "'How is your relationship with Bill?'"
  "Rob hesitates for a moment. 'Bill and I have had our differences, but we are both committed to the success of the mine.'"
  -> hesutu_rob_questions
* Ask about his thoughts on Hank Miller.
  "'What do you think of Hank Miller?'"
  "Rob smiles. 'Hank is a hard worker. He has a bright future ahead of him.'"
  -> hesutu_rob_questions
* Press about the disagreements with Bill.
  "'Can you tell me more about your disagreements with Bill?'"
  "Rob looks uneasy. 'It's just... business disagreements, you know? Bill has his way of doing things, and I have mine. But we always find a way to work it out.'"
  -> hesutu_rob_questions
* Never mind.
  -> DONE

= hesutu_hank_intro
* Ask about his day.
  "'How was your day, Hank?'"
  "Hank smiles. 'It was good, thanks for asking. How about you?'"
  -> hesutu_hank_questions
* Comment on the mine's condition.
  "'The mine seems to be in a bad state.'"
  "Hank nods, looking serious. 'Yeah, it's tough. But we're all doing our best.'"
  -> hesutu_hank_questions
* Ask about the thefts.
  "'Have you heard about the thefts?'"
  "Hank shakes his head. 'Yeah, it's really worrying. I hope they catch whoever is doing it.'"
  -> hesutu_hank_questions
* Never mind.
  -> DONE

= hesutu_hank_questions
* Ask about his relationship with Bill.
  "'Bill seems to take a special interest in you. Has he been helpful?'"
  "Hank blushes slightly. 'Oh, yeah. He's been really supportive.'"
  -> hesutu_hank_questions
* Ask about his thoughts on Rob Davis.
  "'What do you think of Rob Davis?'"
  "Hank shrugs. 'He seems alright. Keeps to himself mostly.'"
  -> hesutu_hank_questions
* Comment on Bill's character.
  "'Bill seems like a good man. It must be nice to have someone like that looking out for you.'"
  "Hank looks down, clearly a bit uncomfortable. 'Yeah, it is nice. He's a good person.'"
  -> hesutu_hank_questions
* Never mind.
  -> DONE

= transition_to_present_day3
"As Hesutu finishes recounting his interactions, the scene transitions back to the present day. The sheriff, having listened intently to all the recollections, turns to the detective."
*Continue
-> DONE

= sheriff_final_question
"The sheriff looks at the detective seriously. 'Well, detective, after hearing everything, who do you think is responsible for Bill's murder?'"
* Accuse Jim.
  "'I believe Jim is responsible.'"
  "The sheriff raises an eyebrow. 'Jim? Why do you think that?'"
  "The detective explains, 'Jim had a clear motive. He was stealing from the mine and didn't want to get caught. He also had a negative attitude towards Bill and was seen acting suspiciously by Hesutu.'"
  "The sheriff nods, considering this. 'Alright, we'll bring him in for questioning.'"
  -> outside_team_arrives
* Accuse Rob.
  "'I believe Rob is responsible.'"
  "The sheriff looks surprised. 'Rob? What makes you say that?'"
  "The detective explains, 'Rob had a motive as he wanted to gain full control of the mine. He was unhappy with the way Bill was running things and was seen having private conversations with Hank about the mine.'"
  "The sheriff frowns, thinking this over. 'I see. We'll bring him in for questioning then.'"
  -> outside_team_arrives
* Accuse Hank.
  "'I believe Hank is responsible.'"
  "The sheriff looks shocked. 'Hank? He's just a kid. What makes you think he did it?'"
  "The detective explains, 'Hank was in a secret relationship with Bill, which gave him a motive. He must have some benefit in Bill's will and have taken advantage of the chance to secure Bill's money while he could.'"
  "The sheriff shakes his head, disbelief in his eyes. 'I can't believe it. But we'll bring him in for questioning.'"
  -> outside_team_arrives

= outside_team_arrives
"As the sheriff and the detective finish their conversation, a team from outside arrives to break the cast out of the cave-in. As the miners emerge from the ground, Hesutu quietly remarks, 'Like yellow jackets from a disturbed nest, isn't it.'"
  * Continue
    -> DONE