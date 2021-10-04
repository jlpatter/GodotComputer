extends Node2D

func operate(var input_st, var input_d, var input_cl):
	
	if input_d:
		$Intro1.default_color = Color.green
	else:
		$Intro1.default_color = Color.red
	
	if input_cl:
		$Intro2.default_color = Color.green
	else:
		$Intro2.default_color = Color.red
	
	var invert_output = $Invert.operate(input_cl)
	
	if invert_output:
		$Inter1.default_color = Color.green
	else:
		$Inter1.default_color = Color.red
	
	var and_output = $AND.operate(input_st, invert_output)
	
	if and_output:
		$Inter2.default_color = Color.green
	else:
		$Inter2.default_color = Color.red
	
	var latch_1_output = $Latch.operate(and_output, input_d)
	
	if latch_1_output:
		$Inter3.default_color = Color.green
	else:
		$Inter3.default_color = Color.red
	
	return $Latch2.operate(input_cl, latch_1_output)
