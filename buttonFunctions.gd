extends Button
@onready var testing: Node2D = $".."

#TODO start setting up the character changing stances
@onready var characterStance: Node2D = $characters

var end_point1 = false
var complete_end  = false
var path_1 = false
var path_2 = false
var branch_1 = false
var branch_2 = false

func _on_pressed() -> void:
	testing.bottonPressed.play()
	if path_2 != true:
		if complete_end == false:
			if testing.position == Vector2(630, 100) && testing.introFinished == true:
				if testing.dialogueUnique == false:
					testing.position = Vector2(400, 100)
					testing.userTalking.play()
				else:
					pass
			else:
				testing.position = Vector2(630, 100)
			if end_point1 == false:
				if testing.indexDialoguePath1 != testing.indexDialoguePath1End:
					
					testing.indexDialoguePath1 += 1
					testing.actual_dialogue = testing.TextDialogueArray[testing.indexDialoguePath1]
					testing.botton_2.hide()
					testing.botton22Interaction.visible = false
					print(testing.indexDialoguePath1)
					if testing.indexDialoguePath1 > 1:
						path_1 = true
				else:
					print("reached end point moving to second branch path")
					end_point1 = true
			if end_point1 == true:
				if testing.indexFiller1Path1 != testing.indexFiller1Path1End:
						testing.indexFiller1Path1 += 1
						testing.actual_dialogue = testing.TextDialogueArray[testing.indexFiller1Path1]
						testing.botton_2.hide()
						testing.botton22Interaction.visible = false
						print(testing.botton22Interaction.visible)
						print(testing.indexFiller1Path1)
				else:
					print("reached end point of this whole path")
					print(testing.indexFiller1Path1)
					complete_end = true
		else:
			get_tree().change_scene_to_file(testing.possiblePath1)
	else:
		if branch_2 != true:
			if complete_end == false:
				if testing.position == Vector2(630, 100) && testing.introFinished == true:
					if testing.dialogueUnique == false:
						testing.position = Vector2(400, 100)
					else:
						pass
				else:
					testing.position = Vector2(630, 100)
				if testing.indexFiller1Path2 != testing.indexFiller1Path2End:
					testing.indexFiller1Path2 += 1
					testing.actual_dialogue = testing.TextDialogueArray[testing.indexFiller1Path2]
					testing.botton_2.hide()
					testing.botton22Interaction.visible = false
					print(testing.indexFiller1Path2)
				else:
					print("reached end point of this whole path")
					print(testing.indexFiller1Path1)
					complete_end = true
			else:
				get_tree().change_scene_to_file(testing.possiblePath2)


func _on_buttontest_2_pressed() -> void:
	testing.bottonPressed.play()
	if path_1 != true:
		if complete_end == false:
			if testing.position == Vector2(630, 100) && testing.introFinished == true:
				if testing.dialogueUnique == false:
					testing.position = Vector2(400, 100)
					testing.userTalking.play()
				else:
					pass
			else:
				testing.position = Vector2(630, 100)
			if end_point1 == false:
				if testing.indexDialoguePath2 != testing.indexDialoguePath2End:
					testing.indexDialoguePath2 += 1
					testing.actual_dialogue = testing.TextDialogueArray[testing.indexDialoguePath2]
					testing.botton_1.hide()
					testing.botton12Interaction.visible = false
					print(testing.indexDialoguePath2)
					path_2 = true
				else:
					print("reached end point moving to second branch path")
					end_point1 = true
			if end_point1 == true:
				if testing.indexFiller2Path2 != testing.indexFiller2Path2End:
					branch_2 = true
					testing.indexFiller2Path2 += 1
					testing.actual_dialogue = testing.TextDialogueArray[testing.indexFiller2Path2]
					testing.botton_1.hide()
					testing.botton12Interaction.visible = false
					print(testing.indexFiller2Path2)
				else:
					print("reached end point of this whole path")
					print(testing.indexFiller2Path2)
					complete_end = true
		else:
			get_tree().change_scene_to_file(testing.possiblePath2)
	else:
		if complete_end == false:
			if testing.position == Vector2(630, 100) && testing.introFinished == true:
				if testing.dialogueUnique == false:
					testing.position = Vector2(400, 100)
				else:
					pass
			else:
				testing.position = Vector2(630, 100)
			if testing.indexFiller2Path1 != testing.indexFiller2Path1End:
				testing.indexFiller2Path1 += 1
				testing.actual_dialogue = testing.TextDialogueArray[testing.indexFiller2Path1]
				testing.botton_1.hide()
				testing.botton12Interaction.visible = false
				print(testing.indexFiller2Path1)
			else:
				print("reached end point of this whole path")
				print(testing.indexFiller2Path1)
				complete_end = true
		else:
			get_tree().change_scene_to_file(testing.possiblePath1)



func _on_buttontest_2_mouse_entered() -> void:
	print("has entered button 2")


func _on_mouse_entered() -> void:
	print("has entered button 1")
