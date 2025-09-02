extends Button
@onready var testing: Node2D = $".."

func _on_pressed() -> void:
	if testing.indexDialoguePath1 != 4:
		testing.indexDialoguePath1 += 1
		testing.actual_dialogue = testing.TextDialogueArray[testing.indexDialoguePath1]
		testing.botton_2.hide()
		testing.botton22Interaction.visible = false
		testing.botton22Interaction.disabled = true
