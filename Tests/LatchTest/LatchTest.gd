extends Node2D

var input_1 = false
var input_2 = false

func _process(delta):
	if Input.is_action_just_pressed("space"):
		input_2 = not input_2
		$Latch.operate(input_1, input_2)
	elif Input.is_action_just_pressed("z"):
		input_1 = not input_1
		$Latch.operate(input_1, input_2)
