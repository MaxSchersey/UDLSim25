extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	schedule_view()
	lineup_view()
	standings_view(Global.Team1Division)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func schedule_view():
	#Add conditional change if the week has passed based on matchrowtotal
	$"Left - Schedule/ColorRect/Week1".text = "Week 1: " + Schedule.get_schedule((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),1)),0) + " vs. " + Schedule.get_schedule((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),1)),1)
	$"Left - Schedule/ColorRect2/Week2".text = "Week 2: " + Schedule.get_schedule((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),2)),0) + " vs. " + Schedule.get_schedule((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),2)),1)
	$"Left - Schedule/ColorRect3/Week3".text = "Week 3: " + Schedule.get_schedule((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),3)),0) + " vs. " + Schedule.get_schedule((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),3)),1)
	$"Left - Schedule/ColorRect4/Week4".text = "Week 4: " + Schedule.get_schedule((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),4)),0) + " vs. " + Schedule.get_schedule((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),4)),1)
	$"Left - Schedule/ColorRect5/Week5".text = "Week 5: " + Schedule.get_schedule((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),5)),0) + " vs. " + Schedule.get_schedule((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),5)),1)
	$"Left - Schedule/ColorRect6/Week6".text = "Week 6: " + Schedule.get_schedule((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),6)),0) + " vs. " + Schedule.get_schedule((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),6)),1)
	$"Left - Schedule/ColorRect7/Week7".text = "Week 7: " + Schedule.get_schedule((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),7)),0) + " vs. " + Schedule.get_schedule((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),7)),1)
	$"Left - Schedule/ColorRect8/Week8".text = "Week 8: " + Schedule.get_schedule((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),8)),0) + " vs. " + Schedule.get_schedule((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),8)),1)
	$"Left - Schedule/ColorRect9/Week9".text = "Week 9: " + Schedule.get_schedule((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),9)),0) + " vs. " + Schedule.get_schedule((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),9)),1)
	$"Left - Schedule/ColorRect10/Week10".text = "Week 10: " + Schedule.get_schedule((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),10)),0) + " vs. " + Schedule.get_schedule((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),10)),1)
	$"Left - Schedule/ColorRect11/Week11".text = "Week 11: " + Schedule.get_schedule((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),11)),0) + " vs. " + Schedule.get_schedule((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),11)),1)
	$"Left - Schedule/ColorRect12/Week12".text = "Week 12: " + Schedule.get_schedule((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),12)),0) + " vs. " + Schedule.get_schedule((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),12)),1)
	
	if Global.SeasonWeek >= 2:
		$"Left - Schedule/ColorRect/Week1".text = "Week 1: " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),1)-1),0)) + " " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),1)-1),2)) + " - " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),1)-1),1)) + " " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),1)-1),3))
		if Global.Team1 == str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),1)-1),0)):
			$"Left - Schedule/ColorRect".color = Color(0, .525, .239, 1)
		else:
			$"Left - Schedule/ColorRect".color = Color(.431, .075, .063, 1)
	
	if Global.SeasonWeek >= 3:
		$"Left - Schedule/ColorRect2/Week2".text = "Week 2: " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),2)-1),0)) + " " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),2)-1),2)) + " - " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),2)-1),1)) + " " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),2)-1),3))
		if Global.Team1 == str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),2)-1),0)):
			$"Left - Schedule/ColorRect2".color = Color(0, .525, .239, 1)
		else:
			$"Left - Schedule/ColorRect2".color = Color(.431, .075, .063, 1)
	
	if Global.SeasonWeek >= 4:
		$"Left - Schedule/ColorRect3/Week3".text = "Week 3: " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),3)-1),0)) + " " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),3)-1),2)) + " - " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),3)-1),1)) + " " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),3)-1),3))
		if Global.Team1 == str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),3)-1),0)):
			$"Left - Schedule/ColorRect3".color = Color(0, .525, .239, 1)
		else:
			$"Left - Schedule/ColorRect3".color = Color(.431, .075, .063, 1)
		
	if Global.SeasonWeek >= 5:
		$"Left - Schedule/ColorRect4/Week4".text = "Week 4: " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),4)-1),0)) + " " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),4)-1),2)) + " - " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),4)-1),1)) + " " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),4)-1),3))
		if Global.Team1 == str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),4)-1),0)):
			$"Left - Schedule/ColorRect4".color = Color(0, .525, .239, 1)
		else:
			$"Left - Schedule/ColorRect4".color = Color(.431, .075, .063, 1)

	if Global.SeasonWeek >= 6:
		$"Left - Schedule/ColorRect5/Week5".text = "Week 5: " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),5)-1),0)) + " " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),5)-1),2)) + " - " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),5)-1),1)) + " " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),5)-1),3))
		if Global.Team1 == str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),5)-1),0)):
			$"Left - Schedule/ColorRect5".color = Color(0, .525, .239, 1)
		else:
			$"Left - Schedule/ColorRect5".color = Color(.431, .075, .063, 1)

	if Global.SeasonWeek >= 7:
		$"Left - Schedule/ColorRect6/Week6".text = "Week 6: " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),6)-1),0)) + " " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),6)-1),2)) + " - " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),6)-1),1)) + " " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),6)-1),3))
		if Global.Team1 == str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),6)-1),0)):
			$"Left - Schedule/ColorRect6".color = Color(0, .525, .239, 1)
		else:
			$"Left - Schedule/ColorRect6".color = Color(.431, .075, .063, 1)

	if Global.SeasonWeek >= 8:
		$"Left - Schedule/ColorRect7/Week7".text = "Week 7: " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),7)-1),0)) + " " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),7)-1),2)) + " - " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),7)-1),1)) + " " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),7)-1),3))
		if Global.Team1 == str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),7)-1),0)):
			$"Left - Schedule/ColorRect7".color = Color(0, .525, .239, 1)
		else:
			$"Left - Schedule/ColorRect7".color = Color(.431, .075, .063, 1)
		
	if Global.SeasonWeek >= 9:
		$"Left - Schedule/ColorRect8/Week8".text = "Week 8: " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),8)-1),0)) + " " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),8)-1),2)) + " - " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),8)-1),1)) + " " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),8)-1),3))
		if Global.Team1 == str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),8)-1),0)):
			$"Left - Schedule/ColorRect8".color = Color(0, .525, .239, 1)
		else:
			$"Left - Schedule/ColorRect8".color = Color(.431, .075, .063, 1)

	if Global.SeasonWeek >= 10:
		$"Left - Schedule/ColorRect9/Week9".text = "Week 9: " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),9)-1),0)) + " " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),9)-1),2)) + " - " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),9)-1),1)) + " " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),9)-1),3))
		if Global.Team1 == str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),9)-1),0)):
			$"Left - Schedule/ColorRect9".color = Color(0, .525, .239, 1)
		else:
			$"Left - Schedule/ColorRect9".color = Color(.431, .075, .063, 1)

	if Global.SeasonWeek >= 11:
		$"Left - Schedule/ColorRect10/Week10".text = "Week 10: " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),10)-1),0)) + " " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),10)-1),2)) + " - " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),10)-1),1)) + " " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),10)-1),3))
		if Global.Team1 == str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),10)-1),0)):
			$"Left - Schedule/ColorRect10".color = Color(0, .525, .239, 1)
		else:
			$"Left - Schedule/ColorRect10".color = Color(.431, .075, .063, 1)

	if Global.SeasonWeek >= 12:
		$"Left - Schedule/ColorRect11/Week11".text = "Week 11: " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),11)-1),0)) + " " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),11)-1),2)) + " - " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),11)-1),1)) + " " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),11)-1),3))
		if Global.Team1 == str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),11)-1),0)):
			$"Left - Schedule/ColorRect11".color = Color(0, .525, .239, 1)
		else:
			$"Left - Schedule/ColorRect11".color = Color(.431, .075, .063, 1)
	
	if Global.SeasonWeek >= 13:
		$"Left - Schedule/ColorRect12/Week12".text = "Week 12: " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),12)-1),0)) + " " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),12)-1),2)) + " - " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),12)-1),1)) + " " + str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),12)-1),3))
		if Global.Team1 == str(Results.get_match_total((Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),12)-1),0)):
			$"Left - Schedule/ColorRect12".color = Color(0, .525, .239, 1)
		else:
			$"Left - Schedule/ColorRect12".color = Color(.431, .075, .063, 1)

