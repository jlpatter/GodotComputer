extends Node2D

func operate(var input_a):
	var output = []
	output.push_front($Invert.operate(input_a[15]))
	output.push_front($Invert2.operate(input_a[14]))
	output.push_front($Invert3.operate(input_a[13]))
	output.push_front($Invert4.operate(input_a[12]))
	output.push_front($Invert5.operate(input_a[11]))
	output.push_front($Invert6.operate(input_a[10]))
	output.push_front($Invert7.operate(input_a[9]))
	output.push_front($Invert8.operate(input_a[8]))
	output.push_front($Invert9.operate(input_a[7]))
	output.push_front($Invert10.operate(input_a[6]))
	output.push_front($Invert11.operate(input_a[5]))
	output.push_front($Invert12.operate(input_a[4]))
	output.push_front($Invert13.operate(input_a[3]))
	output.push_front($Invert14.operate(input_a[2]))
	output.push_front($Invert15.operate(input_a[1]))
	output.push_front($Invert16.operate(input_a[0]))
	return output
