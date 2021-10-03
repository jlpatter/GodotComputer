extends Node2D

func operate(var input_a):
	var output = $MultiAdder.operate(
		[false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false],
		input_a,
		true
	)
	return output[1]
