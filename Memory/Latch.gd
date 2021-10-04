extends Node2D

var latch_value = false

func operate(var input_st, var input_d):
	
	if input_d:
		$InputD.default_color = Color.green
	else:
		$InputD.default_color = Color.red
	
	if input_st:
		$InputST.default_color = Color.green
		latch_value = input_d
	else:
		$InputST.default_color = Color.red
	
	if latch_value:
		$Output.default_color = Color.green
		$Polygon2D.color = Color.green
	else:
		$Output.default_color = Color.red
		$Polygon2D.color = Color.red
	
	return latch_value
