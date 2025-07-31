extends Node2D
# tags that are used to changed the aspects of the font
var tags_dialogue: String = ""
var tags_bottons: String = ""

# what the text is
var actual_dialogue: String = ""
var actual_botton_text: String = ""

# giving the RichTextlabel a meaning so its easier to read and use
@onready var dialogue: RichTextLabel = $dialogue
@onready var botton_text: RichTextLabel = $botton1


# the raw text within the file as it is displayed in the .txt
var raw_dialogue_file: FileAccess
var raw_botton_file: FileAccess

# an empty array that is strings
var TextDialogueArray: Array[String]
var textBottonArray: Array[String]

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
	raw_dialogue_file = FileAccess.open("res://text files/dialogue.txt", FileAccess.READ)
	raw_botton_file = FileAccess.open("res://text files/option.txt", FileAccess.READ)
	# run the file_to_array on the raw_text_file
	TextDialogueArray = file_to_array(raw_dialogue_file)
	textBottonArray = file_to_array(raw_botton_file)

# function that works on every frame that is being shown
func _process(delta: float) -> void:
	# changing the style of the font
	tags_dialogue = "[color=#000000][font_size=10]"
	tags_bottons = "[color=#ffffff][font_size=15]"
	# displaying the text as spesific line
	actual_dialogue = TextDialogueArray[0]
	actual_botton_text = textBottonArray[0]
	# combining the elements and the text together
	dialogue.text = tags_dialogue + actual_dialogue
	botton_text.text = tags_bottons + actual_botton_text
	# setting its size
	dialogue.size = Vector2(500, 500)
	botton_text.size = Vector2(250, 250)
