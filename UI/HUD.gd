extends Control

var timerValue = 90

func _ready():
	var _changed = Global.connect("changed",self,"_on_score_changed")
	_on_score_changed()

func _on_score_changed():
	$Score.text = "Score: " + str(Global.score)
	if (Global.score >= 200):
		var _target = get_tree().change_scene("res://UI/Victory.tscn")

func _on_Timer_timeout():
	timerValue -= 1
	$Time.text = "Time " + str(timerValue)
