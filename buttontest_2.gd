extends Button
@onready var testing: Node2D = $".."

func _on_pressed() -> void:
	if testing.indexDialoguePath2 != 8:
		testing.indexDialoguePath2 += 1
		testing.actual_dialogue = testing.TextDialogueArray[testing.indexDialoguePath2]
		testing.botton_1.hide()
		testing.botton12Interaction.visible = false
		testing.botton12Interaction.disabled = true
