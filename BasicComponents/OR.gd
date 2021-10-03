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
	
	var output_1 = $NAND.operate(input_1, input_1)
	
	if output_1:
		$Inter1.default_color = Color.green
	else:
		$Inter1.default_color = Color.red
	
	var output_2 = $NAND2.operate(input_2, input_2)
	
	if output_2:
		$Inter2.default_color = Color.green
	else:
		$Inter2.default_color = Color.red
	
	var output = $NAND3.operate(output_1, output_2)
	return output
