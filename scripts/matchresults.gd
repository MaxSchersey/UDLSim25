extends Node

var array2Dsingles = []
var array2Dfs = []
var array2Dstamina = []
var array2Ddoubles = []
var array2Dsquads = []

var array2Dtotalscore = []

# Called when the node enters the scene tree for the first time.
func _ready():
	
#Establishing each 2d array's row and column count
	
	for i in range(260):
		array2Dsingles.append([])
		for j in range(6):
			array2Dsingles[i].append(0)
	
	for i in range(260):
		array2Dfs.append([])
		for j in range(6):
			array2Dfs[i].append(0)
	
	for i in range(260):
		array2Dstamina.append([])
		for j in range(6):
			array2Dstamina[i].append(0)
	
	for i in range(260):
		array2Ddoubles.append([])
		for j in range(8):
			array2Ddoubles[i].append(0)
	
	for i in range(260):
		array2Dsquads.append([])
		for j in range(10):
			array2Dsquads[i].append(0)
	
	for i in range(260):
		array2Dtotalscore.append([])
		for j in range(4):
			array2Dtotalscore[i].append(0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func set_match_singles(RowCount, WinTeam, WinChar, LossTeam, LossChar, WinCount, LossCount):
	array2Dsingles[RowCount] = [WinTeam, WinChar, LossTeam, LossChar, WinCount, LossCount]

func set_match_fs(RowCount, WinTeam, WinChar, LossTeam, LossChar, WinCount, LossCount):
	array2Dfs[RowCount] = [WinTeam, WinChar, LossTeam, LossChar, WinCount, LossCount]

func set_match_stamina(RowCount, WinTeam, WinChar, LossTeam, LossChar, WinCount, LossCount):
	array2Dstamina[RowCount] = [WinTeam, WinChar, LossTeam, LossChar, WinCount, LossCount]

func set_match_doubles(RowCount, WinTeam, WinChar1, WinChar2, LossTeam, LossChar1, LossChar2, WinCount, LossCount):
	array2Ddoubles[RowCount] = [WinTeam, WinChar1, WinChar2, LossTeam, LossChar1, LossChar2, WinCount, LossCount]

func set_match_squads(RowCount, WinTeam, WinChar1, WinChar2, WinChar3, LossTeam, LossChar1, LossChar2, LossChar3, WinCount, LossCount):
	array2Dsquads[RowCount] = [WinTeam, WinChar1, WinChar2, WinChar3, LossTeam, LossChar1, LossChar2, LossChar3, WinCount, LossCount]

func set_match_total(RowCount, WinTeam, LossTeam, WinCount, LossCount):
	array2Dtotalscore[RowCount] = [WinTeam, LossTeam, WinCount, LossCount]

func get_match_singles(RowCount, ColumnCount):
	if ColumnCount == 0:
		print("Singles Result No. " + str(RowCount) + ", Winning Team: " + str(array2Dsingles[RowCount][ColumnCount]))
	if ColumnCount == 1:
		print("Singles Result No. " + str(RowCount) + ", Winning Character: " + str(array2Dsingles[RowCount][ColumnCount]))
	if ColumnCount == 2:
		print("Singles Result No. " + str(RowCount) + ", Losing Team: " + str(array2Dsingles[RowCount][ColumnCount]))
	if ColumnCount == 3:
		print("Singles Result No. " + str(RowCount) + ", Losing Character: " + str(array2Dsingles[RowCount][ColumnCount]))
	if ColumnCount == 4:
		print("Singles Result No. " + str(RowCount) + ", Games Won By Winner: " + str(array2Dsingles[RowCount][ColumnCount]))
	if ColumnCount == 5:
		print("Singles Result No. " + str(RowCount) + ", Games Lost By Winner: " + str(array2Dsingles[RowCount][ColumnCount]))
	if ColumnCount <0 or ColumnCount >5:
		print("Singles Result No. " + str(RowCount) + ", Invalid Column Count")
	return array2Dsingles[RowCount][ColumnCount]

func get_match_fs(RowCount, ColumnCount):
	if ColumnCount == 0:
		print("FS Result No. " + str(RowCount) + ", Winning Team: " + str(array2Dfs[RowCount][ColumnCount]))
	if ColumnCount == 1:
		print("FS Result No. " + str(RowCount) + ", Winning Character: " + str(array2Dfs[RowCount][ColumnCount]))
	if ColumnCount == 2:
		print("FS Result No. " + str(RowCount) + ", Losing Team: " + str(array2Dfs[RowCount][ColumnCount]))
	if ColumnCount == 3:
		print("FS Result No. " + str(RowCount) + ", Losing Character: " + str(array2Dfs[RowCount][ColumnCount]))
	if ColumnCount == 4:
		print("FS Result No. " + str(RowCount) + ", Games Won By Winner: " + str(array2Dfs[RowCount][ColumnCount]))
	if ColumnCount == 5:
		print("FS Result No. " + str(RowCount) + ", Games Lost By Winner: " + str(array2Dfs[RowCount][ColumnCount]))
	if ColumnCount <0 or ColumnCount >5:
		print("FS Result No. " + str(RowCount) + ", Invalid Column Count")
	return array2Dfs[RowCount][ColumnCount]

func get_match_stamina(RowCount, ColumnCount):
	if ColumnCount == 0:
		print("Stamina Result No. " + str(RowCount) + ", Winning Team: " + str(array2Dstamina[RowCount][ColumnCount]))
	if ColumnCount == 1:
		print("Stamina Result No. " + str(RowCount) + ", Winning Character: " + str(array2Dstamina[RowCount][ColumnCount]))
	if ColumnCount == 2:
		print("Stamina Result No. " + str(RowCount) + ", Losing Team: " + str(array2Dstamina[RowCount][ColumnCount]))
	if ColumnCount == 3:
		print("Stamina Result No. " + str(RowCount) + ", Losing Character: " + str(array2Dstamina[RowCount][ColumnCount]))
	if ColumnCount == 4:
		print("Stamina Result No. " + str(RowCount) + ", Games Won By Winner: " + str(array2Dstamina[RowCount][ColumnCount]))
	if ColumnCount == 5:
		print("Stamina Result No. " + str(RowCount) + ", Games Lost By Winner: " + str(array2Dstamina[RowCount][ColumnCount]))
	if ColumnCount <0 or ColumnCount >5:
		print("Stamina Result No. " + str(RowCount) + ", Invalid Column Count")
	return array2Dstamina[RowCount][ColumnCount]

func get_match_doubles(RowCount, ColumnCount):
	if ColumnCount == 0:
		print("Doubles Result No. " + str(RowCount) + ", Winning Team: " + str(array2Ddoubles[RowCount][ColumnCount]))
	if ColumnCount == 1:
		print("Doubles Result No. " + str(RowCount) + ", Winning Character: " + str(array2Ddoubles[RowCount][ColumnCount]))
	if ColumnCount == 2:
		print("Doubles Result No. " + str(RowCount) + ", Winning Character: " + str(array2Ddoubles[RowCount][ColumnCount]))
	if ColumnCount == 3:
		print("Doubles Result No. " + str(RowCount) + ", Losing Team: " + str(array2Ddoubles[RowCount][ColumnCount]))
	if ColumnCount == 4:
		print("Doubles Result No. " + str(RowCount) + ", Losing Character: " + str(array2Ddoubles[RowCount][ColumnCount]))
	if ColumnCount == 5:
		print("Doubles Result No. " + str(RowCount) + ", Losing Character: " + str(array2Ddoubles[RowCount][ColumnCount]))
	if ColumnCount == 6:
		print("Doubles Result No. " + str(RowCount) + ", Games Won By Winner: " + str(array2Ddoubles[RowCount][ColumnCount]))
	if ColumnCount == 7:
		print("Doubles Result No. " + str(RowCount) + ", Games Lost By Winner: " + str(array2Ddoubles[RowCount][ColumnCount]))
	if ColumnCount <0 or ColumnCount >7:
		print("Doubles Result No. " + str(RowCount) + ", Invalid Column Count")
	return array2Ddoubles[RowCount][ColumnCount]

func get_match_squads(RowCount, ColumnCount):
	if ColumnCount == 0:
		print("Squads Result No. " + str(RowCount) + ", Winning Team: " + str(array2Dsquads[RowCount][ColumnCount]))
	if ColumnCount == 1:
		print("Squads Result No. " + str(RowCount) + ", Winning Character: " + str(array2Dsquads[RowCount][ColumnCount]))
	if ColumnCount == 2:
		print("Squads Result No. " + str(RowCount) + ", Winning Character: " + str(array2Dsquads[RowCount][ColumnCount]))
	if ColumnCount == 3:
		print("Squads Result No. " + str(RowCount) + ", Winning Character: " + str(array2Dsquads[RowCount][ColumnCount]))
	if ColumnCount == 4:
		print("Squads Result No. " + str(RowCount) + ", Losing Team: " + str(array2Dsquads[RowCount][ColumnCount]))
	if ColumnCount == 5:
		print("Squads Result No. " + str(RowCount) + ", Losing Character: " + str(array2Dsquads[RowCount][ColumnCount]))
	if ColumnCount == 6:
		print("Squads Result No. " + str(RowCount) + ", Losing Character: " + str(array2Dsquads[RowCount][ColumnCount]))
	if ColumnCount == 7:
		print("Squads Result No. " + str(RowCount) + ", Losing Character: " + str(array2Dsquads[RowCount][ColumnCount]))
	if ColumnCount == 8:
		print("Squads Result No. " + str(RowCount) + ", Games Won By Winner: " + str(array2Dsquads[RowCount][ColumnCount]))
	if ColumnCount == 9:
		print("Squads Result No. " + str(RowCount) + ", Games Lost By Winner: " + str(array2Dsquads[RowCount][ColumnCount]))
	if ColumnCount <0 or ColumnCount >9:
		print("Squads Result No. " + str(RowCount) + ", Invalid Column Count")
	return array2Dsquads[RowCount][ColumnCount]

func get_match_total(RowCount, ColumnCount):
	if ColumnCount == 0:
		print("Total Match Result No. " + str(RowCount) + ", Winning Team: " + str(array2Dtotalscore[RowCount][ColumnCount]))
	if ColumnCount == 1:
		print("Total Match Result No. " + str(RowCount) + ", Losing Team: " + str(array2Dtotalscore[RowCount][ColumnCount]))
	if ColumnCount == 2:
		print("Total Match Result No. " + str(RowCount) + ", Games Won By Winner: " + str(array2Dtotalscore[RowCount][ColumnCount]))
	if ColumnCount == 3:
		print("Total Match Result No. " + str(RowCount) + ", Games Lost By Winner: " + str(array2Dtotalscore[RowCount][ColumnCount]))
	return array2Dtotalscore[RowCount][ColumnCount]
	
