extends Control

# 旋转角度范围（弧度制）
var min_angle = deg_to_rad(0)  
var max_angle = deg_to_rad(120) 

# 摇摆速度（弧度/秒）
var swing_speed = 1.0

# 用于跟踪摇摆方向
var direction = 1
var current_angle = 0

func _ready():
	# 初始化角度设置为60度
	rotation = min_angle
	current_angle = min_angle

func _process(delta):
	# 更新当前角度
	current_angle += swing_speed * delta * direction
	
	# 如果达到边界则改变方向
	if current_angle >= max_angle:
		current_angle = max_angle
		direction = -1  # 改变方向
	elif current_angle <= min_angle:
		current_angle = min_angle
		direction = 1   # 改变方向
	
	# 更新旋转
	rotation = current_angle
