extends Node2D

@onready var gui: Node2D = $Gui

func _ready() -> void:
	gui.position = Vector2(630, 100)
	gui.dialogueUnique = false
func _process(delta: float) -> void:
	if gui.indexDialoguePath1 == 0:
		gui.botton22Interaction.visible = false
		gui.botton_2.visible = false
