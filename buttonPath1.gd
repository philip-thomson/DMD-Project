extends Button
@onready var testing: Node2D = $".."

func _on_pressed() -> void:
	if testing.indexDialoguePath2 != testing.indexDialoguePath2End:
		if testing.indexDialoguePath1 != testing.indexDialoguePath1End:
			testing.indexDialoguePath1 += 1
			testing.actual_dialogue = testing.TextDialogueArray[testing.indexDialoguePath1]
			testing.botton_2.hide()
			testing.botton22Interaction.visible = false
		elif testing.indexFiller1Path1 != testing.indexFiller1Path1End:
			if testing.indexDialoguePath1 == testing.indexDialoguePath1End:
				testing.indexFiller1Path1 += 1
				testing.actual_dialogue = testing.TextDialogueArray[testing.indexFiller1Path1]
				testing.botton_2.hide()
				testing.botton22Interaction.visible = false
	elif testing.indexFiller1Path2 != testing.indexFiller1Path2End:
		if testing.indexDialoguePath2 == testing.indexDialoguePath2End:
			testing.indexFiller1Path2 += 1
			testing.actual_dialogue = testing.TextDialogueArray[testing.indexFiller1Path2]
			testing.botton_2.hide()
			testing.botton22Interaction.visible = false
