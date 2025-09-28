extends RigidBody2D

signal health_changed

var maxHealth: int = 100
var currentHealth: int = 100

func _ready():
	var mob_types = Array($AnimatedSprite2D.sprite_frames.get_animation_names())
	$AnimatedSprite2D.animation = mob_types.pick_random()
	$AnimatedSprite2D.play()

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()

func take_damage(amount: int):
	currentHealth = max(currentHealth - amount, 0)
	emit_signal("health_changed")
