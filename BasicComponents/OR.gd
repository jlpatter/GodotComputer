extends Node2D

func operate(var input_1, var input_2):
	var output_1 = $NAND.operate(input_1, input_1)
	var output_2 = $NAND2.operate(input_2, input_2)
	var output = $NAND3.operate(output_1, output_2)
	return output
