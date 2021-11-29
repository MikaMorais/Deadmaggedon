extends CanvasLayer


var life = 3
var score = 0

func _ready():
	
	$life.text = String(life)
	$score.text = String(score)
	

func count_life():
	life -= 1
	$life.text = String(life)
	
	if(life == 0):
		$Player.dead()
		
func gain_life():
	life += 1
	$ife.text = String(life)
	$HeartSound.play()
		
func count_score():
	score += 1
	$score.text = String(score)
	$CoindSound.play()
	
	if(score == 10):
		get_tree().change_scene("res://scenes/Game.tscn")	
