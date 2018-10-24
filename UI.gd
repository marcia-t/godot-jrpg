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
	