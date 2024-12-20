extends Node

var rng = RandomNumberGenerator.new()
var randvalue
var char1winprob
var char2winprob
var char1wincount
var char2wincount
var team1setwincount
var team2setwincount
var team1gamewincount
var team2gamewincount
var setinprocess = true

var matchrowsingles = 0
var matchrowfs = 0
var matchrowstamina = 0
var matchrowdoubles = 0
var matchrowsquads = 0
var matchrowtotal = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func setup_match(Team1, Team2):
	run_match(Team1, Rosters.get_lineup(Team1, "Singles"), Rosters.get_lineup(Team1, "Final Smash"), Rosters.get_lineup(Team1, "Stamina"), Rosters.get_lineup(Team1, "Doubles1"), Rosters.get_lineup(Team1, "Doubles2"), Rosters.get_lineup(Team1, "Squads1"), Rosters.get_lineup(Team1, "Squads2"), Rosters.get_lineup(Team1, "Squads3"),
	Team2, Rosters.get_lineup(Team2, "Singles"), Rosters.get_lineup(Team2, "Final Smash"), Rosters.get_lineup(Team2, "Stamina"), Rosters.get_lineup(Team2, "Doubles1"), Rosters.get_lineup(Team2, "Doubles2"), Rosters.get_lineup(Team2, "Squads1"), Rosters.get_lineup(Team2, "Squads2"), Rosters.get_lineup(Team2, "Squads3"))

func run_match(Team1, Char1a, Char1b, Char1c, Char1d, Char1e, Char1f, Char1g, Char1h,
Team2, Char2a, Char2b, Char2c, Char2d, Char2e, Char2f, Char2g, Char2h):
	
	team1setwincount = 0
	team2setwincount = 0
	team1gamewincount = 0
	team2gamewincount = 0
	run_event(Team1, Team2, Char1a, Char2a, "Singles")
	run_event(Team1, Team2, Char1b, Char2b, "Final Smash")
	run_event(Team1, Team2, Char1c, Char2c, "Stamina")
	run_event_doubles(Team1, Team2, Char1d, Char1e, Char2d, Char2e)
	run_event_squads(Team1, Team2, Char1f, Char1g, Char1h, Char2f, Char2g, Char2h)	
	record_result_total(Team1, Team2)

func run_event(Team1, Team2, Char1, Char2, Mode):
	char1wincount = 0
	char2wincount = 0
	setinprocess = true
	while setinprocess == true:
		if char1wincount < 2 and char2wincount < 2:
			var char1winprob = float(
				float(Character.get_rating(Char1, Mode))
				/
				(float(Character.get_rating(Char1, Mode)) + float(Character.get_rating(Char2, Mode)))
				)
			print(Char1 + " Win Probability var: " + str(char1winprob))
			var char2winprob = (
				1-char1winprob
			)
			print(Char2 + " Win Probability var: " + str(char2winprob))
			rng.randomize()
			randvalue = float(rng.randi_range(0, 100))
			print("RNG Value: " + str(randvalue))
			if (randvalue / 100) <= char1winprob:
				print(Char1 + " wins")
				char1wincount = (char1wincount + 1)
			else:
				print(Char2 + " wins")
				char2wincount = (char2wincount + 1)
		else:
			setinprocess = false
	if setinprocess == false:
		record_result(Team1, Team2, Char1, Char2, Mode)

func run_event_doubles(Team1, Team2, Char1a, Char1b, Char2a, Char2b):
	char1wincount = 0
	char2wincount = 0
	setinprocess = true
	while setinprocess == true:
		if char1wincount < 2 and char2wincount < 2:
			var char1winprob = float(
				(float(Character.get_rating(Char1a, "Doubles")) + float(Character.get_rating(Char1b, "Doubles")))
				/
				((float(Character.get_rating(Char1a, "Doubles")) + float(Character.get_rating(Char1b, "Doubles"))) + (float(Character.get_rating(Char2a, "Doubles")) + float(Character.get_rating(Char2b, "Doubles"))))
				)
			print(Char1a + " and " + Char1b + " Win Probability var: " + str(char1winprob))
			var char2winprob = (
				1-char1winprob
			)
			print(Char2a + " and " + Char2b + " Win Probability var: " + str(char2winprob))
			rng.randomize()
			randvalue = float(rng.randi_range(0, 100))
			print("RNG Value: " + str(randvalue))
			if (randvalue / 100) <= char1winprob:
				print(Char1a + " and " + Char1b + " wins")
				char1wincount = (char1wincount + 1)
			else:
				print(Char2a + " and " + Char2b + " wins")
				char2wincount = (char2wincount + 1)
		else:
			setinprocess = false
	if setinprocess == false:
		record_result_doubles(Team1, Team2, Char1a, Char1b, Char2a, Char2b)

