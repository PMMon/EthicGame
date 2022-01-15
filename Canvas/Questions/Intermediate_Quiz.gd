extends TextureRect


signal correct_answer
signal false_answer

signal chose_correct_answer
signal chose_false_answer

var correct_answer = "Brasilia"

# Called when the node enters the scene tree for the first time.
func _ready():
	$CorrectAnswerBackground.hide()
	$FalseAnswerBackground.hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Option1_pressed():
	if $Option1.text == correct_answer: 
		correct_option_pressed()
	else:
		false_option_pressed()
		
func _on_Option2_pressed():
	if $Option2.text == correct_answer: 
		correct_option_pressed()
	else:
		false_option_pressed()

func _on_Option3_pressed():
	if $Option3.text == correct_answer: 
		correct_option_pressed()
	else:
		false_option_pressed()

func correct_option_pressed():
	emit_signal("chose_correct_answer")
	$Question.hide()
	$Option1.hide()
	$Option2.hide()
	$Option3.hide()
	$CorrectAnswerBackground.show()

func false_option_pressed():
	emit_signal("chose_false_answer")
	$Question.hide()
	$Option1.hide()
	$Option2.hide()
	$Option3.hide()
	$FalseAnswerBackground.show()

func _on_Resume_pressed():
	emit_signal("false_answer")

func _on_GetSingleReward_pressed():
	emit_signal("correct_answer")

func _on_GetTeamReward_pressed():
	emit_signal("correct_answer")
