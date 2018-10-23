extends Node2D
var dp
var dm
var ap
var am
var turn = false
var life = 100
var team
var opponent #bool

func _ready():
	#self.set_onwait()
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func set_opponent(b):
	self.opponent = b
	pass

func is_opponent():
	return opponent

func set_name(name):
	$Info/Name.set_text(name)
	pass
	
func set_team(team):
	self.team = team
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
	
func set_onturn():
	self.turn = true
	$Info/BorderOnTurn.show()
	$Info/Border.hide()
	
func set_onwait():
	self.turn = false
	$Info/Border.show()
	$Info/BorderOnTurn.hide()
	
#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