func lineup_view():
	$ColorRect/Label.text = Global.Team1
	
	$"Center - Lineup/ColorRect2/Char1".text = "Singles - " + Rosters.get_lineup(Global.Team1, "Singles")
	$"Center - Lineup/ColorRect3/Char2".text = "Final Smash - " + Rosters.get_lineup(Global.Team1, "Final Smash")
	$"Center - Lineup/ColorRect4/Char3".text = "Stamina - " + Rosters.get_lineup(Global.Team1, "Stamina")
	$"Center - Lineup/ColorRect5/Char4".text = "Doubles - " + Rosters.get_lineup(Global.Team1, "Doubles1")
	$"Center - Lineup/ColorRect6/Char5".text = "Doubles - " + Rosters.get_lineup(Global.Team1, "Doubles2")
	$"Center - Lineup/ColorRect7/Char6".text = "Squad Strike - " + Rosters.get_lineup(Global.Team1, "Squads1")
	$"Center - Lineup/ColorRect8/Char7".text = "Squad Strike - " + Rosters.get_lineup(Global.Team1, "Squads2")
	$"Center - Lineup/ColorRect9/Char8".text = "Squad Strike - " + Rosters.get_lineup(Global.Team1, "Squads3")
	$"Center - Lineup/ColorRect10/Char9".text = "Bench - " + Rosters.get_lineup(Global.Team1, "Bench")

