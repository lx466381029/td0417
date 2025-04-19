extends Button

# 预加载敌人场景以便实例化
var enemy_scene = preload("res://Scence/Enemy.tscn")

func _on_pressed() -> void:
	# 创建敌人实例
	var enemy_instance = enemy_scene.instantiate()
	
	# 获取主场景中的敌人节点位置
	var enemies_node = get_node("/root/Main/GameWorld/Enemies")
	
	# 设置敌人的随机位置（在屏幕中央区域）
	var sprite = enemy_instance.get_node("Sprite2D")
	sprite.position = Vector2(
		randf_range(150, 350),  # X坐标在150到350之间
		randf_range(300, 500)   # Y坐标在300到500之间
	)
	
	# 将敌人添加到敌人节点下
	enemies_node.add_child(enemy_instance)
