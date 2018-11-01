extends "res://fighters/Fighter.gd"



func _ready():
	self.set_name("Pikachu")
	self.set_special_attack1_name("Ataque especial Pikachu")
	pass



#func _process(delta):
#	if (self.attacked):
#		if(self.is_opponent()):
#			$Sprite/AnimationPlayer.play("take_damage_front")
#		else:
#			$Sprite/AnimationPlayer.play("take_damage_back")
##		time_elapsed = time_elapsed+delta
##		if (time_elapsed > 1):
#		self.attacked =false
##			time_elapsed = 0
##	pass