func run_event_squads(Team1, Team2, Char1a, Char1b, Char1c, Char2a, Char2b, Char2c):
	char1wincount = 0
	char2wincount = 0
	setinprocess = true
	while setinprocess == true:
		if char1wincount < 2 and char2wincount < 2:
			var char1winprob = float(
				(float(Character.get_rating(Char1a, "Singles")) + float(Character.get_rating(Char1b, "Singles")) + float(Character.get_rating(Char1c, "Singles")))
				/
				((float(Character.get_rating(Char1a, "Singles")) + float(Character.get_rating(Char1b, "Singles")) + float(Character.get_rating(Char1c, "Singles"))) + (float(Character.get_rating(Char2a, "Singles")) + float(Character.get_rating(Char2b, "Singles")) + float(Character.get_rating(Char2c, "Singles"))))
				)
			print(Char1a + " and " + Char1b + " and " + Char1c + " Win Probability var: " + str(char1winprob))
			var char2winprob = (
				1-char1winprob
			)
			print(Char2a + " and " + Char2b + " and " + Char2c + " Win Probability var: " + str(char2winprob))
			rng.randomize()
			randvalue = float(rng.randi_range(0, 100))
			print("RNG Value: " + str(randvalue))
			if (randvalue / 100) <= char1winprob:
				print(Char1a + " and " + Char1b + " and " + Char1c + " wins")
				char1wincount = (char1wincount + 1)
			else:
				print(Char2a + " and " + Char2b + " and " + Char2c + " wins")
				char2wincount = (char2wincount + 1)
		else:
			setinprocess = false
	if setinprocess == false:
		record_result_squads(Team1, Team2, Char1a, Char1b, Char1c, Char2a, Char2b, Char2c)

func record_result(Team1, Team2, Char1, Char2, Mode):
	if Mode == "Singles":
		if char1wincount > char2wincount:
			Results.set_match_singles(matchrowsingles, Team1, Char1, Team2, Char2, char1wincount, char2wincount)
			matchrowsingles = (matchrowsingles + 1)
			team1gamewincount = (team1gamewincount + char1wincount)
			team2gamewincount = (team2gamewincount + char2wincount)
			team1setwincount = (team1setwincount + 1)
		if char1wincount < char2wincount:
			Results.set_match_singles(matchrowsingles, Team2, Char2, Team1, Char1, char2wincount, char1wincount)
			matchrowsingles = (matchrowsingles + 1)
			team1gamewincount = (team1gamewincount + char1wincount)
			team2gamewincount = (team2gamewincount + char2wincount)
			team2setwincount = (team2setwincount + 1)
		Results.get_match_singles((matchrowsingles - 1), 0)
		Results.get_match_singles((matchrowsingles - 1), 1)
		Results.get_match_singles((matchrowsingles - 1), 2)
		Results.get_match_singles((matchrowsingles - 1), 3)
		Results.get_match_singles((matchrowsingles - 1), 4)
		Results.get_match_singles((matchrowsingles - 1), 5)
	if Mode == "Final Smash":
		if char1wincount > char2wincount:
			Results.set_match_fs(matchrowfs, Team1, Char1, Team2, Char2, char1wincount, char2wincount)
			matchrowfs = (matchrowfs + 1)
			team1gamewincount = (team1gamewincount + char1wincount)
			team2gamewincount = (team2gamewincount + char2wincount)
			team1setwincount = (team1setwincount + 1)
		if char1wincount < char2wincount:
			Results.set_match_fs(matchrowfs, Team2, Char2, Team1, Char1, char2wincount, char1wincount)
			matchrowfs = (matchrowfs + 1)
			team1gamewincount = (team1gamewincount + char1wincount)
			team2gamewincount = (team2gamewincount + char2wincount)
			team2setwincount = (team2setwincount + 1)
		Results.get_match_fs((matchrowfs - 1), 0)
		Results.get_match_fs((matchrowfs - 1), 1)
		Results.get_match_fs((matchrowfs - 1), 2)
		Results.get_match_fs((matchrowfs - 1), 3)
		Results.get_match_fs((matchrowfs - 1), 4)
		Results.get_match_fs((matchrowfs - 1), 5)
	if Mode == "Stamina":
		if char1wincount > char2wincount:
			Results.set_match_stamina(matchrowstamina, Team1, Char1, Team2, Char2, char1wincount, char2wincount)
			matchrowstamina = (matchrowstamina + 1)
			team1gamewincount = (team1gamewincount + char1wincount)
			team2gamewincount = (team2gamewincount + char2wincount)
			team1setwincount = (team1setwincount + 1)
		if char1wincount < char2wincount:
			Results.set_match_stamina(matchrowstamina, Team2, Char2, Team1, Char1, char2wincount, char1wincount)
			matchrowstamina = (matchrowstamina + 1)
			team1gamewincount = (team1gamewincount + char1wincount)
			team2gamewincount = (team2gamewincount + char2wincount)
			team2setwincount = (team2setwincount + 1)
		Results.get_match_stamina((matchrowstamina - 1), 0)
		Results.get_match_stamina((matchrowstamina - 1), 1)
		Results.get_match_stamina((matchrowstamina - 1), 2)
		Results.get_match_stamina((matchrowstamina - 1), 3)
		Results.get_match_stamina((matchrowstamina - 1), 4)
		Results.get_match_stamina((matchrowstamina - 1), 5)

