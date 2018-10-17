extends Node2D
var pikachu = preload("res://fighters/characters/Pikachu.tscn")
# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	var p_player = pikachu.instance()
	$UI/US.add_child(p_player)
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
