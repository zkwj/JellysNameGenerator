extends Node
class_name jNameGenerator

static func pick_random(array):
	randomize()
	return array[randi() % array.size()]

static func new_name():
	var path_start = "res://start.txt"
	var path_middle = "res://middle.txt"
	var path_end = "res://end.txt"
	var start = load_file(path_start)
	var middle = load_file(path_middle)
	var end = load_file(path_end)
	return pick_random(start) + pick_random(middle) + pick_random(end)

static func load_file(path):
	var tmp_name = []
	if path:
		var file = File.new()
		var err = file.open(path, file.READ)
		if err != OK:
			print("Can't read ", path)
		while !file.eof_reached():
			var line = file.get_line()
			tmp_name.append(line)
		return tmp_name
