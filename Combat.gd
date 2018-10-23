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
	p_player.set_onwait()
	p_player.set_team(1)
	$UI/US/C1.add_child(p_player)
	
	var be_player = bellsprout.instance()
	be_player.show_back()
	be_player.set_stats(20,40, 100, 120)
	be_player.set_onturn()
	be_player.set_team(1)
	$UI/US/C2.add_child(be_player)
	
	var bu_player = bulbasaur.instance()
	bu_player.show_back()
	bu_player.set_stats(30,30,110,110)
	bu_player.set_onwait()
	bu_player.set_team(1)
	$UI/US/C3.add_child(bu_player)
	
	var vu_player = vulpix.instance()
	vu_player.show_back()
	vu_player.set_stats(25,35,150,100)
	vu_player.set_onwait()
	vu_player.set_team(1)
	$UI/US/C4.add_child(vu_player)
	
	#ellos
	var ch_player = charmander.instance()
	ch_player.show_front()
	ch_player.set_stats(40,20,50,160)
	ch_player.set_onwait()
	ch_player.set_team(2)
	$UI/THEM/C5.add_child(ch_player)
	
	var se_player = seel.instance()
	se_player.show_front()
	se_player.set_stats(25,35,90,200)
	se_player.set_onwait()
	se_player.set_team(2)
	$UI/THEM/C6.add_child(se_player)
	
	var p2_player = pikachu.instance()
	p2_player.show_front()
	p2_player.set_stats(55,15,150,90)
	p2_player.set_onwait()
	p2_player.set_team(2)
	$UI/THEM/C7.add_child(p2_player)
	
	var bu2_player = bulbasaur.instance()
	bu2_player.show_front()
	bu2_player.set_stats(60,10,125,125)
	bu2_player.set_onwait()
	bu2_player.set_team(2)
	$UI/THEM/C8.add_child(bu2_player)

	$Turns.add_to_queue(p_player)
	$Turns.add_to_queue(be_player)
	$Turns.add_to_queue(bu_player)
	$Turns.add_to_queue(vu_player)
	$Turns.add_to_queue(ch_player)
	$Turns.add_to_queue(se_player)
	$Turns.add_to_queue(p2_player)
	$Turns.add_to_queue(bu2_player)
	
	start_game()
	pass


func start_game():
	
	pass

func _on_Next_pressed():
	var f = $Turns.get_next_in_queue()
	pass # replace with function body
