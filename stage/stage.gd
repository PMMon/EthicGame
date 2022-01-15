extends Spatial

var score = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func new_game():
	score = 0
	$StartTimer.start()
	$StartCanvas.update_score(score)
	$StartCanvas.show_message("Get Ready")

func game_over():
	$StartCanvas.show_game_finished()

func _on_StartTimer_timeout():
	pass 

func _on_coin_taken():
	$Quiz5.show()


func _on_Coin1_coin_taken():
	$Quiz1.show()


func _on_Coin2_coin_taken():
	$Quiz2.show()


func _on_Coin3_coin_taken():
	$Quiz3.show()


func _on_Coin32_coin_taken():
	$Quiz4.show()

func _on_Coin7_coin_taken():
	$Quiz5.show()


func _on_Coin46_coin_taken():
	$Quiz6.show()


func _on_Coin63_coin_taken():
	$Quiz7.show()


func _on_Coin353_coin_taken():
	$Quiz8.show()


func _on_Coin444_coin_taken():
	$Quiz9.show()

func _on_Coin454_coin_taken():
	$Quiz10.show()
	
# Define Quiz behavior
func _on_Quiz1_correct_answer():
	score += 10
	get_node("Player/GainCoin").play()
	$Quiz1.hide()
	$StartCanvas.update_score(score)

func _on_Quiz1_false_answer():
	$Quiz1.hide()
	
func _on_Quiz2_correct_answer():
	score += 10
	get_node("Player/GainCoin").play()
	$Quiz2.hide()
	$StartCanvas.update_score(score)

func _on_Quiz2_false_answer():
	$Quiz2.hide()

func _on_Quiz3_correct_answer():
	score += 10
	get_node("Player/GainCoin").play()
	$Quiz3.hide()
	$StartCanvas.update_score(score)

func _on_Quiz3_false_answer():
	$Quiz3.hide()
	
func _on_Quiz4_correct_answer():
	score += 10
	get_node("Player/GainCoin").play()
	$Quiz4.hide()
	$StartCanvas.update_score(score)

func _on_Quiz4_false_answer():
	$Quiz4.hide()

func _on_Quiz5_correct_answer():
	score += 10
	get_node("Player/GainCoin").play()
	$Quiz5.hide()
	$StartCanvas.update_score(score)
	yield(get_tree().create_timer(2.0), "timeout")
	$StartCanvas/GameTime.paused = true
	$RuleBackground.show()

func _on_Quiz5_false_answer():
	$Quiz5.hide()
	yield(get_tree().create_timer(2.0), "timeout")
	$StartCanvas/GameTime.paused = true
	$RuleBackground.show()

func _on_Quiz6_correct_answer():
	score += 10
	get_node("Player/GainCoin").play()
	$Quiz6.hide()
	$StartCanvas.update_score(score)


func _on_Quiz6_false_answer():
	$Quiz6.hide()


func _on_Quiz7_correct_answer():
	score += 10
	get_node("Player/GainCoin").play()
	$Quiz7.hide()
	$StartCanvas.update_score(score)


func _on_Quiz7_false_answer():
	$Quiz7.hide()


func _on_Quiz8_correct_answer():
	score += 10
	get_node("Player/GainCoin").play()
	$Quiz8.hide()
	$StartCanvas.update_score(score)


func _on_Quiz8_false_answer():
	$Quiz8.hide()


func _on_Quiz9_correct_answer():
	score += 10
	get_node("Player/GainCoin").play()
	$Quiz9.hide()
	$StartCanvas.update_score(score)


func _on_Quiz9_false_answer():
	$Quiz9.hide()


func _on_Quiz10_correct_answer():
	score += 10
	get_node("Player/GainCoin").play()
	$Quiz10.hide()
	$StartCanvas.update_score(score)
	game_over()


func _on_Quiz10_false_answer():
	$Quiz10.hide()
	game_over()


func _on_IntermediateRule_Next_1_pressed():
	$RuleBackground/Header.hide()
	$RuleBackground/Text_1.hide()
	$RuleBackground/Next_1.hide()
	$RuleBackground/Text_2.show()
	$RuleBackground/Resume_2.show()


func _on_IntermediateRule_Resume_2_pressed():
	$RuleBackground.hide()
	$StartCanvas/GameTime.paused = false


func _on_Start_pressed():
	$StartBackground.hide()
	$StartRuleBackground.show()


func _on_StartButton_pressed():
	$StartRuleBackground.hide()


func _on_PreviousRule_pressed():
	$StartRuleBackground/Rules_2.hide()
	$StartRuleBackground/Previous.hide()
	$StartRuleBackground/Start.hide()
	$StartRuleBackground/Header.show()
	$StartRuleBackground/Rules_1.show()
	$StartRuleBackground/Next_1.show()

func _on_Next_1_pressed():
	$StartRuleBackground/Header.hide()
	$StartRuleBackground/Rules_1.hide()
	$StartRuleBackground/Next_1.hide()
	$StartRuleBackground/Rules_2.show()
	$StartRuleBackground/Previous.show()
	$StartRuleBackground/Start.show()
