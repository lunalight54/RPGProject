#Will start at launch and will be available for all scripts to read at all times
extends Node

var current_scene = null

func _ready():
	var root = get_tree().root
	current_scene = root.get_child(root.get_child_count() - 1) # right now loading main scene, but should load menu in future

# maybe add function which manages scene transitions