func standings_view(Division):
	$"Right - Standings/ColorRect/Header".text = "STANDINGS - " + Global.Team1Division + " Division"
	
	$"Right - Standings/ColorRect2/Team1".text = str(Standings.get_division(Division, 0, 0)) + ": " + str(Standings.get_standings(Standings.get_division(Division, 0, 0), "Wins")) + "-" + str(Standings.get_standings(Standings.get_division(Division, 0, 0), "Losses")) + ", " + str(Standings.get_standings(Standings.get_division(Division, 0, 0), "Differential")) + " Differential"
	$"Right - Standings/ColorRect3/Team2".text = str(Standings.get_division(Division, 1, 0)) + ": " + str(Standings.get_standings(Standings.get_division(Division, 1, 0), "Wins")) + "-" + str(Standings.get_standings(Standings.get_division(Division, 1, 0), "Losses")) + ", " + str(Standings.get_standings(Standings.get_division(Division, 1, 0), "Differential")) + " Differential"
	$"Right - Standings/ColorRect4/Team3".text = str(Standings.get_division(Division, 2, 0)) + ": " + str(Standings.get_standings(Standings.get_division(Division, 2, 0), "Wins")) + "-" + str(Standings.get_standings(Standings.get_division(Division, 2, 0), "Losses")) + ", " + str(Standings.get_standings(Standings.get_division(Division, 2, 0), "Differential")) + " Differential"
	$"Right - Standings/ColorRect5/Team4".text = str(Standings.get_division(Division, 3, 0)) + ": " + str(Standings.get_standings(Standings.get_division(Division, 3, 0), "Wins")) + "-" + str(Standings.get_standings(Standings.get_division(Division, 3, 0), "Losses")) + ", " + str(Standings.get_standings(Standings.get_division(Division, 3, 0), "Differential")) + " Differential"
	$"Right - Standings/ColorRect6/Team5".text = str(Standings.get_division(Division, 4, 0)) + ": " + str(Standings.get_standings(Standings.get_division(Division, 4, 0), "Wins")) + "-" + str(Standings.get_standings(Standings.get_division(Division, 4, 0), "Losses")) + ", " + str(Standings.get_standings(Standings.get_division(Division, 4, 0), "Differential")) + " Differential"

	if Standings.get_division(Division, 0, 0) == Global.Team1:
		$"Right - Standings/ColorRect2".color = Color(.370, .370, 0, 1)
	if Standings.get_division(Division, 1, 0) == Global.Team1:
		$"Right - Standings/ColorRect3".color = Color(.370, .370, 0, 1)
	if Standings.get_division(Division, 2, 0) == Global.Team1:
		$"Right - Standings/ColorRect4".color = Color(.370, .370, 0, 1)
	if Standings.get_division(Division, 3, 0) == Global.Team1:
		$"Right - Standings/ColorRect5".color = Color(.370, .370, 0, 1)
	if Standings.get_division(Division, 4, 0) == Global.Team1:
		$"Right - Standings/ColorRect6".color = Color(.370, .370, 0, 1)

