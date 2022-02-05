extends VBoxContainer

var path_start = "res://start.txt"
var path_middle = "res://middle.txt"
var path_end = "res://end.txt"

var default_start = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'Re', 'Dar', 'Me', 'Su', 'Za', 'Me', 'Bi', 'Du', 'Ac', 'Bo', 'Cr', 'Dan', 'Ee', 'Fr', 'Guu', 'Drac', 'Ch', 'Go']
var default_middle = ['', 'ir', 'ton', 'me', 'ch', 'ga', 'tc', 'er', "'", '-', 'aa', 'ee', 'oo', 'ii', 'uu', 'yy']
var default_end = ['', 'a', 'be', 'y', 'tz', 's', 'er', 'ar', 'an', 'h', 'sh', '-san', 'ry', 'ette', 'ine', 'line', 'lyne', 'ene', 'lene', 'ise', 'a', 'ca', 'ka', 'ly', 'lin', 'ens', 'entz', 'tz', 'o', 'ot', 'ip', 'oz']

func _ready():
	check_and_create_files()
	var my_name = jNameGenerator.new_name()
	$TextEdit.text = my_name


func _on_Button_pressed():
	check_and_create_files()
	var my_name = jNameGenerator.new_name()
	$TextEdit.text = $TextEdit.text + "\n" + my_name
	var cl = get_node("TextEdit").get_line_count()
	get_node("TextEdit").cursor_set_line(cl)

func create_file(path, content):
	var file = File.new()
	file.open(path, File.WRITE)
	file.store_string(content)
	file.close()

func do_files_exist(path):
	var file = File.new()
	var err = file.open(path, file.READ)
	if err != OK:
		return false
	else:
		return true

#Accepts array and returns a string seperated by newlines
func convert_text(my_array):
	var names = ""
	for i in range(0, my_array.size()):
		names = names + my_array[i] + "\n"
	names.erase(names.length() - 1, 2)
	return names

func check_and_create_files():
	if !do_files_exist(path_start):
		print("Creating " + path_start)
		create_file(path_start, convert_text(default_start))
	if !do_files_exist(path_middle):
		print("Creating " + path_middle)
		create_file(path_middle, convert_text(default_middle))
	if !do_files_exist(path_end):
		print("Creating " + path_end)
		create_file(path_end, convert_text(default_end))
