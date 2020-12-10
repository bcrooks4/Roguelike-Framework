extends Node2D

func _ready():
	UpdateGraphics()

func UpdateGraphics():
	$Layers/Objects.clear()
	
	for object in $Objects.get_children():
		if object is GameObject:
			$Layers/Objects.set_cell(object.X, object.Y, 0, false, false, false, object.SpriteCoord)
