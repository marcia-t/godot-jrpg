extends Node2D
var pikachu = preload("res://fighters/characters/Pikachu.tscn")
var bellsprout = preload("res://fighters/characters/Bellsprout.tscn")
var bulbasaur = preload("res://fighters/characters/Bulbasaur.tscn")
var charmander = preload("res://fighters/characters/Charmander.tscn")
var seel = preload("res://fighters/characters/Seel.tscn")
var vulpix = preload("res://fighters/characters/Vulpix.tscn")






func _ready():
	#nosotros
	var p_player = pikachu.instance()
	p_player.show_back()
	p_player.set_stats(10, 20, 100, 250)
	$UI/US/C1.add_child(p_player)
	var be_player = bellsprout.instance()
	be_player.show_back()
	be_player.set_stats(20,40, 100, 120)
	$UI/US/C2.add_child(be_player)
	var bu_player = bulbasaur.instance()
	bu_player.show_back()
	bu_player.set_stats(30,30,110,110)
	$UI/US/C3.add_child(bu_player)
	var vu_player = vulpix.instance()
	vu_player.show_back()
	vu_player.set_stats(25,35,150,100)
	$UI/US/C4.add_child(vu_player)
	
	#ellos
	var ch_player = charmander.instance()
	ch_player.show_front()
	ch_player.set_stats(40,20,50,160)
	$UI/THEM/C5.add_child(ch_player)
	var se_player = seel.instance()
	se_player.show_front()
	se_player.set_stats(25,35,90,200)
	$UI/THEM/C6.add_child(se_player)
	var p2_player = pikachu.instance()
	p2_player.show_front()
	p2_player.set_stats(55,15,150,90)
	$UI/THEM/C7.add_child(p2_player)
	var bu2_player = bulbasaur.instance()
	bu2_player.show_front()
	bu2_player.set_stats(60,10,125,125)
	$UI/THEM/C8.add_child(bu2_player)
	
	
		
	
	
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
