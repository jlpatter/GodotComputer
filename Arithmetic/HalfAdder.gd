extends Node2D

func operate(var input_1, var input_2):
	var output_high = $AND.operate(input_1, input_2)
	var output_low = $XOR.operate(input_1, input_2)
	return [output_high, output_low]
