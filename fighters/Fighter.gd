extends Node2D
var dp
var dm
var ap
var am

func _ready():
	#self.show_back()
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func set_name(name):
	$Info/Name.set_text(name)
	pass
	
func show_back():
	$Sprite/Position2D/Back.show()
	$Sprite/Position2D/Front.hide()
	pass
	
func show_front():
	$Sprite/Position2D/Back.hide()
	$Sprite/Position2D/Front.show()
	pass
	
func set_stats(dp, dm, ap, am):
	$Info/Stats/Defense/Physic.set_text(String(dp))
	$Info/Stats/Defense/Magic.set_text(String (dm))
	$Info/Stats/Attack/Physic.set_text(String (ap))
	$Info/Stats/Attack/Magic.set_text(String (am))
	self.dp = dp
	self.dm = dm
	self.ap = ap
	self.am = am
	pass
	
#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
