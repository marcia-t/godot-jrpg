extends "res://fighters/Fighter.gd"


func _ready():
	self.set_name("Pikachu")
	self.set_special_attack1_name("Ataque especial Pikachu")
	pass
	

func show_anim():
	if (self.is_opponent()):
		$Sprite/AnimatedFront.show()

		$Sprite/AnimationPlayer.play("take_damage")

	else:
		$Sprite/AnimatedBack.show()

		$Sprite/AnimationPlayer.play("pikachu_take_db")
		pass




#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
