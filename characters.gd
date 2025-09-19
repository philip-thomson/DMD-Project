extends Node2D

@onready var ceoUser: AnimatedSprite2D = $player

func _ready() -> void:
	ceoUser.play("idle")
