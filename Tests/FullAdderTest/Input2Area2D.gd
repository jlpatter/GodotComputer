extends Area2D



func _on_Input2Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT and event.is_pressed():
		get_parent().input_2_state = not get_parent().input_2_state
		get_parent().get_node("FullAdder").operate(
			get_parent().input_1_state,
			get_parent().input_2_state,
			get_parent().input_3_state
		)
