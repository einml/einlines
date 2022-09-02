extends HBoxContainer

onready var tab_container: TabContainer = get_node("%MainTabContainer")

func current_graph():
	tab_container.get_current_tab_control()
	
var graph_node_scene = preload("res://GraphNode.tscn")

func add_node():
	var node = graph_node_scene.instance()
	current_graph().add_child(node)
