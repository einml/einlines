tool
extends TabContainer

onready var tab_bar = get_node("%TabBar")

# Called when the node enters the scene tree for the first time.
func _ready():
	tab_bar.connect("tab_changed", self, "change_tab")
	tab_bar.connect("tab_close", self, "remove_tab")
	
	for child in get_children():
		add_tab(child)

func add_tab(child):
	if not child is NodeGraph:
		return
	child = child as NodeGraph
	var i = child.get_index()
	tab_bar.add_tab(child.name)
	tab_bar.set_tab_icon(i, child.icon)
	child.connect("renamed", self, "rename_tab", [child])

func remove_tab(child):
	var i = child.get_index()
	tab_bar.remove_tab(i)

func change_tab(tab):
	current_tab = tab

func rename_tab(child):
	var i = child.get_index()
	tab_bar.set_tab_title(i, child.name)
