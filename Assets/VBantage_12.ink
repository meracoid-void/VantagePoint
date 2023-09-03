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
"Tom Carter, the foreman, is a serious-looking man in his forties with a strong build and a no-nonsense demeanor."
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
    -> DONE
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
    -> DONE
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
    -> DONE
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
    -> DONE
* Leave the pickaxe.
-> DONE
