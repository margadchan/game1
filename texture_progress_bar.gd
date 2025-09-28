extends TextureProgressBar

@export var boss: Node  # Drag the boss node in the editor

func _ready():
	if boss and boss.has_signal("health_changed"):
		boss.health_changed.connect(update)
	update()

func update():
	if boss and boss.has_method("currentHealth") and boss.has_method("maxHealth"):
		value = boss.currentHealth * 100.0 / boss.maxHealth
