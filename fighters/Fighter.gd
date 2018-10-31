extends Node2D
var dp
var dm
var ap
var am
var turn = false
var life = 100
var team
var opponent = false #bool
var special_attack1_name
var p_name

func _ready():
	$Info/LIFE.set_text(String(life))
	$Info/ProgressBar.value = life
	#self.set_onwait()
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#manejando mejor esto, podría cambiar de bandos como un nuevo ataque
func set_opponent():
	self.opponent = true
	pass

func is_opponent():
	return opponent

func set_name(name):
	self.p_name=name
	$Info/Name.set_text(name)
	pass

func get_name():
	return self.p_name
	
func set_special_attack1_name(name):
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

func get_dp():
	return self.dp

func get_dm():
	return self.dm

func get_ap():
	return self.ap

func get_am():
	return self.am

func set_dp (dp):
	if (dp<1):
		$Info/Stats/Defense/Physic.set_text(String(1))
		self.dp = 1
	else:
		$Info/Stats/Defense/Physic.set_text(String(dp))
		self.dp = dp
	pass
	
func set_dm (dm):
	if (dm<1):
		$Info/Stats/Defense/Magic.set_text(String (1))
		self.dm = 1
	else:
		$Info/Stats/Defense/Magic.set_text(String (dm))
		self.dm = dm
	pass

func set_ap (ap):
	if (ap<1):
		$Info/Stats/Attack/Physic.set_text(String (1))
		self.ap = 1
	else:
		$Info/Stats/Attack/Physic.set_text(String (ap))
		self.ap = ap
	pass

func set_am (am):
	if (am<1):
		$Info/Stats/Attack/Magic.set_text(String (1))
		self.am = 1
	else:
		$Info/Stats/Attack/Magic.set_text(String (am))
		self.am = am
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
	
func set_attacked():
	$Info/BorderOnTurn.show()
	$Info/Border.hide()
	
func unset_attacked():
	$Info/Border.show()
	$Info/BorderOnTurn.hide()
	
func is_dead():
	return life <= 0
	
func get_life():
	return life

func set_life(l):
	if (l<=1):
		self.life = 0
		self.die()
	else:
		self.life = l
	$Info/ProgressBar.value = self.life
	$Info/LIFE.set_text(String(self.life))
	
func get_special_attack1_name():
	pass

func hide_sprite():
	if (self.is_opponent()):
		$Sprite/Position2D/Front.hide()
	else:
		$Sprite/Position2D/Back.hide()

func hide_anim():
	if (self.is_opponent()):
		$Sprite/AnimatedFront.hide()
	else:
		$Sprite/AnimatedBack.hide()

func show_sprite():
	if (self.is_opponent()):
		$Sprite/Position2D/Front.show()
	else:
		$Sprite/Position2D/Back.show()

func show_anim():
	pass
#	if (self.is_opponent()):
#		$Sprite/AnimatedFront.show()
#
#		#$Sprite/AnimatedFront.play("take_damage")
#		$Sprite/AnimationPlayer.play("take_damage")
#		if(!$Sprite/AnimationPlayer.is_playing()):
#			print("bB")
#			pass
#
#		#$Sprite/AnimatedFront.hide()
#		#$Sprite/AnimatedFront.hide()
#	else:
#		#show take_damage_me
#		pass
#
#
#		#$Sprite/AnimatedFront.hide()
#		#$Sprite/Position2D/Front.show()
#		#$Sprite/AnimatedFront.hide()
#		#$Sprite/Position2D/Front.show()
	
func die():
	self.life = 0
	$Info/BorderDeath.show()
	$Info/BorderOnTurn.hide()
	$Info/Border.hide()
	
	if (!is_opponent()):
		$Sprite/Position2D/Back.hide()
		$Sprite/Position2D/DeathBack.show()
	else:
		$Sprite/Position2D/Front.hide()
		$Sprite/Position2D/DeathFront.show()
	
	$Info/LIFE.set_text(String(self.life))
	$Info/ProgressBar.value=self.life

	
	
#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
