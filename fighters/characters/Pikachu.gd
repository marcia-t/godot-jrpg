extends "res://fighters/Fighter.gd"


func _ready():
	self.set_name("Pikachu")
	$Info/Stats/Defense/Physic.set_text("10")
	$Info/Stats/Defense/Magic.set_text("20")
	$Info/Stats/Attack/Physic.set_text("100")
	$Info/Stats/Attack/Magic.set_text("250")
	pass



#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
