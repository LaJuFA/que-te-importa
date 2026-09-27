extends TextureButton

signal target_selected(selectIndex : int)

var selectIndex : int = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func set_selectIndex(value : int) -> void:
	self.selectIndex = value

func get_selectIndex() -> int:
	return self.selectIndex

func _on_pressed() -> void:
	emit_signal("target_selected", get_selectIndex())
