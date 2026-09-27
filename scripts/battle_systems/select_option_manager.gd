extends Node2D

@onready var optionContainerReference = $"CenterContainer/OptionContainer"
@onready var atkButtonReference = $"CenterContainer/OptionContainer/AtkButton"
@onready var selectEnemyManagerReference = get_node("../SelectEnemyManager")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	atkButtonReference.atk_selected.connect(_on_atk_selected)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func activate() -> void:
	optionContainerReference.visible = true

func deactivate() -> void:
	optionContainerReference.visible = false

func _on_atk_selected() -> void:
	deactivate()
	selectEnemyManagerReference.activate()
