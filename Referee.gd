extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass
	

func hit (from_fighter, to_fighter):
	pass

func bewitch(from_fighter, to_fighter):
	pass

func strong_punch(from_fighter, to_fighter):
	pass
	
#Este es el ataque diferente para cada luchador, ver cómo resolver para 
#que sea sencillo agregar más.
func special_attack1(from_fighter, to_fighter):
	pass
	

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
