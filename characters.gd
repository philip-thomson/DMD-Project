extends Node2D


@onready var ceoUser: AnimatedSprite2D = $player
@onready var assistent: AnimatedSprite2D = $assistent
@onready var bird: AnimatedSprite2D = $bird


func _ready() -> void:
	ceoUser.play("idle")
	assistent.play("idle")
	bird.play("idle")
