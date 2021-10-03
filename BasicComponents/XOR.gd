extends Node2D

func operate(var input_1, var input_2):
	var output_1 = $OR.operate(input_1, input_2)
	var output_2 = $NAND.operate(input_1, input_2)
	var output = $AND.operate(output_1, output_2)
	return output