func full_week_sim():
	#Sim 20 matches based on the week
	MatchSim.setup_match(Schedule.get_schedule((Global.SeasonWeek * 20) - 19,0),Schedule.get_schedule((Global.SeasonWeek * 20) - 19,1))
	MatchSim.setup_match(Schedule.get_schedule((Global.SeasonWeek * 20) - 18,0),Schedule.get_schedule((Global.SeasonWeek * 20) - 18,1))
	MatchSim.setup_match(Schedule.get_schedule((Global.SeasonWeek * 20) - 17,0),Schedule.get_schedule((Global.SeasonWeek * 20) - 17,1))
	MatchSim.setup_match(Schedule.get_schedule((Global.SeasonWeek * 20) - 16,0),Schedule.get_schedule((Global.SeasonWeek * 20) - 16,1))
	MatchSim.setup_match(Schedule.get_schedule((Global.SeasonWeek * 20) - 15,0),Schedule.get_schedule((Global.SeasonWeek * 20) - 15,1))
	MatchSim.setup_match(Schedule.get_schedule((Global.SeasonWeek * 20) - 14,0),Schedule.get_schedule((Global.SeasonWeek * 20) - 14,1))
	MatchSim.setup_match(Schedule.get_schedule((Global.SeasonWeek * 20) - 13,0),Schedule.get_schedule((Global.SeasonWeek * 20) - 13,1))
	MatchSim.setup_match(Schedule.get_schedule((Global.SeasonWeek * 20) - 12,0),Schedule.get_schedule((Global.SeasonWeek * 20) - 12,1))
	MatchSim.setup_match(Schedule.get_schedule((Global.SeasonWeek * 20) - 11,0),Schedule.get_schedule((Global.SeasonWeek * 20) - 11,1))
	MatchSim.setup_match(Schedule.get_schedule((Global.SeasonWeek * 20) - 10,0),Schedule.get_schedule((Global.SeasonWeek * 20) - 10,1))
	MatchSim.setup_match(Schedule.get_schedule((Global.SeasonWeek * 20) - 9,0),Schedule.get_schedule((Global.SeasonWeek * 20) - 9,1))
	MatchSim.setup_match(Schedule.get_schedule((Global.SeasonWeek * 20) - 8,0),Schedule.get_schedule((Global.SeasonWeek * 20) - 8,1))
	MatchSim.setup_match(Schedule.get_schedule((Global.SeasonWeek * 20) - 7,0),Schedule.get_schedule((Global.SeasonWeek * 20) - 7,1))
	MatchSim.setup_match(Schedule.get_schedule((Global.SeasonWeek * 20) - 6,0),Schedule.get_schedule((Global.SeasonWeek * 20) - 6,1))
	MatchSim.setup_match(Schedule.get_schedule((Global.SeasonWeek * 20) - 5,0),Schedule.get_schedule((Global.SeasonWeek * 20) - 5,1))
	MatchSim.setup_match(Schedule.get_schedule((Global.SeasonWeek * 20) - 4,0),Schedule.get_schedule((Global.SeasonWeek * 20) - 4,1))
	MatchSim.setup_match(Schedule.get_schedule((Global.SeasonWeek * 20) - 3,0),Schedule.get_schedule((Global.SeasonWeek * 20) - 3,1))
	MatchSim.setup_match(Schedule.get_schedule((Global.SeasonWeek * 20) - 2,0),Schedule.get_schedule((Global.SeasonWeek * 20) - 2,1))
	MatchSim.setup_match(Schedule.get_schedule((Global.SeasonWeek * 20) - 1,0),Schedule.get_schedule((Global.SeasonWeek * 20) - 1,1))
	MatchSim.setup_match(Schedule.get_schedule((Global.SeasonWeek * 20) - 0,0),Schedule.get_schedule((Global.SeasonWeek * 20) - 0,1))

func find_season_match():
	#Need to set Team2 based on Team1's schedule for that week
	#Then set all the matchrow vars to the corresponding ID
	if Global.Team1 == Schedule.get_schedule(Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),Global.SeasonWeek), 0):
		Global.Team2 = Schedule.get_schedule(Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),Global.SeasonWeek), 1)
	else:
		Global.Team2 = Schedule.get_schedule(Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),Global.SeasonWeek), 0)
		
	MatchSim.matchrowsingles = Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),Global.SeasonWeek)
	MatchSim.matchrowfs = Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),Global.SeasonWeek)
	MatchSim.matchrowstamina = Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),Global.SeasonWeek)
	MatchSim.matchrowdoubles = Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),Global.SeasonWeek)
	MatchSim.matchrowsquads = Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),Global.SeasonWeek)
	MatchSim.matchrowtotal = Schedule.get_teamschedule(Schedule.get_team_ID(Global.Team1),Global.SeasonWeek)
	
	get_tree().change_scene_to_file("res://scenes/matchdisplay.tscn")

