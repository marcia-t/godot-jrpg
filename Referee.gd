extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass
	

func generate_randoms():
	randomize()
	var critic = rand_range(0, 100)
	var fail = rand_range(0, 100)
	var sudden_death_from = rand_range(0, 100)
	var sudden_death_to = rand_range(0, 100)
	var percentages = {}
	percentages['critic'] = critic
	percentages['fail'] = fail
	percentages['sudden_death_from'] = sudden_death_from
	percentages['sudden_death_to'] = sudden_death_to
	
	return percentages
	

func hit (from_fighter, to_fighter):
	var tf_life = to_fighter.get_life()
	var ff_ap = from_fighter.get_ap()
	var tf_dp = to_fighter.get_dp()
	var tf_ap = to_fighter.get_ap()
	var percentages = self.generate_randoms()
	if(percentages['fail'] < 5):
		#no hago nada, pues falló el ataque
		pass
	if(percentages['sudden_death_from'] < 0.5):
		from_fighter.set_life(0)
		pass
	if(percentages['sudden_death_to'] < 1):
		to_fighter.set_life(0)
		pass
	var substract_from_life = ((0.1*tf_life)*(0.03*ff_ap))-(0.05*tf_dp)
	var substract_from_ap = (0.05*tf_dp)*(0.025*ff_ap)
	if(percentages['critic']<70):
		substract_from_life = substract_from_life*1.1
		substract_from_ap = substract_from_ap*1.15
	to_fighter.set_ap(stepify(tf_ap-module(substract_from_ap),0.01))
	to_fighter.set_life(stepify(tf_life-module(substract_from_life),0.01))
	pass

func bewitch(from_fighter, to_fighter):
	var tf_life = to_fighter.get_life()
	var ff_am = from_fighter.get_am()
	var tf_dm = to_fighter.get_dm()
	var tf_am = to_fighter.get_am()
	var percentages = self.generate_randoms()
	if(percentages['fail'] < 20):
		#no hago nada, pues falló el ataque
		pass
	if(percentages['sudden_death_from'] < 0.025):
		from_fighter.set_life(0)
		pass
	if(percentages['sudden_death_to'] < 3):
		to_fighter.set_life(0)
		pass
	var substract_from_life = ((0.075*tf_life)*(0.04*ff_am))-(0.05*tf_dm)
	var substract_from_dm = (0.04*ff_am)*(0.025*tf_dm)
	var substract_from_am = (tf_am*0.20)
	if(percentages['critic']<50):
		substract_from_life = substract_from_life*1.1
		substract_from_am = substract_from_am*1.15
		substract_from_dm = substract_from_dm*1.15
	to_fighter.set_life(stepify(tf_life-module(substract_from_life), 0.01))
	to_fighter.set_am(stepify(tf_am-module(substract_from_am), 0.01)) 
	to_fighter.set_dm(stepify(tf_dm-module(substract_from_dm),0.01))
	pass

func strong_punch(from_fighter, to_fighter):
	var tf_life = to_fighter.get_life()
	var ff_ap = from_fighter.get_ap()
	var tf_dp = to_fighter.get_dp()
	var tf_ap = to_fighter.get_ap()
	var percentages = self.generate_randoms()
	if(percentages['fail'] < 50):
		#no hago nada, pues falló el ataque
		pass
	if(percentages['sudden_death_from'] < 1):
		from_fighter.set_life(0)
		pass
	if(percentages['sudden_death_to'] < 2):
		to_fighter.set_life(0)
		pass
	var substract_from_life = (0.10*tf_life)*(0.05*ff_ap)
	var substract_from_ap = tf_ap*0.2
	var substract_from_dp = tf_dp*0.3
	if(percentages['critic']<20):
		substract_from_life = substract_from_life*1.15
		substract_from_ap = substract_from_ap*1.05
		substract_from_dp = substract_from_dp*1.1
	
	to_fighter.set_life(stepify(tf_life-module(substract_from_life), 0.01))
	to_fighter.set_ap(stepify(tf_ap-module(substract_from_ap),0.01))
	to_fighter.set_dp(stepify(tf_dp-module(substract_from_dp),0.01))
	pass
	
#Este es el ataque diferente para cada luchador, ver cómo resolver para 
#que sea sencillo agregar más.
func special_attack1(from_fighter, to_fighter):
	pass
	

func module(number):
	if (number<0):
		return -number
	else:
		return number

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