func record_result_doubles(Team1, Team2, Char1a, Char1b, Char2a, Char2b):
	if char1wincount > char2wincount:
		Results.set_match_doubles(matchrowdoubles, Team1, Char1a, Char1b, Team2, Char2a, Char2b, char1wincount, char2wincount)
		matchrowdoubles = (matchrowdoubles + 1)
		team1gamewincount = (team1gamewincount + char1wincount)
		team2gamewincount = (team2gamewincount + char2wincount)
		team1setwincount = (team1setwincount + 1)
	if char1wincount < char2wincount:
		Results.set_match_doubles(matchrowdoubles, Team2, Char2a, Char2b, Team1, Char1a, Char1b, char2wincount, char1wincount)
		matchrowdoubles = (matchrowdoubles + 1)
		team1gamewincount = (team1gamewincount + char1wincount)
		team2gamewincount = (team2gamewincount + char2wincount)
		team2setwincount = (team2setwincount + 1)
	Results.get_match_doubles((matchrowdoubles - 1), 0)
	Results.get_match_doubles((matchrowdoubles - 1), 1)
	Results.get_match_doubles((matchrowdoubles - 1), 2)
	Results.get_match_doubles((matchrowdoubles - 1), 3)
	Results.get_match_doubles((matchrowdoubles - 1), 4)
	Results.get_match_doubles((matchrowdoubles - 1), 5)
	Results.get_match_doubles((matchrowdoubles - 1), 6)
	Results.get_match_doubles((matchrowdoubles - 1), 7)

func record_result_squads(Team1, Team2, Char1a, Char1b, Char1c, Char2a, Char2b, Char2c):
	if char1wincount > char2wincount:
		Results.set_match_squads(matchrowsquads, Team1, Char1a, Char1b, Char1c, Team2, Char2a, Char2b, Char2c, char1wincount, char2wincount)
		matchrowsquads = (matchrowsquads + 1)
		team1gamewincount = (team1gamewincount + char1wincount)
		team2gamewincount = (team2gamewincount + char2wincount)
		team1setwincount = (team1setwincount + 1)
	if char1wincount < char2wincount:
		Results.set_match_squads(matchrowsquads, Team2, Char2a, Char2b, Char2c, Team1, Char1a, Char1b, Char1c, char2wincount, char1wincount)
		matchrowsquads = (matchrowsquads + 1)
		team1gamewincount = (team1gamewincount + char1wincount)
		team2gamewincount = (team2gamewincount + char2wincount)
		team2setwincount = (team2setwincount + 1)
	Results.get_match_squads((matchrowsquads - 1), 0)
	Results.get_match_squads((matchrowsquads - 1), 1)
	Results.get_match_squads((matchrowsquads - 1), 2)
	Results.get_match_squads((matchrowsquads - 1), 3)
	Results.get_match_squads((matchrowsquads - 1), 4)
	Results.get_match_squads((matchrowsquads - 1), 5)
	Results.get_match_squads((matchrowsquads - 1), 6)
	Results.get_match_squads((matchrowsquads - 1), 7)
	Results.get_match_squads((matchrowsquads - 1), 8)
	Results.get_match_squads((matchrowsquads - 1), 9)

