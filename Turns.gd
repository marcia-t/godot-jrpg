extends Node2D


var queue = [] setget set_queue
var active_combatant = null setget _set_active_combatant
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

func set_queue(new_queue):
	queue.clear()
	var names = []
	for node in new_queue:
		if not node is fighter:
			continue
		queue.append(node)
		node.turn = false
	if queue.size() > 0:
		self.active_combatant = queue[0]
	pass
func _set_active_combatant(new_combatant):
	active_combatant = new_combatant
	active_combatant.turn = true
	emit_signal("active_combatant_changed", active_combatant)

func remove(fighter):
	var new_queue = []
	for n in queue:
		new_queue.append(n)
	new_queue.remove(new_queue.find(fighter))
	fighter.queue_free()
	self.queue = new_queue
	
func get_next_in_queue():
	var current_fighter = queue.pop_front()
	current_fighter.turn = false
	queue.append(current_fighter)
	self.active_combatant = queue[0]
	return active_combatant