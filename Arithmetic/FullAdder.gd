extends Node2D

func operate(var input_1, var input_2, var input_3):
	
	if input_3:
		$Intro1.default_color = Color.green
	else:
		$Intro1.default_color = Color.red
	
	var ha_output = $HalfAdder.operate(input_1, input_2)
	
	if ha_output[1]:
		$Inter1.default_color = Color.green
	else:
		$Inter1.default_color = Color.red
	
	if ha_output[0]:
		$Inter2.default_color = Color.green
	else:
		$Inter2.default_color = Color.red
	
	var ha2_output = $HalfAdder2.operate(input_3, ha_output[1])
	
	if ha2_output[0]:
		$Inter3.default_color = Color.green
	else:
		$Inter3.default_color = Color.red
	
	var or_output = $OR.operate(ha_output[0], ha2_output[0])
	return [or_output, ha2_output[1]]
