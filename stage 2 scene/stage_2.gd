extends Node2D

@onready var gui: Node2D = $Gui
func _ready() -> void:
	gui.position = Vector2(630, 100)
	gui.dialogueUnique = false

func _process(delta: float) -> void:
	if gui.indexDialoguePath1 == 0:
		gui.botton22Interaction.visible = false
		gui.botton_2.visible = false
	if gui.indexDialoguePath1 == 1:
		gui.introFinished = true 
		gui.actualText1 = gui.textBottonArray[1]
		gui.botton22Interaction.visible = true
		gui.botton_2.visible = true
	if gui.indexDialoguePath1 == 5:
		gui.botton22Interaction.visible = true
		gui.botton_2.visible = true
	if gui.indexDialoguePath2 == 14:
		gui.botton12Interaction.visible = true
		gui.botton_1.visible = true
