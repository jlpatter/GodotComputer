extends Node2D

func operate(var input_1, var input_2):
	
	if input_1:
		$Intro1_A.default_color = Color.green
		$Intro1_B.default_color = Color.green
	else:
		$Intro1_A.default_color = Color.red
		$Intro1_B.default_color = Color.red
	
	if input_2:
		$Intro2_A.default_color = Color.green
		$Intro2_B.default_color = Color.green
	else:
		$Intro2_A.default_color = Color.red
		$Intro2_B.default_color = Color.red
	
	var output_high = $AND.operate(input_1, input_2)
	var output_low = $XOR.operate(input_1, input_2)
	return [output_high, output_low]