func find_postseason_match():
	if Global.SeasonWeek == 13:
		if Global.Team1 == Schedule.get_schedule(241, 0):
			Global.Team2 = Schedule.get_schedule(241, 1)
			MatchSim.matchrowsingles = 241
			MatchSim.matchrowfs = 241
			MatchSim.matchrowstamina = 241
			MatchSim.matchrowdoubles = 241
			MatchSim.matchrowsquads = 241
			MatchSim.matchrowtotal = 241
		if Global.Team1 == Schedule.get_schedule(241, 1):
			Global.Team2 = Schedule.get_schedule(241, 0)
			MatchSim.matchrowsingles = 241
			MatchSim.matchrowfs = 241
			MatchSim.matchrowstamina = 241
			MatchSim.matchrowdoubles = 241
			MatchSim.matchrowsquads = 241
			MatchSim.matchrowtotal = 241
		if Global.Team1 == Schedule.get_schedule(242, 0):
			Global.Team2 = Schedule.get_schedule(242, 1)
			MatchSim.matchrowsingles = 242
			MatchSim.matchrowfs = 242
			MatchSim.matchrowstamina = 242
			MatchSim.matchrowdoubles = 242
			MatchSim.matchrowsquads = 242
			MatchSim.matchrowtotal = 242
		if Global.Team1 == Schedule.get_schedule(242, 1):
			Global.Team2 = Schedule.get_schedule(242, 0)
			MatchSim.matchrowsingles = 242
			MatchSim.matchrowfs = 242
			MatchSim.matchrowstamina = 242
			MatchSim.matchrowdoubles = 242
			MatchSim.matchrowsquads = 242
			MatchSim.matchrowtotal = 242
		if Global.Team1 == Schedule.get_schedule(243, 0):
			Global.Team2 = Schedule.get_schedule(243, 1)
			MatchSim.matchrowsingles = 243
			MatchSim.matchrowfs = 243
			MatchSim.matchrowstamina = 243
			MatchSim.matchrowdoubles = 243
			MatchSim.matchrowsquads = 243
			MatchSim.matchrowtotal = 243
		if Global.Team1 == Schedule.get_schedule(243, 1):
			Global.Team2 = Schedule.get_schedule(243, 0)
			MatchSim.matchrowsingles = 243
			MatchSim.matchrowfs = 243
			MatchSim.matchrowstamina = 243
			MatchSim.matchrowdoubles = 243
			MatchSim.matchrowsquads = 243
			MatchSim.matchrowtotal = 243
		if Global.Team1 == Schedule.get_schedule(244, 0):
			Global.Team2 = Schedule.get_schedule(244, 1)
			MatchSim.matchrowsingles = 244
			MatchSim.matchrowfs = 244
			MatchSim.matchrowstamina = 244
			MatchSim.matchrowdoubles = 244
			MatchSim.matchrowsquads = 244
			MatchSim.matchrowtotal = 244
		if Global.Team1 == Schedule.get_schedule(244, 1):
			Global.Team2 = Schedule.get_schedule(244, 0)
			MatchSim.matchrowsingles = 244
			MatchSim.matchrowfs = 244
			MatchSim.matchrowstamina = 244
			MatchSim.matchrowdoubles = 244
			MatchSim.matchrowsquads = 244
			MatchSim.matchrowtotal = 244
		if Global.Team1 == Schedule.get_schedule(245, 0):
			Global.Team2 = Schedule.get_schedule(245, 1)
			MatchSim.matchrowsingles = 245
			MatchSim.matchrowfs = 245
			MatchSim.matchrowstamina = 245
			MatchSim.matchrowdoubles = 245
			MatchSim.matchrowsquads = 245
			MatchSim.matchrowtotal = 245
		if Global.Team1 == Schedule.get_schedule(245, 1):
			Global.Team2 = Schedule.get_schedule(245, 0)
			MatchSim.matchrowsingles = 245
			MatchSim.matchrowfs = 245
			MatchSim.matchrowstamina = 245
			MatchSim.matchrowdoubles = 245
			MatchSim.matchrowsquads = 245
			MatchSim.matchrowtotal = 245
		if Global.Team1 == Schedule.get_schedule(246, 0):
			Global.Team2 = Schedule.get_schedule(246, 1)
			MatchSim.matchrowsingles = 246
			MatchSim.matchrowfs = 246
			MatchSim.matchrowstamina = 246
			MatchSim.matchrowdoubles = 246
			MatchSim.matchrowsquads = 246
			MatchSim.matchrowtotal = 246
		if Global.Team1 == Schedule.get_schedule(246, 1):
			Global.Team2 = Schedule.get_schedule(246, 0)
			MatchSim.matchrowsingles = 246
			MatchSim.matchrowfs = 246
			MatchSim.matchrowstamina = 246
			MatchSim.matchrowdoubles = 246
			MatchSim.matchrowsquads = 246
			MatchSim.matchrowtotal = 246
		if Global.Team1 == Schedule.get_schedule(247, 0):
			Global.Team2 = Schedule.get_schedule(247, 1)
			MatchSim.matchrowsingles = 247
			MatchSim.matchrowfs = 247
			MatchSim.matchrowstamina = 247
			MatchSim.matchrowdoubles = 247
			MatchSim.matchrowsquads = 247
			MatchSim.matchrowtotal = 247
		if Global.Team1 == Schedule.get_schedule(247, 1):
			Global.Team2 = Schedule.get_schedule(247, 0)
			MatchSim.matchrowsingles = 247
			MatchSim.matchrowfs = 247
			MatchSim.matchrowstamina = 247
			MatchSim.matchrowdoubles = 247
			MatchSim.matchrowsquads = 247
			MatchSim.matchrowtotal = 247
		if Global.Team1 == Schedule.get_schedule(248, 0):
			Global.Team2 = Schedule.get_schedule(248, 1)
			MatchSim.matchrowsingles = 248
			MatchSim.matchrowfs = 248
			MatchSim.matchrowstamina = 248
			MatchSim.matchrowdoubles = 248
			MatchSim.matchrowsquads = 248
			MatchSim.matchrowtotal = 248
		if Global.Team1 == Schedule.get_schedule(248, 1):
			Global.Team2 = Schedule.get_schedule(248, 0)
			MatchSim.matchrowsingles = 248
			MatchSim.matchrowfs = 248
			MatchSim.matchrowstamina = 248
			MatchSim.matchrowdoubles = 248
			MatchSim.matchrowsquads = 248
			MatchSim.matchrowtotal = 248
		get_tree().change_scene_to_file("res://scenes/matchdisplay.tscn")
	if Global.SeasonWeek == 14:
		if Global.Team1 == Schedule.get_schedule(249, 0):
			Global.Team2 = Schedule.get_schedule(249, 1)
			MatchSim.matchrowsingles = 249
			MatchSim.matchrowfs = 249
			MatchSim.matchrowstamina = 249
			MatchSim.matchrowdoubles = 249
			MatchSim.matchrowsquads = 249
			MatchSim.matchrowtotal = 249
		if Global.Team1 == Schedule.get_schedule(249, 1):
			Global.Team2 = Schedule.get_schedule(249, 0)
			MatchSim.matchrowsingles = 249
			MatchSim.matchrowfs = 249
			MatchSim.matchrowstamina = 249
			MatchSim.matchrowdoubles = 249
			MatchSim.matchrowsquads = 249
			MatchSim.matchrowtotal = 249
		if Global.Team1 == Schedule.get_schedule(250, 0):
			Global.Team2 = Schedule.get_schedule(250, 1)
			MatchSim.matchrowsingles = 250
			MatchSim.matchrowfs = 250
			MatchSim.matchrowstamina = 250
			MatchSim.matchrowdoubles = 250
			MatchSim.matchrowsquads = 250
			MatchSim.matchrowtotal = 250
		if Global.Team1 == Schedule.get_schedule(250, 1):
			Global.Team2 = Schedule.get_schedule(250, 0)
			MatchSim.matchrowsingles = 250
			MatchSim.matchrowfs = 250
			MatchSim.matchrowstamina = 250
			MatchSim.matchrowdoubles = 250
			MatchSim.matchrowsquads = 250
			MatchSim.matchrowtotal = 250
		if Global.Team1 == Schedule.get_schedule(251, 0):
			Global.Team2 = Schedule.get_schedule(251, 1)
			MatchSim.matchrowsingles = 251
			MatchSim.matchrowfs = 251
			MatchSim.matchrowstamina = 251
			MatchSim.matchrowdoubles = 251
			MatchSim.matchrowsquads = 251
			MatchSim.matchrowtotal = 251
		if Global.Team1 == Schedule.get_schedule(251, 1):
			Global.Team2 = Schedule.get_schedule(251, 0)
			MatchSim.matchrowsingles = 251
			MatchSim.matchrowfs = 251
			MatchSim.matchrowstamina = 251
			MatchSim.matchrowdoubles = 251
			MatchSim.matchrowsquads = 251
			MatchSim.matchrowtotal = 251
		if Global.Team1 == Schedule.get_schedule(252, 0):
			Global.Team2 = Schedule.get_schedule(252, 1)
			MatchSim.matchrowsingles = 252
			MatchSim.matchrowfs = 252
			MatchSim.matchrowstamina = 252
			MatchSim.matchrowdoubles = 252
			MatchSim.matchrowsquads = 252
			MatchSim.matchrowtotal = 252
		if Global.Team1 == Schedule.get_schedule(252, 1):
			Global.Team2 = Schedule.get_schedule(252, 0)
			MatchSim.matchrowsingles = 252
			MatchSim.matchrowfs = 252
			MatchSim.matchrowstamina = 252
			MatchSim.matchrowdoubles = 252
			MatchSim.matchrowsquads = 252
			MatchSim.matchrowtotal = 252
		get_tree().change_scene_to_file("res://scenes/matchdisplay.tscn")
	if Global.SeasonWeek == 15:
		if Global.Team1 == Schedule.get_schedule(253, 0):
			Global.Team2 = Schedule.get_schedule(253, 1)
			MatchSim.matchrowsingles = 253
			MatchSim.matchrowfs = 253
			MatchSim.matchrowstamina = 253
			MatchSim.matchrowdoubles = 253
			MatchSim.matchrowsquads = 253
			MatchSim.matchrowtotal = 253
		if Global.Team1 == Schedule.get_schedule(253, 1):
			Global.Team2 = Schedule.get_schedule(253, 0)
			MatchSim.matchrowsingles = 253
			MatchSim.matchrowfs = 253
			MatchSim.matchrowstamina = 253
			MatchSim.matchrowdoubles = 253
			MatchSim.matchrowsquads = 253
			MatchSim.matchrowtotal = 253
		if Global.Team1 == Schedule.get_schedule(254, 0):
			Global.Team2 = Schedule.get_schedule(254, 1)
			MatchSim.matchrowsingles = 254
			MatchSim.matchrowfs = 254
			MatchSim.matchrowstamina = 254
			MatchSim.matchrowdoubles = 254
			MatchSim.matchrowsquads = 254
			MatchSim.matchrowtotal = 254
		if Global.Team1 == Schedule.get_schedule(254, 1):
			Global.Team2 = Schedule.get_schedule(254, 0)
			MatchSim.matchrowsingles = 254
			MatchSim.matchrowfs = 254
			MatchSim.matchrowstamina = 254
			MatchSim.matchrowdoubles = 254
			MatchSim.matchrowsquads = 254
			MatchSim.matchrowtotal = 254
		get_tree().change_scene_to_file("res://scenes/matchdisplay.tscn")
	if Global.SeasonWeek == 16:
		if Global.Team1 == Schedule.get_schedule(255, 0):
			Global.Team2 = Schedule.get_schedule(255, 1)
		if Global.Team1 == Schedule.get_schedule(255, 1):
			Global.Team2 = Schedule.get_schedule(255, 0)
		MatchSim.matchrowsingles = 255
		MatchSim.matchrowfs = 255
		MatchSim.matchrowstamina = 255
		MatchSim.matchrowdoubles = 255
		MatchSim.matchrowsquads = 255
		MatchSim.matchrowtotal = 255
		get_tree().change_scene_to_file("res://scenes/matchdisplay.tscn")

