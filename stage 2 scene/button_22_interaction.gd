extends Button
@onready var stage_2: Node2D = $".."

func _on_pressed() -> void:
	if stage_2.indexDialoguePath2 != 8:
		stage_2.indexDialoguePath2 += 1
		stage_2.actual_dialogue = stage_2.TextDialogueArray[stage_2.indexDialoguePath2]
		stage_2.botton_1.hide()
		stage_2.botton12Interaction.visible = false
		stage_2.botton12Interaction.disabled = true
