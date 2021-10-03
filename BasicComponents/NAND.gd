extends Node2D

func _ready():
	operate(false, false)

func operate(var input_1, var input_2):
	var output = not (input_1 and input_2)
	if input_1:
		$Input1.default_color = Color.green
	else:
		$Input1.default_color = Color.red
	
	if input_2:
		$Input2.default_color = Color.green
	else:
		$Input2.default_color = Color.red
	
	if output:
		$Output.default_color = Color.green
	else:
		$Output.default_color = Color.red
	return output
