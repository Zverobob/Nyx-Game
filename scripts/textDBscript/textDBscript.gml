///@arg text_id
function scr_game_text(_text_id){
	switch (global.lang){
		case "LC_ENG":
			switch (_text_id){
				//THIRD FLOOR
				case "broken":
					scr_text("*Something went horribly wrong!");
					scr_text("*FIX IIIT!");
				break;
		
				case "nyxr_lap_1":
					scr_text("* It's turned off. You're done working for today.");
				break;

				case "nyxr_rals_1":
					scr_text("* This plushy boy is always with you.");
				break;

				case "nyxr_backp_1":
					scr_text("* That's your backpack.");
				break;

				case "nyxr_sofa_1":
					scr_text("* You found 5 dark dollars.");
					scr_text("* You're not sure you'll need them in this world.");
				break;

				case "nyxr_sofa_2":
					scr_text("* There's no more fake money.");
				break;

				case "nyxr_cal_1":
					scr_text("* Today is April 7th.");
					scr_text("* It's your birthday!");
				break;

				case "nyxr_wind_1":
					scr_text("* It's getting late.");
				break;

				case "nyxr_chip_1":
					scr_text("* Salt & pepper chips. You left them here a week ago.");
				break;

				case "strelok_1":
					scr_text("* The plate says \"Strelok\".");
				break;

				case "jakeir_cons_1":
					scr_text("* It's your game console... All files are gone.");
					scr_text("* Guess someone's in trouble.");
				break;

				case "jakeir_books_1":
					scr_text("* Underverse scripts: 0.0, 0.1, 0.2,... Everything in its place except for 0.7-1.");
				break;

				case "jakeir_mug_1":
					scr_text("* The mug says \"Fans' tears\".");
					scr_text("* It's empty.")
				break;

				case "jakeir_glas_1":
					scr_text("* Jakei's glasses.");
				break;

				case "Jakei_1":
					scr_text("* I'm almost done. I just need to find my glasses.", "Jac_1");
					scr_text("* You finished?", "Jac_1");
					scr_text("* ...", "Jac_2");
					scr_text("* Ah, sorry. I forgot that you've lost our bet.", "Jac_3");
				break;
		
				case "Jakei_2":
					scr_text("* I told you it was PNG.", "Jac_3");
				break;
		
				case "Jakei_3":
					scr_text("* Don't worry, six more hours and you're free.", "Jac_3");
				break;

				case "rest_fri_1":
					scr_text("* It's full of chocolate.");
				break;

				case "rest_mug_1":
					scr_text("* The tea is cold. They didn't even drink it.");
				break;

				case "rest_oven_1":
					scr_text("* You see little spiders cleaning the oven.");
				break;

				case "toil_1":
					scr_text("* There's no water in it.");
				break;
		
				case "EpicTori_1":
					scr_text("* Greetings, young man. Don't mind me.", "Epict_1");
					scr_text("* The doctor was waiting for his friend and fell asleep, so I'm watching after him.", "Epict_1");
				break;
		
				case "EpicTori_2":
					scr_text("* You're the one who's making soundtracks for the Studios, are you not?", "Epict_1");
					scr_text("* I just admire your work, especially for the last episode. Thank you!", "Epict_2");
				break;
		
				case "EpicTori_3":
					scr_text("* Hopefully we'll meet each other again. Take care!", "Epict_1");
				break;
		
				case "developer_birb":
					scr_text("* Looking in the window you see a parrot proactively smashing 0's and 1's with a wrench.");
					scr_text("* He also mutters something about how hard game-programming is!");
					scr_text("* You probably should tell him that he's doing it wrong.");
					scr_text("* Will you?");
						scr_options( "Yes", "developer_birby");
						scr_options( "No", "developer_birbn");
			
				break;
				case "developer_birby":
					scr_text("* You furiously scream on the window in an urge to help the poor parrot.");
					scr_text("* ...");
					scr_text("* ...");
					scr_text("* The window is very thankful and now wants to become a famous game-developer.");
					scr_text("* ...");
					scr_text("* ...");
					scr_text("* You also spot a white dog in the bush looking at this ordeal.");
					scr_text("* What a sight!");
			
				break;
				case "developer_birbn":
					scr_text("* Wondering how it would end, you didn't say a thing.");
					scr_text("* ...");
					scr_text("* ...");
					scr_text("* You also spot a white dog in the bush looking at this ordeal.");
					scr_text("* What a sight!");
				break;
		
				//SECOND FLOOR
				case "xalf_table_1":
					scr_text("* There are some comics... ");
					scr_text("* Manga? Whatever. ");
				break;
		
				case "XKris_1":
					scr_text("* It seems this little fellow spent an infinite amount of time cleaning the floor.");
					scr_text("* Are you sure you want to ruin their work?");
						scr_options( "YEAH!", "XKris_1_YEAH");
						scr_options( "Nope.", "XKris_1_nope");
				break;
				case "XKris_1_YEAH":
					scr_text("* Nope. Too slippery.");
				break;
		
				case "XKris_1_nope":
					scr_text("* Thank you kind sir!");
				break;
		
				case "XGaster_1":
					scr_text("* I hope that what you came for is worth my time.", "Xgas_1");
				break;
		
				case "XGaster_2":
					scr_text("* I am trying to work...", "Xgas_1");
				break;
		
				case "XGaster_3":
					scr_text("* He's having a bad time. Better leave him alone.");
				break;
		
				case "XGaster_4":
					scr_text("* ...", "Xgas_2");
				break;
		
				case "xgastr_1":
					scr_text("* It's closed.");
				break;
		
				case "XAlphys_1":
					scr_text("* I'm busy.", "Xalf_1");
				break;
		
				case "XAlphys_2":
					scr_text("* Don't you have better things to do?", "Xalf_1");
				break;
		
				case "XAlphys_3":
					scr_text("* I might be patient with you.", "Xalf_1");
					scr_text("* But I highly recommend to not annoy lord XGaster.", "Xalf_1");
				break;
		
				case "XAlphys_4":
					scr_text("* I'm serious.", "Xalf_1");
				break;

				case "xgas_plate_1":
					scr_text("* Lord XGaster.");
				break;

				case "xgas_wind_1":
					scr_text("* You can see a man aggressively drinking his banana coffee.");
				break;

				case "xgas_books_1":
					scr_text("* A book \"How not to drown babies in a bath\". It looks old.");
					scr_text("* You take another one. It says something about overman.");
				break;

				case "xgas_dum_1":
					scr_text("* Paper... Lots of paper.");
				break;
		
				case "xfrr_1":
					scr_text("* The door is closed. It's quiet.");
				break;
		
				case "xmtt_1":
					scr_text("* You smell car freshener.");
				break;
		
				case "xpapr_1":
					scr_text("* It smells like chocolate perfume.");
				break;
		
				case "crossr_1":
					scr_text("* The plate is crossed out with a red marker. Now it says \"Cross\".");
				break;
		
				//FIRST FLOOR
				case "xchr_1":
					scr_text("* You hear XChara arguing with XUndyne.");
					scr_text("* Presumably they are watching an anime about a black and white boy with a short haircut.");
				break;

				case "xundr_1":
					scr_text("* It's closed.");
				break;

				case "xmuff_1":
					scr_text("* Smells like baking. You can hear awkward conversations.");
				break;

				case "xdreamr_1":
					scr_text("* You see white fur all over the place.");
				break;

				case "xasrr_1":
					scr_text("* A floral scent hits your nose.");
				break;
		
				case "readr_comp_1":
					scr_text("* Browser is still opened, you're looking through the search history:");
					scr_text("* \"How to make a game in 24 hours?\"");
					scr_text("* \"How to make a game?\"");
					scr_text("* \"How to work in an RPG maker?\"");
					scr_text("* \"How to ask friends for help?\"");
					scr_text("* \"How to find new friends?\"");
				break;
		
				case "readr_comp_2":
					scr_text("* Another tab with a chat is opened.");
					scr_text("* ???: Hey dude, can you help me to make a game like right now?");
					scr_text("* ???: Go touch some grass.");
				break;
		
				case "readr_comp_3":
					scr_text("* You think that's enough of ruining private space.");
				break;

				case "readr_books_1":
					scr_text("* You're not in the mood for reading right now.");
				break;
		
				//FILMING SET
				case "filmr_exit_1":
					scr_text("* You can't go through the fire exit because you're not made of fire.");
				break;

				case "filmr_fri_1":
					scr_text("* It's a small fridge with fruit popsicles.");
					scr_text("* No. You can't take one. It's only for good children.");
				break;

				case "filmr_gift_1":
					scr_text("* This gift seems very valuable. ");
					scr_text("* But unfortunately it's not for you.");
				break;

				case "filmr_rainbcl_1":
					scr_text("* Just some rainbow garbage.");
					scr_text("* Whoever wears this should be arrested by a fashion police.");
				break;

				case "filmr_pap_1":
					scr_text("* A pile of Underverse 0.7-1 scripts laying on a table.");
				break;

				case "filmr_amch_1":
					scr_text("* The artist forgot how to draw chairs.");
					scr_text("* Looks kinda sus.");
				break;

				case "filmr_box_1":
					scr_text("* A few boxes with film decorations.");
				break;
		
				case "filmr_salt_1":
					scr_text("* It's you.");
				break;
		
				case "Pingu_1":
					audio_play_sound(sndSqueaky,3,0);
					scr_text("* (...Still short.)");
				break;
		
				case "XPapyrus_1":
					scr_text("* Ah! Hello Nyx.", "Xpap_1");
					scr_text("* I'm sorry but I'm a bit busy right now...", "Xpap_2");
					scr_text("* Our work day is over but XGaster wants everything to be perfect.", "Xpap_2");
					scr_text("* So I'm rereading the script.", "Xpap_2");
				break;
				case "XPapyrus_2":
					scr_text("* I don't really like this episode...But he's the boss.", "Xpap_2");
				break;
				case "XPapyrus_3":
					scr_text("* You know...Perfection.", "Xpap_2");
				break;
				case "XPapyrus_4":
					scr_text("* I'm sorry but I'm a bit busy right now...", "Xpap_2");
				break;

				case "Cross_1":
					scr_text("* Papyrus was sitting there for a few hours already...", "Cross_1");
					scr_text("* Bro, please. Epic is waiting for me!", "Cross_3");
					scr_text("* Give me five more minutes.", "Xpap_3");
					scr_text("* You said the same thing ten minutes ago! Augh!!!", "Cross_2");
				break;
				case "Cross_2":
					scr_text("* He takes it too seriously. Tho, I can't blame him.", "Cross_3");
				break;
				case "Cross_3":
					scr_text("* I swear I'm gonna eat this script.", "Cross_1");
				break;


				case "Ink_1":
					scr_text("* Hey! What's up?", "Ink_1");
					scr_text("* ...Oh sorry, the bet, yeah. I forgot about that.", "Ink_2");
					scr_text("* Well, I'm sure everything is cool.", "Ink_3");
				break;
				case "Ink_2":
					scr_text("* By the way, don't tell Error I took his bean bag.", "Ink_4");
				break;
				case "Ink_3":
					scr_text("* Can't wait to hear the new soundtracks!", "Ink_3");
				break;


				case "Geno_1":
					scr_text("* Oh, heya.", "Geno_1");
					scr_text("* I'm Geno, kind of new here. Nice to meet ya.", "Geno_1");
				break;
				case "Geno_2":
					scr_text("* Asgore is helping me catch up.", "Geno_1");
				break;
				case "Geno_3":
					scr_text("* Got anyone I should know better?", "Geno_1");
					scr_text("* ...No?", "Geno_2");
				break;

				case "Asgore_1":
					scr_text("* Howdy!", "Asg_1");
					scr_text("* This young skeleton is a pleasant conversationalist!", "Asg_1");
					scr_text("* He's a bit nervous, but I'm sure he'll find the right people here.", "Asg_1");
				break;
				case "Asgore_2":
					scr_text("* I remember my first day in the Studios.", "Asg_2");
					scr_text("* It was...Awkward.", "Asg_2");
				break;

				case "XMTT_1":
					scr_text("* Do you know where Muffet is?", "Xmtt_1");
					scr_text("* I haven't seen her since yesterday.", "Xmtt_1");
				break;
				case "XMTT_2":
					scr_text("* Frisk is gone too.", "Xmtt_1");
				break;
				case "XMTT_3":
					scr_text("* If only...", "Xmtt_1");
					scr_text("* Oh no, they don't.", "Xmtt_2");
				break;

				case "Core_1":
					scr_text("* I shouldn't be here but Undyne insisted so now I'm hanging out with her.", "Core_1");
					scr_text("* Haha.", "Core_2");
				break;

				case "Undyne_1":
					scr_text("* This kid is so light I can lift them up all day.", "Und_1");
				break;
				case "Undyne_2":
					scr_text("* Those boneheads argue all the time.", "Und_2");
					scr_text("* But it seems they are fine with it.", "Und_1");
				break;
		
				case "end_1":
					scr_text("* Are you sure you want to leave now?");
						scr_options("Yes","end_y");
						scr_options("No","end_n");
				break;
				case "end_y":
					if (!oGame.Jakei)
						scr_text("* You can't leave now!");
					else {
						if(instance_exists(oTextBox)){
							instance_destroy(oTextBox)
						}
						instance_activate_object(inst_43D50923);
					}
				break;
				case "end_n":
					if(instance_exists(oTextBox)){
						instance_destroy(oTextBox)
					}
				break;
		
				case "Jac_hall1":
					scr_text("Ready to go?","Jac_4");
				break;
			break;
		}
		case "LC_RU":
			switch (_text_id){
				//THIRD FLOOR
				case "broken":
					scr_text("*Something went horribly wrong!");
					scr_text("*FIX IIIT!");
				break;
		
				case "nyxr_lap_1":
					scr_text("* It's turned off. You're done working for today.");
				break;

				case "nyxr_rals_1":
					scr_text("* This plushy boy is always with you.");
				break;

				case "nyxr_backp_1":
					scr_text("* That's your backpack.");
				break;

				case "nyxr_sofa_1":
					scr_text("* You found 5 dark dollars.");
					scr_text("* You're not sure you'll need them in this world.");
				break;

				case "nyxr_sofa_2":
					scr_text("* There's no more fake money.");
				break;

				case "nyxr_cal_1":
					scr_text("* Today is April 7th.");
					scr_text("* It's your birthday!");
				break;

				case "nyxr_wind_1":
					scr_text("* It's getting late.");
				break;

				case "nyxr_chip_1":
					scr_text("* Salt & pepper chips. You left them here a week ago.");
				break;

				case "strelok_1":
					scr_text("* The plate says \"Strelok\".");
				break;

				case "jakeir_cons_1":
					scr_text("* It's your game console... All files are gone.");
					scr_text("* Guess someone's in trouble.");
				break;

				case "jakeir_books_1":
					scr_text("* Underverse scripts: 0.0, 0.1, 0.2,... Everything in its place except for 0.7-1.");
				break;

				case "jakeir_mug_1":
					scr_text("* The mug says \"Fans' tears\".");
					scr_text("* It's empty.")
				break;

				case "jakeir_glas_1":
					scr_text("* Jakei's glasses.");
				break;

				case "Jakei_1":
					scr_text("* I'm almost done. I just need to find my glasses.", "Jac_1");
					scr_text("* You finished?", "Jac_1");
					scr_text("* ...", "Jac_2");
					scr_text("* Ah, sorry. I forgot that you've lost our bet.", "Jac_3");
				break;
		
				case "Jakei_2":
					scr_text("* I told you it was PNG.", "Jac_3");
				break;
		
				case "Jakei_3":
					scr_text("* Don't worry, six more hours and you're free.", "Jac_3");
				break;

				case "rest_fri_1":
					scr_text("* It's full of chocolate.");
				break;

				case "rest_mug_1":
					scr_text("* The tea is cold. They didn't even drink it.");
				break;

				case "rest_oven_1":
					scr_text("* You see little spiders cleaning the oven.");
				break;

				case "toil_1":
					scr_text("* There's no water in it.");
				break;
		
				case "EpicTori_1":
					scr_text("* Greetings, young man. Don't mind me.", "Epict_1");
					scr_text("* The doctor was waiting for his friend and fell asleep, so I'm watching after him.", "Epict_1");
				break;
		
				case "EpicTori_2":
					scr_text("* You're the one who's making soundtracks for the Studios, are you not?", "Epict_1");
					scr_text("* I just admire your work, especially for the last episode. Thank you!", "Epict_2");
				break;
		
				case "EpicTori_3":
					scr_text("* Hopefully we'll meet each other again. Take care!", "Epict_1");
				break;
		
				case "developer_birb":
					scr_text("* Looking in the window you see a parrot proactively smashing 0's and 1's with a wrench.");
					scr_text("* He also mutters something about how hard game-programming is!");
					scr_text("* You probably should tell him that he's doing it wrong.");
					scr_text("* Will you?");
						scr_options( "Yes", "developer_birby");
						scr_options( "No", "developer_birbn");
			
				break;
				case "developer_birby":
					scr_text("* You furiously scream on the window in an urge to help the poor parrot.");
					scr_text("* ...");
					scr_text("* ...");
					scr_text("* The window is very thankful and now wants to become a famous game-developer.");
					scr_text("* ...");
					scr_text("* ...");
					scr_text("* You also spot a white dog in the bush looking at this ordeal.");
					scr_text("* What a sight!");
			
				break;
				case "developer_birbn":
					scr_text("* Wondering how it would end, you didn't say a thing.");
					scr_text("* ...");
					scr_text("* ...");
					scr_text("* You also spot a white dog in the bush looking at this ordeal.");
					scr_text("* What a sight!");
				break;
		
				//SECOND FLOOR
				case "xalf_table_1":
					scr_text("* There are some comics... ");
					scr_text("* Manga? Whatever. ");
				break;
		
				case "XKris_1":
					scr_text("* It seems this little fellow spent an infinite amount of time cleaning the floor.");
					scr_text("* Are you sure you want to ruin their work?");
						scr_options( "YEAH!", "XKris_1_YEAH");
						scr_options( "Nope.", "XKris_1_nope");
				break;
				case "XKris_1_YEAH":
					scr_text("* Nope. Too slippery.");
				break;
		
				case "XKris_1_nope":
					scr_text("* Thank you kind sir!");
				break;
		
				case "XGaster_1":
					scr_text("* I hope that what you came for is worth my time.", "Xgas_1");
				break;
		
				case "XGaster_2":
					scr_text("* I am trying to work...", "Xgas_1");
				break;
		
				case "XGaster_3":
					scr_text("* He's having a bad time. Better leave him alone.");
				break;
		
				case "XGaster_4":
					scr_text("* ...", "Xgas_2");
				break;
		
				case "xgastr_1":
					scr_text("* It's closed.");
				break;
		
				case "XAlphys_1":
					scr_text("* I'm busy.", "Xalf_1");
				break;
		
				case "XAlphys_2":
					scr_text("* Don't you have better things to do?", "Xalf_1");
				break;
		
				case "XAlphys_3":
					scr_text("* I might be patient with you.", "Xalf_1");
					scr_text("* But I highly recommend to not annoy lord XGaster.", "Xalf_1");
				break;
		
				case "XAlphys_4":
					scr_text("* I'm serious.", "Xalf_1");
				break;

				case "xgas_plate_1":
					scr_text("* Lord XGaster.");
				break;

				case "xgas_wind_1":
					scr_text("* You can see a man aggressively drinking his banana coffee.");
				break;

				case "xgas_books_1":
					scr_text("* A book \"How not to drown babies in a bath\". It looks old.");
					scr_text("* You take another one. It says something about overman.");
				break;

				case "xgas_dum_1":
					scr_text("* Paper... Lots of paper.");
				break;
		
				case "xfrr_1":
					scr_text("* The door is closed. It's quiet.");
				break;
		
				case "xmtt_1":
					scr_text("* You smell car freshener.");
				break;
		
				case "xpapr_1":
					scr_text("* It smells like chocolate perfume.");
				break;
		
				case "crossr_1":
					scr_text("* The plate is crossed out with a red marker. Now it says \"Cross\".");
				break;
		
				//FIRST FLOOR
				case "xchr_1":
					scr_text("* You hear XChara arguing with XUndyne.");
					scr_text("* Presumably they are watching an anime about a black and white boy with a short haircut.");
				break;

				case "xundr_1":
					scr_text("* It's closed.");
				break;

				case "xmuff_1":
					scr_text("* Smells like baking. You can hear awkward conversations.");
				break;

				case "xdreamr_1":
					scr_text("* You see white fur all over the place.");
				break;

				case "xasrr_1":
					scr_text("* A floral scent hits your nose.");
				break;
		
				case "readr_comp_1":
					scr_text("* Browser is still opened, you're looking through the search history:");
					scr_text("* \"How to make a game in 24 hours?\"");
					scr_text("* \"How to make a game?\"");
					scr_text("* \"How to work in an RPG maker?\"");
					scr_text("* \"How to ask friends for help?\"");
					scr_text("* \"How to find new friends?\"");
				break;
		
				case "readr_comp_2":
					scr_text("* Another tab with a chat is opened.");
					scr_text("* ???: Hey dude, can you help me to make a game like right now?");
					scr_text("* ???: Go touch some grass.");
				break;
		
				case "readr_comp_3":
					scr_text("* You think that's enough of ruining private space.");
				break;

				case "readr_books_1":
					scr_text("* You're not in the mood for reading right now.");
				break;
		
				//FILMING SET
				case "filmr_exit_1":
					scr_text("* You can't go through the fire exit because you're not made of fire.");
				break;

				case "filmr_fri_1":
					scr_text("* It's a small fridge with fruit popsicles.");
					scr_text("* No. You can't take one. It's only for good children.");
				break;

				case "filmr_gift_1":
					scr_text("* This gift seems very valuable. ");
					scr_text("* But unfortunately it's not for you.");
				break;

				case "filmr_rainbcl_1":
					scr_text("* Just some rainbow garbage.");
					scr_text("* Whoever wears this should be arrested by a fashion police.");
				break;

				case "filmr_pap_1":
					scr_text("* A pile of Underverse 0.7-1 scripts laying on a table.");
				break;

				case "filmr_amch_1":
					scr_text("* The artist forgot how to draw chairs.");
					scr_text("* Looks kinda sus.");
				break;

				case "filmr_box_1":
					scr_text("* A few boxes with film decorations.");
				break;
		
				case "filmr_salt_1":
					scr_text("* It's you.");
				break;
		
				case "Pingu_1":
					audio_play_sound(sndSqueaky,3,0);
					scr_text("* (...Still short.)");
				break;
		
				case "XPapyrus_1":
					scr_text("* Ah! Hello Nyx.", "Xpap_1");
					scr_text("* I'm sorry but I'm a bit busy right now...", "Xpap_2");
					scr_text("* Our work day is over but XGaster wants everything to be perfect.", "Xpap_2");
					scr_text("* So I'm rereading the script.", "Xpap_2");
				break;
				case "XPapyrus_2":
					scr_text("* I don't really like this episode...But he's the boss.", "Xpap_2");
				break;
				case "XPapyrus_3":
					scr_text("* You know...Perfection.", "Xpap_2");
				break;
				case "XPapyrus_4":
					scr_text("* I'm sorry but I'm a bit busy right now...", "Xpap_2");
				break;

				case "Cross_1":
					scr_text("* Papyrus was sitting there for a few hours already...", "Cross_1");
					scr_text("* Bro, please. Epic is waiting for me!", "Cross_3");
					scr_text("* Give me five more minutes.", "Xpap_3");
					scr_text("* You said the same thing ten minutes ago! Augh!!!", "Cross_2");
				break;
				case "Cross_2":
					scr_text("* He takes it too seriously. Tho, I can't blame him.", "Cross_3");
				break;
				case "Cross_3":
					scr_text("* I swear I'm gonna eat this script.", "Cross_1");
				break;


				case "Ink_1":
					scr_text("* Hey! What's up?", "Ink_1");
					scr_text("* ...Oh sorry, the bet, yeah. I forgot about that.", "Ink_2");
					scr_text("* Well, I'm sure everything is cool.", "Ink_3");
				break;
				case "Ink_2":
					scr_text("* By the way, don't tell Error I took his bean bag.", "Ink_4");
				break;
				case "Ink_3":
					scr_text("* Can't wait to hear the new soundtracks!", "Ink_3");
				break;


				case "Geno_1":
					scr_text("* Oh, heya.", "Geno_1");
					scr_text("* I'm Geno, kind of new here. Nice to meet ya.", "Geno_1");
				break;
				case "Geno_2":
					scr_text("* Asgore is helping me catch up.", "Geno_1");
				break;
				case "Geno_3":
					scr_text("* Got anyone I should know better?", "Geno_1");
					scr_text("* ...No?", "Geno_2");
				break;

				case "Asgore_1":
					scr_text("* Howdy!", "Asg_1");
					scr_text("* This young skeleton is a pleasant conversationalist!", "Asg_1");
					scr_text("* He's a bit nervous, but I'm sure he'll find the right people here.", "Asg_1");
				break;
				case "Asgore_2":
					scr_text("* I remember my first day in the Studios.", "Asg_2");
					scr_text("* It was...Awkward.", "Asg_2");
				break;

				case "XMTT_1":
					scr_text("* Do you know where Muffet is?", "Xmtt_1");
					scr_text("* I haven't seen her since yesterday.", "Xmtt_1");
				break;
				case "XMTT_2":
					scr_text("* Frisk is gone too.", "Xmtt_1");
				break;
				case "XMTT_3":
					scr_text("* If only...", "Xmtt_1");
					scr_text("* Oh no, they don't.", "Xmtt_2");
				break;

				case "Core_1":
					scr_text("* I shouldn't be here but Undyne insisted so now I'm hanging out with her.", "Core_1");
					scr_text("* Haha.", "Core_2");
				break;

				case "Undyne_1":
					scr_text("* This kid is so light I can lift them up all day.", "Und_1");
				break;
				case "Undyne_2":
					scr_text("* Those boneheads argue all the time.", "Und_2");
					scr_text("* But it seems they are fine with it.", "Und_1");
				break;
		
				case "end_1":
					scr_text("* Are you sure you want to leave now?");
						scr_options("Yes","end_y");
						scr_options("No","end_n");
				break;
				case "end_y":
					if (!oGame.Jakei)
						scr_text("* You can't leave now!");
					else {
						if(instance_exists(oTextBox)){
							instance_destroy(oTextBox)
						}
						instance_activate_object(inst_43D50923);
					}
				break;
				case "end_n":
					if(instance_exists(oTextBox)){
						instance_destroy(oTextBox)
					}
				break;
		
				case "Jac_hall1":
					scr_text("Ready to go?","Jac_4");
				break;
			break;
		}
	}
}

