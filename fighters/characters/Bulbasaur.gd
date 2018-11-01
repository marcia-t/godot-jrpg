extends "res://fighters/Fighter.gd"

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	self.set_name("Bulbasaur")
	pass
	
func show_anim():
	if (self.is_opponent()):
		$Sprite/AnimatedFront.show()

		$Sprite/AnimationPlayer.play("bulbasaur_take_df")
		pass
	else:
		$Sprite/AnimatedBack.show()

		$Sprite/AnimationPlayer.play("bulbasaur_take_db")
		pass


#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
