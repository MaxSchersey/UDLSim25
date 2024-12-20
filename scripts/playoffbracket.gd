extends Node

var array2Dalphadivs = []
var array2Domegadivs = []
var array2Dalphawcfinals = []
var array2Domegawcfinals = []
var array2Dalphacombined = []
var array2Domegacombined = []
var array2Dalpharound2 = []
var array2Domegaround2 = []
var array2Dalpharound3 = []
var array2Domegaround3 = []
var array2Dplayofffinals = []
var array2Dchamp = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	for i in range(4):
		array2Dalphadivs.append([])
		for j in range(2):
			array2Dalphadivs[i].append(0)
	
	for i in range(4):
		array2Domegadivs.append([])
		for j in range(2):
			array2Domegadivs[i].append(0)
	
	for i in range(4):
		array2Dalphawcfinals.append([])
		for j in range(2):
			array2Dalphawcfinals[i].append(0)
	
	for i in range(4):
		array2Domegawcfinals.append([])
		for j in range(2):
			array2Domegawcfinals[i].append(0)
	
	for i in range(8):
		array2Dalphacombined.append([])
		for j in range(1):
			array2Dalphacombined[i].append(0)
	
	for i in range(8):
		array2Domegacombined.append([])
		for j in range(1):
			array2Domegacombined[i].append(0)
	
	for i in range(4):
		array2Dalpharound2.append([])
		for j in range(1):
			array2Dalpharound2[i].append(0)
	
	for i in range(4):
		array2Domegaround2.append([])
		for j in range(1):
			array2Domegaround2[i].append(0)
	
	for i in range(2):
		array2Dalpharound3.append([])
		for j in range(1):
			array2Dalpharound3[i].append(0)
	
	for i in range(2):
		array2Domegaround3.append([])
		for j in range(1):
			array2Domegaround3[i].append(0)
	
	for i in range(2):
		array2Dplayofffinals.append([])
		for j in range(1):
			array2Dplayofffinals[i].append(0)
	
	for i in range(1):
		array2Dchamp.append([])
		for j in range(1):
			array2Dchamp[i].append(0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func set_div_winners():
	if Standings.get_division("Burrito", 0, 1) > Standings.get_division("Burrito", 1, 1):
		array2Dalphadivs[0] = [Standings.get_division("Burrito", 0, 0), Standings.get_division("Burrito", 0, 1)]
	elif Standings.get_standings(Standings.get_division("Burrito", 0, 0),"Differential") >= Standings.get_standings(Standings.get_division("Burrito", 1, 0),"Differential"):
		array2Dalphadivs[0] = [Standings.get_division("Burrito", 0, 0), Standings.get_division("Burrito", 0, 1)]
	else:
		array2Dalphadivs[0] = [Standings.get_division("Burrito", 1, 0), Standings.get_division("Burrito", 1, 1)]
		Standings.set_division(1, "Burrito", Standings.get_division("Burrito", 0, 0), Standings.get_division("Burrito", 0, 1))
		Standings.set_division(0, "Burrito", (get_div_winners("Alpha", 0, 0)), (get_div_winners("Alpha", 0, 1)))
	
	if Standings.get_division("Corn", 0, 1) > Standings.get_division("Corn", 1, 1):
		array2Dalphadivs[1] = [Standings.get_division("Corn", 0, 0), Standings.get_division("Corn", 0, 1)]
	elif Standings.get_standings(Standings.get_division("Corn", 0, 0),"Differential") >= Standings.get_standings(Standings.get_division("Corn", 1, 0),"Differential"):
		array2Dalphadivs[1] = [Standings.get_division("Corn", 0, 0), Standings.get_division("Corn", 0, 1)]
	else:
		array2Dalphadivs[1] = [Standings.get_division("Corn", 1, 0), Standings.get_division("Corn", 1, 1)]
		Standings.set_division(1, "Corn", Standings.get_division("Corn", 0, 0), Standings.get_division("Corn", 0, 1))
		Standings.set_division(0, "Corn", (get_div_winners("Alpha", 1, 0)), (get_div_winners("Alpha", 1, 1)))
		
	if Standings.get_division("Apple", 0, 1) > Standings.get_division("Apple", 1, 1):
		array2Dalphadivs[2] = [Standings.get_division("Apple", 0, 0), Standings.get_division("Apple", 0, 1)]
	elif Standings.get_standings(Standings.get_division("Apple", 0, 0),"Differential") >= Standings.get_standings(Standings.get_division("Apple", 1, 0),"Differential"):
		array2Dalphadivs[2] = [Standings.get_division("Apple", 0, 0), Standings.get_division("Apple", 0, 1)]
	else:
		array2Dalphadivs[2] = [Standings.get_division("Apple", 1, 0), Standings.get_division("Apple", 1, 1)]
		Standings.set_division(1, "Apple", Standings.get_division("Apple", 0, 0), Standings.get_division("Apple", 0, 1))
		Standings.set_division(0, "Apple", (get_div_winners("Alpha", 2, 0)), (get_div_winners("Alpha", 2, 1)))
		
	if Standings.get_division("Carbomb", 0, 1) > Standings.get_division("Carbomb", 1, 1):
		array2Dalphadivs[3] = [Standings.get_division("Carbomb", 0, 0), Standings.get_division("Carbomb", 0, 1)]
	elif Standings.get_standings(Standings.get_division("Carbomb", 0, 0),"Differential") >= Standings.get_standings(Standings.get_division("Carbomb", 1, 0),"Differential"):
		array2Dalphadivs[3] = [Standings.get_division("Carbomb", 0, 0), Standings.get_division("Carbomb", 0, 1)]
	else:
		array2Dalphadivs[3] = [Standings.get_division("Carbomb", 1, 0), Standings.get_division("Carbomb", 1, 1)]
		Standings.set_division(1, "Carbomb", Standings.get_division("Carbomb", 0, 0), Standings.get_division("Carbomb", 0, 1))
		Standings.set_division(0, "Carbomb", (get_div_winners("Alpha", 3, 0)), (get_div_winners("Alpha", 3, 1)))
		
	if Standings.get_division("Wild West", 0, 1) > Standings.get_division("Wild West", 1, 1):
		array2Domegadivs[0] = [Standings.get_division("Wild West", 0, 0), Standings.get_division("Wild West", 0, 1)]
	elif Standings.get_standings(Standings.get_division("Wild West", 0, 0),"Differential") >= Standings.get_standings(Standings.get_division("Wild West", 1, 0),"Differential"):
		array2Domegadivs[0] = [Standings.get_division("Wild West", 0, 0), Standings.get_division("Wild West", 0, 1)]
	else:
		array2Domegadivs[0] = [Standings.get_division("Wild West", 1, 0), Standings.get_division("Wild West", 1, 1)]
		Standings.set_division(1, "Wild West", Standings.get_division("Wild West", 0, 0), Standings.get_division("Wild West", 0, 1))
		Standings.set_division(0, "Wild West", (get_div_winners("Omega", 0, 0)), (get_div_winners("Omega", 0, 1)))
		
	if Standings.get_division("Deep South", 0, 1) > Standings.get_division("Deep South", 1, 1):
		array2Domegadivs[1] = [Standings.get_division("Deep South", 0, 0), Standings.get_division("Deep South", 0, 1)]
	elif Standings.get_standings(Standings.get_division("Deep South", 0, 0),"Differential") >= Standings.get_standings(Standings.get_division("Deep South", 1, 0),"Differential"):
		array2Domegadivs[1] = [Standings.get_division("Deep South", 0, 0), Standings.get_division("Deep South", 0, 1)]
	else:
		array2Domegadivs[1] = [Standings.get_division("Deep South", 1, 0), Standings.get_division("Deep South", 1, 1)]
		Standings.set_division(1, "Deep South", Standings.get_division("Deep South", 0, 0), Standings.get_division("Deep South", 0, 1))
		Standings.set_division(0, "Deep South", (get_div_winners("Omega", 1, 0)), (get_div_winners("Omega", 1, 1)))
		
	if Standings.get_division("Big East", 0, 1) > Standings.get_division("Big East", 1, 1):
		array2Domegadivs[2] = [Standings.get_division("Big East", 0, 0), Standings.get_division("Big East", 0, 1)]
	elif Standings.get_standings(Standings.get_division("Big East", 0, 0),"Differential") >= Standings.get_standings(Standings.get_division("Big East", 1, 0),"Differential"):
		array2Domegadivs[2] = [Standings.get_division("Big East", 0, 0), Standings.get_division("Big East", 0, 1)]
	else:
		array2Domegadivs[2] = [Standings.get_division("Big East", 1, 0), Standings.get_division("Big East", 1, 1)]
		Standings.set_division(1, "Big East", Standings.get_division("Big East", 0, 0), Standings.get_division("Big East", 0, 1))
		Standings.set_division(0, "Big East", (get_div_winners("Omega", 2, 0)), (get_div_winners("Omega", 2, 1)))
		
	if Standings.get_division("Ikea", 0, 1) > Standings.get_division("Ikea", 1, 1):
		array2Domegadivs[3] = [Standings.get_division("Ikea", 0, 0), Standings.get_division("Ikea", 0, 1)]
	elif Standings.get_standings(Standings.get_division("Ikea", 0, 0),"Differential") >= Standings.get_standings(Standings.get_division("Ikea", 1, 0),"Differential"):
		array2Domegadivs[3] = [Standings.get_division("Ikea", 0, 0), Standings.get_division("Ikea", 0, 1)]
	else:
		array2Domegadivs[3] = [Standings.get_division("Ikea", 1, 0), Standings.get_division("Ikea", 1, 1)]
		Standings.set_division(1, "Ikea", Standings.get_division("Ikea", 0, 0), Standings.get_division("Ikea", 0, 1))
		Standings.set_division(0, "Ikea", (get_div_winners("Omega", 3, 0)), (get_div_winners("Omega", 3, 1)))

	array2Dalphadivs.sort_custom(func(a, b): return a[1] > b[1])
	array2Domegadivs.sort_custom(func(a, b): return a[1] > b[1])

func set_wc_winners():
	
	array2Dalphawcfinals[0] =[Standings.get_division("Alpha", 0, 0), Standings.get_division("Alpha", 0, 1)]
	array2Dalphawcfinals[1] = [Standings.get_division("Alpha", 1, 0), Standings.get_division("Alpha", 1, 1)]
	array2Dalphawcfinals[2] = [Standings.get_division("Alpha", 2, 0), Standings.get_division("Alpha", 2, 1)]
	array2Domegawcfinals[0] = [Standings.get_division("Omega", 0, 0), Standings.get_division("Omega", 0, 1)]
	array2Domegawcfinals[1] = [Standings.get_division("Omega", 1, 0), Standings.get_division("Omega", 1, 1)]
	array2Domegawcfinals[2] = [Standings.get_division("Omega", 2, 0), Standings.get_division("Omega", 2, 1)]
	
	if Standings.get_division("Alpha", 3, 1) > Standings.get_division("Alpha", 4, 1):
		array2Dalphawcfinals[3] = [Standings.get_division("Alpha", 3, 0), Standings.get_division("Alpha", 3, 1)]
	elif Standings.get_standings(Standings.get_division("Alpha", 3, 0),"Differential") >= Standings.get_standings(Standings.get_division("Alpha", 4, 0),"Differential"):
		array2Dalphawcfinals[3] = [Standings.get_division("Alpha", 3, 0), Standings.get_division("Alpha", 3, 1)]
	else:
		array2Dalphawcfinals[3] = [Standings.get_division("Alpha", 4, 0), Standings.get_division("Alpha", 4, 1)]
		Standings.set_division(4, "Alpha", Standings.get_division("Alpha", 3, 0), Standings.get_division("Alpha", 3, 1))
		Standings.set_division(3, "Alpha", (get_wc_winners("Alpha", 3, 0)), (get_wc_winners("Alpha", 3, 1)))

	if Standings.get_division("Omega", 3, 1) > Standings.get_division("Omega", 4, 1):
		array2Domegawcfinals[3] = [Standings.get_division("Omega", 3, 0), Standings.get_division("Omega", 3, 1)]
	elif Standings.get_standings(Standings.get_division("Omega", 3, 0),"Differential") >= Standings.get_standings(Standings.get_division("Omega", 4, 0),"Differential"):
		array2Domegawcfinals[3] = [Standings.get_division("Omega", 3, 0), Standings.get_division("Omega", 3, 1)]
	else:
		array2Domegawcfinals[3] = [Standings.get_division("Omega", 4, 0), Standings.get_division("Omega", 4, 1)]
		Standings.set_division(4, "Omega", Standings.get_division("Omega", 3, 0), Standings.get_division("Omega", 3, 1))
		Standings.set_division(3, "Omega", (get_wc_winners("Omega", 3, 0)), (get_wc_winners("Omega", 3, 1)))
	
	array2Dalphawcfinals.sort_custom(func(a, b): return a[1] > b[1])
	array2Domegawcfinals.sort_custom(func(a, b): return a[1] > b[1])

func set_playoff_pool():
	array2Dalphacombined[0] = get_div_winners("Alpha", 0, 0)
	array2Dalphacombined[1] = get_div_winners("Alpha", 1, 0)
	array2Dalphacombined[2] = get_div_winners("Alpha", 2, 0)
	array2Dalphacombined[3] = get_div_winners("Alpha", 3, 0)
	array2Dalphacombined[4] = get_wc_winners("Alpha", 0, 0)
	array2Dalphacombined[5] = get_wc_winners("Alpha", 1, 0)
	array2Dalphacombined[6] = get_wc_winners("Alpha", 2, 0)
	array2Dalphacombined[7] = get_wc_winners("Alpha", 3, 0)
	
	array2Domegacombined[0] = get_div_winners("Omega", 0, 0)
	array2Domegacombined[1] = get_div_winners("Omega", 1, 0)
	array2Domegacombined[2] = get_div_winners("Omega", 2, 0)
	array2Domegacombined[3] = get_div_winners("Omega", 3, 0)
	array2Domegacombined[4] = get_wc_winners("Omega", 0, 0)
	array2Domegacombined[5] = get_wc_winners("Omega", 1, 0)
	array2Domegacombined[6] = get_wc_winners("Omega", 2, 0)
	array2Domegacombined[7] = get_wc_winners("Omega", 3, 0)

func set_round_2():
	array2Dalpharound2[0] = Results.get_match_total(240, 0)
	array2Dalpharound2[1] = Results.get_match_total(241, 0)
	array2Dalpharound2[2] = Results.get_match_total(242, 0)
	array2Dalpharound2[3] = Results.get_match_total(243, 0)
	
	array2Domegaround2[0] = Results.get_match_total(244, 0)
	array2Domegaround2[1] = Results.get_match_total(245, 0)
	array2Domegaround2[2] = Results.get_match_total(246, 0)
	array2Domegaround2[3] = Results.get_match_total(247, 0)

func set_round_3():
	array2Dalpharound3[0] = Results.get_match_total(248, 0)
	array2Dalpharound3[1] = Results.get_match_total(249, 0)
	
	array2Domegaround3[0] = Results.get_match_total(250, 0)
	array2Domegaround3[1] = Results.get_match_total(251, 0)

func set_round_4():
	array2Dplayofffinals[0] = Results.get_match_total(252, 0)
	
	array2Dplayofffinals[1] = Results.get_match_total(253, 0)

func set_champ():
	array2Dchamp[0] = Results.get_match_total(254, 0)

func get_div_winners(Conference, RowCount, ColumnCount):
	if Conference == "Alpha":
		return array2Dalphadivs[RowCount][ColumnCount]
	if Conference == "Omega":
		return array2Domegadivs[RowCount][ColumnCount]

func get_wc_winners(Conference, RowCount, ColumnCount):
	if Conference == "Alpha":
		return array2Dalphawcfinals[RowCount][ColumnCount]
	if Conference == "Omega":
		return array2Domegawcfinals[RowCount][ColumnCount]

func get_playoff_pool(Conference, RowCount):
	if Conference == "Alpha":
		return array2Dalphacombined[RowCount]
	if Conference == "Omega":
		return array2Domegacombined[RowCount]

func get_round_2(Conference, RowCount):
	if Conference == "Alpha":
		return array2Dalpharound2[RowCount]
	if Conference == "Omega":
		return array2Domegaround2[RowCount]

func get_round_3(Conference, RowCount):
	if Conference == "Alpha":
		return array2Dalpharound3[RowCount]
	if Conference == "Omega":
		return array2Domegaround3[RowCount]

func get_round_4(RowCount):
	return array2Dplayofffinals[RowCount]

func get_champ():
	return array2Dchamp[0]
