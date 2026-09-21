extends Node2D

var enemyTeam : Array[Enemy]
var rattoPath = load("res://scenes/characters/enemies/ratto_enemy.tscn")

func _init() -> void:
	enemyTeam = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	test_one_ratto()
	enemyTeam[0].act()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func test_one_ratto() -> void:
	var newRatto = rattoPath.instantiate()
	enemyTeam.append(newRatto)
	add_child(newRatto)

func atk_on_enemy(targetIndex : int, damage : int) -> void:
	enemyTeam[targetIndex].take_damage(damage)
