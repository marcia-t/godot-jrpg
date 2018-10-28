extends Control

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass

func add_opp_buttons(opponents):
	var button
	var opp_dict = {}
	for op in opponents:
		button = Button.new()
		button.text = op.get_name()
		$Buttons/OppSelect.add_child(button)
		opp_dict[op] = button		
	$Buttons/OppSelect.show()
	return opp_dict
	
func delete_opp_buttons():
	for i in $Buttons/OppSelect.get_children():
		$Buttons/OppSelect.remove_child(i)
		i.queue_free()
	$Buttons/OppSelect.hide()
	pass
	
func add_attack_buttons():
	var h_attack = Button.new()
	h_attack.text = 'Hit'
	$Buttons/AttSelect.add_child(h_attack)
	var b_attack = Button.new()
	b_attack.text = 'Bewitch'
	$Buttons/AttSelect.add_child(b_attack)
	var s_attack = Button.new()
	s_attack.text = 'Strong attack'
	$Buttons/AttSelect.add_child(s_attack)
	$Buttons/AttSelect.show()
	
func delete_attack_buttons():
	for n in $Buttons/AttSelect.get_children():
		$Buttons/AttSelect.remove_child(n)
		n.queue_free()
	$Buttons/AttSelect.hide()
	pass
	
	