func record_result_total(Team1, Team2):
	if team1gamewincount > team2gamewincount:
		Results.set_match_total(matchrowtotal, Team1, Team2, team1gamewincount, team2gamewincount)
		Standings.set_standings(Team1, "Wins", (Standings.get_standings(Team1, "Wins") + 1))
		Standings.set_standings(Team2, "Losses", (Standings.get_standings(Team2, "Losses") + 1))
		Standings.set_standings(Team1, "Differential", (Standings.get_standings(Team1, "Differential") + (team1gamewincount - team2gamewincount)))
		Standings.set_standings(Team2, "Differential", (Standings.get_standings(Team2, "Differential") + (team2gamewincount - team1gamewincount)))
		matchrowtotal = (matchrowtotal + 1)
	if team1gamewincount < team2gamewincount:
		Results.set_match_total(matchrowtotal, Team2, Team1, team2gamewincount, team1gamewincount)
		Standings.set_standings(Team2, "Wins", (Standings.get_standings(Team2, "Wins") + 1))
		Standings.set_standings(Team1, "Losses", (Standings.get_standings(Team1, "Losses") + 1))
		Standings.set_standings(Team2, "Differential", (Standings.get_standings(Team2, "Differential") + (team2gamewincount - team1gamewincount)))
		Standings.set_standings(Team1, "Differential", (Standings.get_standings(Team1, "Differential") + (team1gamewincount - team2gamewincount)))
		matchrowtotal = (matchrowtotal + 1)
	if team1gamewincount == team2gamewincount:
		if team1setwincount > team2setwincount:
			Results.set_match_total(matchrowtotal, Team1, Team2, team1gamewincount, team2gamewincount)
			Standings.set_standings(Team1, "Wins", (Standings.get_standings(Team1, "Wins") + 1))
			Standings.set_standings(Team2, "Losses", (Standings.get_standings(Team2, "Losses") + 1))
			Standings.set_standings(Team1, "Differential", (Standings.get_standings(Team1, "Differential") + (team1gamewincount - team2gamewincount)))
			Standings.set_standings(Team2, "Differential", (Standings.get_standings(Team2, "Differential") + (team2gamewincount - team1gamewincount)))
			matchrowtotal = (matchrowtotal + 1)
		if team1setwincount < team2setwincount:
			Results.set_match_total(matchrowtotal, Team2, Team1, team2gamewincount, team1gamewincount)
			Standings.set_standings(Team2, "Wins", (Standings.get_standings(Team2, "Wins") + 1))
			Standings.set_standings(Team1, "Losses", (Standings.get_standings(Team1, "Losses") + 1))
			Standings.set_standings(Team2, "Differential", (Standings.get_standings(Team2, "Differential") + (team2gamewincount - team1gamewincount)))
			Standings.set_standings(Team1, "Differential", (Standings.get_standings(Team1, "Differential") + (team1gamewincount - team2gamewincount)))
			matchrowtotal = (matchrowtotal + 1)
	Results.get_match_total((matchrowtotal - 1), 0)
	Results.get_match_total((matchrowtotal - 1), 1)
	Results.get_match_total((matchrowtotal - 1), 2)
	Results.get_match_total((matchrowtotal - 1), 3)
	Standings.get_standings(Team1, "Wins")
	Standings.get_standings(Team1, "Losses")
	Standings.get_standings(Team1, "Differential")
	Standings.get_standings(Team2, "Wins")
	Standings.get_standings(Team2, "Losses")
	Standings.get_standings(Team2, "Differential")
