extends Button

var get = get.tree()

func _ready():
	if ACTION_MODE_BUTTON_PRESS:
		get.tree().quit();