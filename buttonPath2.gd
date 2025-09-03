extends Button
@onready var testing: Node2D = $".."

func _on_pressed() -> void:
	if testing.indexDialoguePath1 != testing.indexDialoguePath1End:
		if testing.indexDialoguePath2 != testing.indexDialoguePath2End:
			testing.indexDialoguePath2 += 1
			testing.actual_dialogue = testing.TextDialogueArray[testing.indexDialoguePath2]
			testing.botton_1.hide()
			testing.botton12Interaction.visible = false
		elif testing.indexFiller2Path2 != testing.indexFiller2Path2End:
			if testing.indexDialoguePath2 == testing.indexDialoguePath2End:
				testing.indexFiller2Path2 += 1
				testing.actual_dialogue = testing.TextDialogueArray[testing.indexFiller2Path2]
				testing.botton_1.hide()
				testing.botton12Interaction.visible = false
	elif testing.indexFiller2Path1 != testing.indexFiller2Path1End:
		if testing.indexDialoguePath1 == testing.indexDialoguePath1End:
			testing.indexFiller2Path1 += 1
			testing.actual_dialogue = testing.TextDialogueArray[testing.indexFiller2Path1]
			testing.botton_1.hide()
			testing.botton12Interaction.visible = false
