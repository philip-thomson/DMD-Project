extends Button
@onready var stage_2: Node2D = $".."

func _on_pressed() -> void:
	if stage_2.indexDialoguePath1 != 4:
		stage_2.indexDialoguePath1 += 1
		stage_2.actual_dialogue = stage_2.TextDialogueArray[stage_2.indexDialoguePath1]
		stage_2.botton_2.hide()
		stage_2.botton22Interaction.visible = false
		stage_2.botton22Interaction.disabled = true
