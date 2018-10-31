extends "res://fighters/Fighter.gd"


func _ready():
	self.set_name("Pikachu")
	self.set_special_attack1_name("Ataque especial Pikachu")
	pass
	

func show_anim():
	if (self.is_opponent()):
		$Sprite/AnimatedFront.show()
		
		#$Sprite/AnimatedFront.play("take_damage")
		$Sprite/AnimationPlayer.play("take_damage")
		if(!$Sprite/AnimationPlayer.is_playing()):
			print("bB")
			pass

		#$Sprite/AnimatedFront.hide()
		#$Sprite/AnimatedFront.hide()
	else:
		#show take_damage_me
		pass
		
		
		#$Sprite/AnimatedFront.hide()
		#$Sprite/Position2D/Front.show()
		#$Sprite/AnimatedFront.hide()
		#$Sprite/Position2D/Front.show()





#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
