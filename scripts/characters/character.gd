@abstract class_name Character extends Node2D

var characterName : String
var hp : int
var spd : float
var atbStart : float

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

@abstract func act() -> void
