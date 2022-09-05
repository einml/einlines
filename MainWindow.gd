extends Panel

var dark_theme = preload("res://godot_dark_2px_border.tres")
var light_theme = preload("res://godot_light_2px_border.tres")

func change_theme(button_pressed):
	if button_pressed:
		theme = dark_theme
	else:
		theme = light_theme
