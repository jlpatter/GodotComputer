extends Node2D

func _ready():
	$Selector.operate(true, convert_to_binary(10), convert_to_binary(3))

func convert_to_binary(var some_num):
	var binary_array = []
	
	for i in range(15, -1, -1):
		var temp = some_num >> i
		if temp & 1:
			binary_array.append(true)
		else:
			binary_array.append(false)
	
	return binary_array

func _physics_process(delta):
	if Input.is_action_just_released("zoom_in"):
		$Camera2D.zoom -= Vector2(0.12, 0.12)
	elif Input.is_action_just_released("zoom_out"):
		$Camera2D.zoom += Vector2(0.12, 0.12)

var mouse_start_pos
var screen_start_position

var dragging = false


func _input(event):
	if event.is_action("drag"):
		if event.is_pressed():
			mouse_start_pos = event.position
			screen_start_position = $Camera2D.position
			dragging = true
		else:
			dragging = false
	elif event is InputEventMouseMotion and dragging:
		$Camera2D.position = $Camera2D.zoom * (mouse_start_pos - event.position) + screen_start_position
