extends Area2D


func _on_Heart_body_entered(body):
	
	if(body.name == "Player"):
		queue_free()
