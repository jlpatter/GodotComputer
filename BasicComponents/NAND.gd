extends Node2D

var input_1_state = false
var input_2_state = false
var output_state = false

func _ready():
	update_output()

func flip_input_1():
	input_1_state = not input_1_state
	if input_1_state:
		$Input1.default_color = Color.green
	else:
		$Input1.default_color = Color.red
	update_output()

func flip_input_2():
	input_2_state = not input_2_state
	if input_2_state:
		$Input2.default_color = Color.green
	else:
		$Input2.default_color = Color.red
	update_output()

func update_output():
	output_state = not (input_1_state and input_2_state)
	if output_state:
		$Output.default_color = Color.green
	else:
		$Output.default_color = Color.red
