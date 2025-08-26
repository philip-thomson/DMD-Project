extends Node2D
# tags that are used to changed the aspects of the font
var tags_dialogue: String = ""
var tags_bottons: String = ""

# what the text is
var actual_dialogue: String = ""
var actualText1: String = ""
var actualText2: String = ""
var actualText3: String = ""
var actualText4: String = ""

# giving the RichTextlabel a meaning so its easier to read and useforce merge git not working
@onready var dialogue: RichTextLabel = $dialogue
@onready var botton_1: RichTextLabel = $botton1
@onready var botton_2: RichTextLabel = $botton2
@onready var botton1Interaction: Button = $botton1Interaction
@onready var botton2Interaction: Button = $botton2Interaction



#giving the audio files variables
@onready var button_press = preload("res://sound files/button-test.wav")

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
	actual_dialogue = TextDialogueArray[0]
	actualText1 = textBottonArray[0]
	actualText2 = textBottonArray[1]



func _on_button_1_pressed() -> void:
	actual_dialogue = TextDialogueArray[1]

func _on_button_2_pressed() -> void:
	actual_dialogue = TextDialogueArray[2]

# function that works on every frame that is being shown
func _process(delta: float) -> void:
	# changing the style of the font
	tags_dialogue = "[color=#000000][font_size=10]"
	tags_bottons = "[color=#ffffff][font_size=15]"
	
	# displaying the text as spesific line
	
	# combining the elements and the text together
	dialogue.text = tags_dialogue + actual_dialogue
	botton_1.text = tags_bottons + actualText1
	botton_2.text = tags_bottons + actualText2
	
	# setting its size
	dialogue.size = Vector2(500, 500)
	botton_1.size = Vector2(250, 250)
	botton_2.size = Vector2(250, 250)
	
