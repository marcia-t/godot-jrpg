extends Node2D

func add_combatant(new_combatant):
	new_combatant.position.x += 200 * get_child_count()
	add_child(new_combatant)

