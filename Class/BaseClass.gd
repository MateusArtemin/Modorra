extends Node

'''
A base class with fundamental commands for things like items, creatures, and events,
classes such as those described will inherit from this.

Classe com comandos bases que coisas como itens, criaturas, e eventos,
classes como as descritas herdaram essa.
'''

func check_tile(TileVec2i: Vector2i) -> Array:

	'''
	Check if there is an object at the given location and return the found objects.
	
	Checar se tem um objeto no local dado, e retorna os objetos achados.
	'''

	var CheckArea :  Area2D = null
	var CheckCollider : CollisionShape2D = null
	var FindingsArea : Array = []
	var Findings : Array = []
	
	# Create Area2D
	CheckArea = Area2D.new()
	CheckArea.position = TileVec2i
	CheckArea.name = "CheckCollider"
	get_tree().get_root().add_child(CheckArea)
	
	# Create collider
	CheckCollider = CollisionShape2D.new()
	CheckCollider.shape = RectangleShape2D.new()
	CheckCollider.shape.extents = Vector2(8, 8)
	CheckArea.add_child(CheckCollider)
	
	await get_tree().process_frame
	await get_tree().process_frame
	
	FindingsArea = CheckArea.get_overlapping_areas()
	
	#return if null
	if FindingsArea == []:
		return Findings
	
	for find in FindingsArea:
		Findings.append(find.get_parent())
	
	CheckArea.queue_free()
	return Findings

