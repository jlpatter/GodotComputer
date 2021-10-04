extends Node2D

func _ready():
	$EqualToZero.operate(convert_to_binary(10))


func convert_to_binary(var some_num):
	var binary_array = []
	
	for i in range(15, -1, -1):
		var temp = some_num >> i
		if temp & 1:
			binary_array.append(true)
		else:
			binary_array.append(false)
	
	return binary_array
