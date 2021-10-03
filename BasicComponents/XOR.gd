extends Node2D

func operate(var input_1, var input_2):
	var output_1 = $OR.operate(input_1, input_2)
	
	if output_1:
		$Inter1.default_color = Color.green
	else:
		$Inter1.default_color = Color.red
	
	var output_2 = $NAND.operate(input_1, input_2)
	
	if output_2:
		$Inter2.default_color = Color.green
	else:
		$Inter2.default_color = Color.red
	
	var output = $AND.operate(output_1, output_2)
	return output
