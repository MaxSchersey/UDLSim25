extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_button_1_button_up():
	pass # Replace with function body.

func _on_button_2_button_up():
	get_tree().change_scene_to_file("res://quickplayinit.tscn")

func _on_button_3_button_up():
	get_tree().change_scene_to_file("res://feature_roadmap.tscn")

func _on_button_4_button_up():
	get_tree().change_scene_to_file("res://about.tscn")
