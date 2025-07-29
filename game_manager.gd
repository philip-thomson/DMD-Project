extends Node2D
# tags that are used to changed the aspects of the font
var tags: String = ""

# what the text is
var actual_text: String = ""

# giving the RichTextlabel a meaning so its easier to read and use
@onready var dialogue: RichTextLabel = $RichTextLabel

# the raw text within the file as it is displayed in the .txt
var raw_text_file: FileAccess

# an empty array that is strings
var TextFileArrey: Array[String]

# function that has fileaccess and returns an array of strings
func file_to_array(raw_file: FileAccess) -> Array[String]:
	#empty var of strings
	var cur_line: String = ""
	
	# what the final array of string is
	var final_array: Array[String]
	
	# a for loop for raw files as text
	for letter in raw_file.get_as_text():
		# checking if its a new line
		if letter == "\n": 
			# appends it onto the empty var
			final_array.append(cur_line)
			cur_line = ""
		# if its not a new line it adds the letter it finds onto current line
		else: cur_line += letter
	# returns the final array of current line
	return final_array

# function that occurs the moment an element appears
func _ready() -> void:
	# giving raw text file access to the .txt and making it read it
	raw_text_file = FileAccess.open("res://text files/example.txt", FileAccess.READ)
	
	# run the file_to_array on the raw_text_file
	TextFileArrey = file_to_array(raw_text_file)

# function that works on every frame that is being shown
func _process(delta: float) -> void:
	# changing the style of the font
	tags = "[color=#000000][font_size=10]"
	# displaying the text as spesific line
	actual_text = TextFileArrey[2]
	# combining the elements and the text together
	dialogue.text = tags + actual_text
	# setting its size
	dialogue.size = Vector2(500, 500)
