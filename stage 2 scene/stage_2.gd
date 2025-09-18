extends Node2D

@onready var gui: Node2D = $Gui


func _ready() -> void:
	gui.position = Vector2(630, 100)
	gui.dialogueUnique = false

func _process(delta: float) -> void:
	var progressCheck = gui.get_node("Buttontest1")
	if gui.indexDialoguePath1 == 0:
		gui.botton22Interaction.visible = false
		gui.botton_2.visible = false
	if gui.indexDialoguePath1 == 1:
		gui.introFinished = true 
		gui.actualText1 = gui.textBottonArray[1]
		gui.botton22Interaction.visible = true
		gui.botton_2.visible = true
	if gui.indexDialoguePath1 in range(3, 5):
		gui.dialogueUnique = true
	else:
		gui.dialogueUnique = false
	if gui.indexDialoguePath1 == 5 && progressCheck.end_point1 == false:
		gui.actualText1 = gui.textBottonArray[3]
		gui.actualText2 = gui.textBottonArray[4]
		gui.botton22Interaction.visible = true
		gui.botton_2.visible = true
	if gui.indexDialoguePath2 in range(13, 14):
		gui.dialogueUnique = true
	else:
		gui.dialogueUnique = false
	if gui.indexDialoguePath2 == 14 && progressCheck.end_point1 == false:
		gui.actualText1 = gui.textBottonArray[5]
		gui.actualText2 = gui.textBottonArray[6]
		gui.botton12Interaction.visible = true
		gui.botton_1.visible = true
