extends Node2D

var inter_1 = null
var inter_2 = null

func _ready():
	inter_1 = Line2D.new()
	inter_2 = Line2D.new()
	
	inter_1.width = 5
	inter_2.width = 5
	
	inter_1.default_color = Color.red
	inter_2.default_color = Color.red
	
	inter_1.points = [$Output1Pos.position, $Input1Pos.position]
	inter_2.points = [$Output1Pos.position, $Input2Pos.position]
	
	print(inter_1.position)
	print(inter_1.points)
	
	add_child(inter_1)
	add_child(inter_2)

func operate(var input_1, var input_2):
	var output_1 = $NAND.operate(input_1, input_2)
	
	if output_1:
		inter_1.default_color = Color.green
		inter_2.default_color = Color.green
	else:
		inter_1.default_color = Color.red
		inter_2.default_color = Color.red
	
	var output = $NAND2.operate(output_1, output_1)
	return output
