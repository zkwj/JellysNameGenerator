tool
extends Node

func _ready():
	$Button.connect("pressed", self, "_on_button_pressed")

func _on_button_pressed():
	var new_name = jNameGenerator.new_name()
	$HBoxContainer/LineEdit.text = new_name
	print(new_name)


func _on_Button_pressed():
	OS.clipboard = $HBoxContainer/LineEdit.text
