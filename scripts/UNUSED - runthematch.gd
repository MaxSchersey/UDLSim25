extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	
	#MatchSim.setup_match("Snake Oli Merchants", "Arizona Almighty")
	
	Global.Team1 = "Snake Oli Merchants"
	Schedule.init_season_schedule()
	
	#Down the line, turn this into get_personal_schedule
	print("Week 1 Match: " + 
	Schedule.get_schedule(
		Schedule.get_teamschedule(
			Schedule.get_team_ID(Global.Team1),1
		)
	, 0) + " Versus " + 
	 Schedule.get_schedule(
		Schedule.get_teamschedule(
			Schedule.get_team_ID(Global.Team1),1
		)
	, 1))
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
