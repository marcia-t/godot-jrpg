extends Node2D


var queue = [] setget set_queue
var active_fighter = null setget _set_active_fighter
#podrían tener un equipo y ya
const fighter = preload("res://fighters/Fighter.gd")

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func add_to_queue(fighter):
	queue.append(fighter)
	pass

func set_queue(new_queue):
	queue.clear()
	var names = []
	for node in new_queue:
		if not node is fighter:
			continue
		queue.append(node)
		node.turn = false
	if queue.size() > 0:
		self.active_fighter = queue[0]
	pass

func _set_active_fighter(new_combatant):
	active_fighter = new_combatant
	active_fighter.turn = true
	#emit_signal("active_combatant_changed", active_fighter)

func remove(fighter):
	var new_queue = []
	for n in queue:
		new_queue.append(n)
	new_queue.remove(new_queue.find(fighter))
	fighter.queue_free()
	self.queue = new_queue
	
func get_next_in_queue():
	var current_fighter = queue.pop_front()
	current_fighter.set_onwait()
	if (!current_fighter.is_dead()):
		queue.append(current_fighter)
	self.active_fighter = queue[0]
	self.active_fighter.set_onturn()
	return active_fighter
	
func get_opponents():
	var new_queue = []
	for n in queue:
		if (n.is_opponent() && !n.is_dead()):
			new_queue.append(n)
	return new_queue