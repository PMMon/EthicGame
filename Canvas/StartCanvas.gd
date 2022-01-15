extends CanvasLayer

signal start_game

	
func show_message(text):
	$Message.text = text
	$Message.show()
	$MessageTimer.start()
	
func update_time():
	$TimeLabel.text = "%02d:%02d" % [floor($GameTime.time_left / 60), int($GameTime.time_left) % 60]
	
func update_score(score):
	$ScoreLabel.text = str(score)

func _on_StartButton_pressed():
	$StartButton.hide()
	emit_signal("start_game")

func _on_MessageTimer_timeout():
	$Message.hide()
	$GameTime.start()
	$UpdateTimer.start()		

func show_game_finished():
	show_message("Finished")
	$GameTime.paused = true
	$UpdateTimer.paused = true
	# Wait until the MessageTimer has counted down.
	yield($MessageTimer, "timeout")

	$FinalMessage.text = "Please talk\n to your advisor"
	$FinalMessage.show()
	$MessageTimer.stop()

func _on_GameTime_timeout():
	show_game_finished()

func _on_UpdateTimer_timeout():
	update_time()
