extends Node2D

func operate(var input_1, var input_2):
	var output_1 = $NAND.operate(input_1, input_2)
	
	if output_1:
		$Inter1.default_color = Color.green
		$Inter2.default_color = Color.green
	else:
		$Inter1.default_color = Color.red
		$Inter2.default_color = Color.red
	
	var output = $NAND2.operate(output_1, output_1)
	return output
