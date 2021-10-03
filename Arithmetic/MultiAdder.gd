extends Node2D

var multi_output = []

func full_adder_op(var index, var inter, var full_adder, var input_a, var input_b, var input_3):
	var output = full_adder.operate(input_a[index], input_b[index], input_3)
	multi_output.push_front(output[1])
	
	if output[0]:
		inter.default_color = Color.green
	else:
		inter.default_color = Color.red
	return output

func operate(var input_a, var input_b, var input_3):
	var output_1 = full_adder_op(15, $Inter1, $FullAdder, input_a, input_b, input_3)
	var output_2 = full_adder_op(14, $Inter2, $FullAdder2, input_a, input_b, output_1[0])
	var output_3 = full_adder_op(13, $Inter3, $FullAdder3, input_a, input_b, output_2[0])
	var output_4 = full_adder_op(12, $Inter4, $FullAdder4, input_a, input_b, output_3[0])
	var output_5 = full_adder_op(11, $Inter5, $FullAdder5, input_a, input_b, output_4[0])
	var output_6 = full_adder_op(10, $Inter6, $FullAdder6, input_a, input_b, output_5[0])
	var output_7 = full_adder_op(9, $Inter7, $FullAdder7, input_a, input_b, output_6[0])
	var output_8 = full_adder_op(8, $Inter8, $FullAdder8, input_a, input_b, output_7[0])
	var output_9 = full_adder_op(7, $Inter9, $FullAdder9, input_a, input_b, output_8[0])
	var output_10 = full_adder_op(6, $Inter10, $FullAdder10, input_a, input_b, output_9[0])
	var output_11 = full_adder_op(5, $Inter11, $FullAdder11, input_a, input_b, output_10[0])
	var output_12 = full_adder_op(4, $Inter12, $FullAdder12, input_a, input_b, output_11[0])
	var output_13 = full_adder_op(3, $Inter13, $FullAdder13, input_a, input_b, output_12[0])
	var output_14 = full_adder_op(2, $Inter14, $FullAdder14, input_a, input_b, output_13[0])
	var output_15 = full_adder_op(1, $Inter15, $FullAdder15, input_a, input_b, output_14[0])
	var output_16 = $FullAdder16.operate(input_a[0], input_b[0], output_15[0])
	multi_output.push_front(output_16[1])
	return [output_16[0], multi_output]
