extends Node

var Team1 = "Default"
var Team2 = "Default"
var IsQuickplay = 0
var Team1Division
var Team1Conference
var SeasonWeek = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#Move these to arrays with set/get in the Schedule script
	if Team1 != "Default":
		set_division()
		set_conference()

func set_division():
	if Schedule.get_team_ID(Team1) <= 5:
		Team1Division = "Burrito"
	if Schedule.get_team_ID(Team1) > 5 and Schedule.get_team_ID(Team1) <= 10:
		Team1Division = "Corn"	
	if Schedule.get_team_ID(Team1) > 10 and Schedule.get_team_ID(Team1) <= 15:
		Team1Division = "Apple"
	if Schedule.get_team_ID(Team1) > 15 and Schedule.get_team_ID(Team1) <= 20:
		Team1Division = "Carbomb"
	if Schedule.get_team_ID(Team1) > 20 and Schedule.get_team_ID(Team1) <= 25:
		Team1Division = "Wild West"
	if Schedule.get_team_ID(Team1) > 25 and Schedule.get_team_ID(Team1) <= 30:
		Team1Division = "Deep South"
	if Schedule.get_team_ID(Team1) > 30 and Schedule.get_team_ID(Team1) <= 35:
		Team1Division = "Big East"
	if Schedule.get_team_ID(Team1) > 35 and Schedule.get_team_ID(Team1) <= 40:
		Team1Division = "Ikea"

func set_conference():
	if Team1Division == "Burrito" or Team1Division == "Corn" or Team1Division == "Apple" or Team1Division == "Carbomb":
		Team1Conference = "Alpha"
	if Team1Division == "Wild West" or Team1Division == "Deep South" or Team1Division == "Big East" or Team1Division == "Ikea":
		Team1Conference = "Omega"
