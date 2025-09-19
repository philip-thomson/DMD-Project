extends Node2D

# what the text is
var actual_dialogue: String = ""
var actualText1: String = ""
var actualText2: String = ""

# dialogue specifications
@export var introFinished: bool
@export var dialogueUnique: bool

# the routes for that scene
@export var possiblePath1: String
@export var possiblePath2: String


# the stuff for the first path
@export var indexDialoguePath1: int
@export var indexDialoguePath1End: int
@export var moodCeo1: String
@export var moodAssistent1: String
@export var moodBird1: String

# the stuff for the second path
@export var indexDialoguePath2: int
@export var indexDialoguePath2End: int
@export var moodCeo2: String
@export var moodAssistent2: String
@export var moodBird2: String

# the stuff for the dialogue filler path one for the first path
@export var indexFiller1Path1: int
@export var indexFiller1Path1End: int
@export var moodCeo1Filler1: String
@export var moodAssistent1Filler1: String
@export var moodBird1Filler1: String

# the stuff for the dialogue filler path two for the first path
@export var indexFiller2Path1: int
@export var indexFiller2Path1End: int
@export var moodCeo1Filler2: String
@export var moodAssistent1Filler2: String
@export var moodBird1Filler2: String

# the stuff for the dialogue filler path one for the second path
@export var indexFiller1Path2: int
@export var indexFiller1Path2End: int
@export var moodCeo2Filler1: String
@export var moodAssistent2Filler1: String
@export var moodBird2Filler1: String

# the stuff for the dialogue filler path two for the second path
@export var indexFiller2Path2: int
@export var indexFiller2Path2End: int
@export var moodCeo2Filler2: String
@export var moodAssistent2Filler2: String
@export var moodBird2Filler2: String

# giving the RichTextlabel a meaning so its easier to read and useforce merge git not working
@onready var dialogue: RichTextLabel = $dialogue
@onready var botton_1: RichTextLabel = $botton1
@onready var botton_2: RichTextLabel = $botton2
@onready var botton12Interaction: Button = $Buttontest1
@onready var botton22Interaction: Button = $Buttontest2
@onready var bottonPressed: AudioStreamPlayer = $buttonSound
@onready var userTalking: AudioStreamPlayer = $playerSound

@export var dialoge_path: String
@export var button_path: String

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
	raw_dialogue_file = FileAccess.open(dialoge_path, FileAccess.READ)
	raw_botton_file = FileAccess.open(button_path, FileAccess.READ)
	# run the file_to_array on the raw_text_file
	TextDialogueArray = file_to_array(raw_dialogue_file)
	textBottonArray = file_to_array(raw_botton_file)
	actual_dialogue = TextDialogueArray[0]
	actualText1 = textBottonArray[0]
	actualText2 = textBottonArray[2]

# function that works on every frame that is being shown
func _process(delta: float) -> void:
	# combining the elements and the text together
	dialogue.text = actual_dialogue
	botton_1.text = actualText1
	botton_2.text = actualText2
	# setting its size
	dialogue.size = Vector2(200, 150)
	botton_1.size = Vector2(150, 35)
	botton_2.size = Vector2(150, 35)