func _on_button_2_button_up() -> void:
	Rosters.set_lineup(Global.Team1, "Singles", Rosters.get_roster(Schedule.get_team_ID(Global.Team1) - 1, 1))
	Rosters.set_lineup(Global.Team1, "Final Smash", Rosters.get_roster(Schedule.get_team_ID(Global.Team1) - 1, 2))
	Rosters.set_lineup(Global.Team1, "Stamina", Rosters.get_roster(Schedule.get_team_ID(Global.Team1) - 1, 3))
	Rosters.set_lineup(Global.Team1, "Doubles1", Rosters.get_roster(Schedule.get_team_ID(Global.Team1) - 1, 4))
	Rosters.set_lineup(Global.Team1, "Doubles2", Rosters.get_roster(Schedule.get_team_ID(Global.Team1) - 1, 5))
	Rosters.set_lineup(Global.Team1, "Squads1", Rosters.get_roster(Schedule.get_team_ID(Global.Team1) - 1, 6))
	Rosters.set_lineup(Global.Team1, "Squads2", Rosters.get_roster(Schedule.get_team_ID(Global.Team1) - 1, 7))
	Rosters.set_lineup(Global.Team1, "Squads3", Rosters.get_roster(Schedule.get_team_ID(Global.Team1) - 1, 8))
	Rosters.set_lineup(Global.Team1, "Bench", Rosters.get_roster(Schedule.get_team_ID(Global.Team1) - 1, 9))
	Global.Team1 = "Default"
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")

