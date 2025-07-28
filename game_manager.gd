extends Node2D

var counter: float = 0
var is_held: bool = false

@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var label: Label = $Sprite2D/Label

var tags: String = ""
var actual_text: String = ""

func _ready() -> void:
	print("hello world UwU")

func _process(delta: float) -> void:
	if is_held == false:
		counter += 1
	else:
		counter -= 1
	
	label.scale = Vector2(counter/100,counter/100)
	label.text = str(label.scale)
	
	sprite_2d.position = Vector2(counter, counter)
	
	tags = "[color=#008000][font_size=" + str(counter/5) + "]"
	
	actual_text = str(counter)
	$RichTextLabel.text = tags + actual_text

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("reset"): counter = 0
	if Input.is_action_pressed("reverse"): is_held = true
	else: is_held = false
