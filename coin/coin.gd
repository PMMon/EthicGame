extends Area

signal coin_taken 

var taken = false

func _on_coin_body_enter(body):
	if not taken and body is preload("res://player/player.gd"):
		get_node("Animation").play("take")
		taken = true
		
		emit_signal("coin_taken")
	
	
	
	
