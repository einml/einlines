extends GraphNode
class_name FnNode, "res://icons/FnNode.svg"

func _ready():
    $VBoxContainer/TextEdit.placeholder_text = name
    
