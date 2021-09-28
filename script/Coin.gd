extends Area2D


func _on_Item_body_entered(body):
	
	if(body.name == "Player"):
		queue_free() #"dissapear" the item, showing the effect of collection of the coins
