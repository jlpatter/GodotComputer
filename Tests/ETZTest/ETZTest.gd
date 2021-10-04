extends Node2D

func _ready():
	$EqualToZero.operate(convert_to_binary(2))


func convert_to_binary(var some_num):
	var binary_array = []
	var count = 15
	
	while count >= 0:
		var temp = some_num >> count
		if temp & 1:
			binary_array.append(true)
		else:
			binary_array.append(false)
		count -= 1
	
	return binary_array
