extends Node2D

@onready var gui: Node2D = $Gui
@onready var characterStances: Node2D = $characterLocation

func _ready() -> void:
	gui.position = Vector2(630, 100)
	gui.dialogueUnique = false

func _process(delta: float) -> void:
	var progressCheck = gui.get_node("Buttontest1")
	if gui.indexDialoguePath1 == 0:
		gui.botton22Interaction.visible = false
		gui.botton_2.visible = false
