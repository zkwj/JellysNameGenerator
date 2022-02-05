extends Node
class_name jNameGenerator

static func pick_random(array):
	randomize()
	return array[randi() % array.size()]

static func new_name():
	var start = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'Re', 'Dar', 'Me', 'Su', 'Za', 'Me', 'Bi', 'Du', 'Ac', 'Bo', 'Cr', 'Dan', 'Ee', 'Fr', 'Guu', 'Drac', 'Ch', 'Go', 'Ab', 'Ni']
	var middle = ['', 'ir', 'ton', 'me', 'ch', 'ga', 'tc', 'er', "'", '-', 'aa', 'ee', 'oo', 'ii', 'uu', 'yy', 'a', 'e', 'i', 'o', 'u', 'y', 'ne', 'eh', 'ba']
	var end = ['', 'a', 'e', 'i', 'o', 'u', 'be', 'y', 'tz', 's', 'er', 'ar', 'an', 'h', 'sh', '-san', 'ry', 'ette', 'ine', 'line', 'lyne', 'ene', 'lene', 'ise', 'ca', 'ka', 'ly', 'lin', 'ens', 'entz', 'tz', 'ot', 'ip', 'oz', 'winx', 'dox']

	return pick_random(start) + pick_random(middle) + pick_random(end)
