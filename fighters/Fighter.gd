extends Node2D
# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	$Sprite/Position2D/Back.hide()
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func set_name(name):
	$Info/Name.set_text(name)
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
