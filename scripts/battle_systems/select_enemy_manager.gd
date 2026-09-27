extends Node2D

@onready var selectContainerReference = $"Control/SelectContainer"
@onready var enemyTeamManagerReference = get_node("../EnemyTeamManager")

var selectButtonReference = load("res://scenes/ui/select_button.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for i in enemyTeamManagerReference.get_enemy_team_size():
		var newSelectButton = selectButtonReference.instantiate()
		newSelectButton.set_selectIndex(i)
		newSelectButton.target_selected.connect(_on_target_select)
		selectContainerReference.add_child(newSelectButton)
	deactivate()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func activate() -> void:
	print("se activa la seleccion de enemigo")
	selectContainerReference.visible = true

func deactivate() -> void:
	selectContainerReference.visible = false

func _on_target_select(index : int) -> void:
	deactivate()
	enemyTeamManagerReference.atk_on_enemy(index, 1)