func _on_lineup_mgmt_button_up() -> void:
	get_tree().change_scene_to_file("res://scenes/editlineup.tscn")

func _on_full_standings_button_up() -> void:
	get_tree().change_scene_to_file("res://scenes/leaguestandings.tscn")

func _on_scorecards_button_up() -> void:
	get_tree().change_scene_to_file("res://scenes/leagueschedule.tscn")

func _on_advance_button_up() -> void:
	if Global.SeasonWeek <= 12:	
		full_week_sim()
		Standings.division_update()
		Standings.wild_card_update()
		find_season_match()
	if Global.SeasonWeek == 13:
		Playoffs.set_div_winners()
		Standings.wild_card_update()
		Playoffs.set_wc_winners()
		Playoffs.set_playoff_pool()
		Schedule.init_wk13_schedule()
		
		MatchSim.setup_match(Schedule.get_schedule(241, 0), Schedule.get_schedule(241, 1))
		MatchSim.setup_match(Schedule.get_schedule(242, 0), Schedule.get_schedule(242, 1))
		MatchSim.setup_match(Schedule.get_schedule(243, 0), Schedule.get_schedule(243, 1))
		MatchSim.setup_match(Schedule.get_schedule(244, 0), Schedule.get_schedule(244, 1))
		MatchSim.setup_match(Schedule.get_schedule(245, 0), Schedule.get_schedule(245, 1))
		MatchSim.setup_match(Schedule.get_schedule(246, 0), Schedule.get_schedule(246, 1))
		MatchSim.setup_match(Schedule.get_schedule(247, 0), Schedule.get_schedule(247, 1))
		MatchSim.setup_match(Schedule.get_schedule(248, 0), Schedule.get_schedule(248, 1))
		
		if Playoffs.get_playoff_pool(Global.Team1Conference, 0) ==  Global.Team1 or Playoffs.get_playoff_pool(Global.Team1Conference, 1) ==  Global.Team1 or Playoffs.get_playoff_pool(Global.Team1Conference, 2) ==  Global.Team1 or Playoffs.get_playoff_pool(Global.Team1Conference, 3) ==  Global.Team1 or Playoffs.get_playoff_pool(Global.Team1Conference, 4) ==  Global.Team1 or Playoffs.get_playoff_pool(Global.Team1Conference, 5) ==  Global.Team1 or Playoffs.get_playoff_pool(Global.Team1Conference, 6) ==  Global.Team1 or Playoffs.get_playoff_pool(Global.Team1Conference, 7) ==  Global.Team1: 
			find_postseason_match()
		else:
			print(Playoffs.array2Dalphacombined)
			print(Playoffs.array2Domegacombined)
			get_tree().change_scene_to_file("res://scenes/gameover.tscn")
	if Global.SeasonWeek == 14:
		Playoffs.set_round_2()
		Schedule.init_wk14_schedule()
		#Playoffs Quarterfinals
		
		MatchSim.setup_match(Schedule.get_schedule(249, 0), Schedule.get_schedule(249, 1))
		MatchSim.setup_match(Schedule.get_schedule(250, 0), Schedule.get_schedule(250, 1))
		MatchSim.setup_match(Schedule.get_schedule(251, 0), Schedule.get_schedule(251, 1))
		MatchSim.setup_match(Schedule.get_schedule(252, 0), Schedule.get_schedule(252, 1))
		
		if Playoffs.get_round_2(Global.Team1Conference, 0) == Global.Team1 or Playoffs.get_round_2(Global.Team1Conference, 1) == Global.Team1 or Playoffs.get_round_2(Global.Team1Conference, 2) == Global.Team1 or Playoffs.get_round_2(Global.Team1Conference, 3) == Global.Team1:
			find_postseason_match()
		else:
			print(Playoffs.array2Dalpharound2)
			print(Playoffs.array2Domegaround2)
			get_tree().change_scene_to_file("res://scenes/gameover.tscn")
	if Global.SeasonWeek == 15:
		Playoffs.set_round_3()
		Schedule.init_wk15_schedule()
		#Playoffs Semifinals
		
		MatchSim.setup_match(Schedule.get_schedule(253, 0), Schedule.get_schedule(253, 1))
		MatchSim.setup_match(Schedule.get_schedule(254, 0), Schedule.get_schedule(254, 1))
		
		if Playoffs.get_round_3(Global.Team1Conference, 0) == Global.Team1 or Playoffs.get_round_3(Global.Team1Conference, 1) == Global.Team1:
			find_postseason_match()
		else:
			print(Playoffs.array2Dalpharound3)
			print(Playoffs.array2Domegaround3)
			get_tree().change_scene_to_file("res://scenes/gameover.tscn")
	if Global.SeasonWeek == 16:
		Playoffs.set_round_4()
		Schedule.init_wk16_schedule()
		#Playoffs Finals
		
		MatchSim.setup_match(Schedule.get_schedule(255, 0), Schedule.get_schedule(255, 1))
		
		if Playoffs.get_round_4(0) == Global.Team1 or Playoffs.get_round_4(1) == Global.Team1:
			find_postseason_match()
		else:
			print(Playoffs.array2Dplayofffinals)
			get_tree().change_scene_to_file("res://scenes/gameover.tscn")
	if Global.SeasonWeek == 17:
		Playoffs.set_champ()
		
		if Playoffs.get_champ() == Global.Team1:
			get_tree().change_scene_to_file("res://scenes/winner.tscn")
		else:
			get_tree().change_scene_to_file("res://scenes/gameover.tscn")
			
