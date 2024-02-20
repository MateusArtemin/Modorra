extends Node

'''
Accessors for encapsulating variables used for creatures in the game.
*Creatures that need specific variables should inherit from this class,
and add the specific variables.

Assessores para o encapsulamento das varíáveis usadas para criaturas em geral do jogo.
*Criaturas que precisam de variáveis específicas devem herdar dessa classe,
e adicionar as variáveis adiconais.
'''

var HealthPoints : int = 0
var ManaPoints : int = 0
var BaseArmor : int = 0
var Speed : int = 0
var BasePhysicalDamage : int = 0
var TotalPhysicalDamage : int = 0
var BaseMagicDamage : int = 0
var TotalMagicDamage : int = 0
var IDItems : Array = []

#Getters
func get_hp() -> int:
	return HealthPoints

func get_mp() -> int:
	return ManaPoints

func get_ba() -> int:
	return BaseArmor

func get_speed() -> int:
	return Speed

func get_bpd() -> int:
	return BasePhysicalDamage

func get_tpd() -> int:
	return TotalPhysicalDamage

func get_bmd() -> int:
	return BaseMagicDamage

func get_tmd() -> int:
	return TotalMagicDamage

func get_id_items() -> Array:
	return IDItems

#Setters
func set_hp(value: int) -> void:
	HealthPoints = value

func set_mp(value: int) -> void:
	ManaPoints= value

func set_ba(value: int) -> void:
	BaseArmor = value

func set_speed(value: int) -> void:
	Speed = value

func set_bpd(value: int) -> void:
	BasePhysicalDamage = value

func set_tpd(value: int) -> void:
	TotalPhysicalDamage = value
	
func set_bmd(value: int) -> void:
	BaseMagicDamage = value

func set_tmd(value: int) -> void:
	TotalMagicDamage = value

#misc
func add_id_items(value: int) -> void:
	IDItems.append(value)

func del_id_items(value: int) -> void:
	IDItems.erase(value)
