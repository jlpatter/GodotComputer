extends Node2D

func operate(var input_st, var input_a, var input_cl):
	
	if input_st:
		for i in range(1, 17):
			get_node("IntroST/IntroST" + str(i)).default_color = Color.green
	else:
		for i in range(1, 17):
			get_node("IntroST/IntroST" + str(i)).default_color = Color.red
	
	if input_cl:
		for i in range(1, 17):
			get_node("IntroCL/IntroCL" + str(i)).default_color = Color.green
	else:
		for i in range(1, 17):
			get_node("IntroCL/IntroCL" + str(i)).default_color = Color.red
	
	var output = []
	for i in range(1, 17):
		output.push_front(get_node("DataFlipFlop" + str(i)).operate(input_st, input_a[16 - i], input_cl))
	return output
