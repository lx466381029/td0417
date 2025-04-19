extends Sprite2D

var angular_speed = PI *0.2

func _process(delta):
	rotation += angular_speed * delta
