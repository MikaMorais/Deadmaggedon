extends Node2D


var life = 3
var score = 0

func _ready():
	
	$HUD/life.text = "x" + str(life)
	$HUD/score.text = "" + str(score)
	

func count_life():
	life -= 1
	$HUD/life.text = "x" + str(life)
	
	if(life == 0):
		$Player.dead()
		
func gain_life():
	life += 1
	$HUD/life.text = "x" + str(life)
		
func count_score():
	score += 1
	$HUD/score.text = "" + str(score)
	
