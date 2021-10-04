extends Node2D

func operate(var input_1):
	
	if input_1:
		$Intro1_A.default_color = Color.green
		$Intro1_B.default_color = Color.green
	else:
		$Intro1_A.default_color = Color.red
		$Intro1_B.default_color = Color.red
	
	var output = $NAND.operate(input_1, input_1)
	return output
