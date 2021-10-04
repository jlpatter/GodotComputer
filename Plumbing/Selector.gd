extends Node2D

func operate(var input_s, input_a, input_b):
	
	for i in range(1, 33):
		if input_s:
			get_node("Intros/Intro" + str(i)).default_color = Color.green
		else:
			get_node("Intros/Intro" + str(i)).default_color = Color.red
	
	var invert_ands_output = []
	for i in range(1, 17):
		var invert_output = get_node("Inverts/Invert" + str(i)).operate(input_s)
		
		if invert_output:
			get_node("InterInvs/InterInv" + str(i)).default_color = Color.green
		else:
			get_node("InterInvs/InterInv" + str(i)).default_color = Color.red
		
		var invert_and_output = get_node("InvertedANDs/AND" + str(i)).operate(invert_output, input_b[16 - i])
		
		if invert_and_output:
			get_node("InterANDs1/InterAND" + str(i)).default_color = Color.green
		else:
			get_node("InterANDs1/InterAND" + str(i)).default_color = Color.red
		
		invert_ands_output.push_front(invert_and_output)
	
	var top_ands_output = []
	for i in range(17, 33):
		var top_and_output = get_node("TopANDs/AND" + str(i)).operate(input_s, input_a[16 - (i - 16)])
		
		if top_and_output:
			get_node("InterANDs2/InterAND" + str(i - 16)).default_color = Color.green
		else:
			get_node("InterANDs2/InterAND" + str(i - 16)).default_color = Color.red
		
		top_ands_output.push_front(top_and_output)
	
	var output = []
	for i in range(1, 17):
		output.push_front(get_node("ORs/OR" + str(i)).operate(top_ands_output[16 - i], invert_ands_output[16 - i]))
	
	return output
