extends Node2D

func operate(var input_a):
	var output_1 = $OR.operate(input_a[14], input_a[15])
	if output_1:
		$Inter1.default_color = Color.green
	else:
		$Inter1.default_color = Color.red
	
	var output_2 = $OR2.operate(input_a[12], input_a[13])
	if output_2:
		$Inter2.default_color = Color.green
	else:
		$Inter2.default_color = Color.red
	
	var output_3 = $OR3.operate(input_a[10], input_a[11])
	if output_3:
		$Inter3.default_color = Color.green
	else:
		$Inter3.default_color = Color.red
	
	var output_4 = $OR4.operate(input_a[8], input_a[9])
	if output_4:
		$Inter4.default_color = Color.green
	else:
		$Inter4.default_color = Color.red
	
	var output_5 = $OR5.operate(input_a[6], input_a[7])
	if output_5:
		$Inter5.default_color = Color.green
	else:
		$Inter5.default_color = Color.red
	
	var output_6 = $OR6.operate(input_a[4], input_a[5])
	if output_6:
		$Inter6.default_color = Color.green
	else:
		$Inter6.default_color = Color.red
	
	var output_7 = $OR7.operate(input_a[2], input_a[3])
	if output_7:
		$Inter7.default_color = Color.green
	else:
		$Inter7.default_color = Color.red
	
	var output_8 = $OR8.operate(input_a[0], input_a[1])
	if output_8:
		$Inter8.default_color = Color.green
	else:
		$Inter8.default_color = Color.red
	
	var output_9 = $OR9.operate(output_2, output_1)
	if output_9:
		$Inter9.default_color = Color.green
	else:
		$Inter9.default_color = Color.red
	
	var output_10 = $OR10.operate(output_4, output_3)
	if output_10:
		$Inter10.default_color = Color.green
	else:
		$Inter10.default_color = Color.red
	
	var output_11 = $OR11.operate(output_6, output_5)
	if output_11:
		$Inter11.default_color = Color.green
	else:
		$Inter11.default_color = Color.red
	
	var output_12 = $OR12.operate(output_8, output_7)
	if output_12:
		$Inter12.default_color = Color.green
	else:
		$Inter12.default_color = Color.red
	
	var output_13 = $OR13.operate(output_10, output_9)
	if output_13:
		$Inter13.default_color = Color.green
	else:
		$Inter13.default_color = Color.red
	
	var output_14 = $OR14.operate(output_12, output_11)
	if output_14:
		$Inter14.default_color = Color.green
	else:
		$Inter14.default_color = Color.red
	
	var output_15 = $OR15.operate(output_14, output_13)
	if output_15:
		$Inter15.default_color = Color.green
	else:
		$Inter15.default_color = Color.red
	
	return $Invert.operate(output_15)
