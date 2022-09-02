extends Panel

var dark_theme = preload("res://dracula_theme.tres")
var light_theme = preload("res://godot_light_theme.tres")

func change_theme(button_pressed):
	if button_pressed:
		theme = dark_theme
	else:
		theme = light_theme
