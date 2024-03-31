extends Node

const scene_lobby8 = preload("res://Game/Scene/lobbies/lobby8.tscn")
const scene_registrar = preload("res://Game/Scene/registrar.tscn")
const scene_counselor = preload("res://Game/Scene/counselor.tscn")
const scene_clinic = preload("res://Game/Scene/clinic.tscn")
const scene_canteenu = preload("res://Game/Scene/canteenu.tscn")
const scene_canteend = preload("res://Game/Scene/canteend.tscn")
const scene_cashier = preload("res://Game/Scene/cashier.tscn")
const scene_kinderf = preload("res://Game/Scene/rooms/kindergartenf.tscn")
const scene_kinderb = preload("res://Game/Scene/rooms/kindergartenb.tscn")
const scene_lobby1 = preload("res://Game/Scene/lobbies/lobby1.tscn")
const scene_lobby2 = preload("res://Game/Scene/lobbies/lobby2.tscn")
const scene_lobby3 = preload("res://Game/Scene/lobbies/lobby3.tscn")
const scene_lobby4 = preload("res://Game/Scene/lobbies/lobby4.tscn")
const scene_lobby5 = preload("res://Game/Scene/lobbies/lobby5.tscn")
const scene_lobby6 = preload("res://Game/Scene/lobbies/lobby6.tscn")
const scene_lobby7 = preload("res://Game/Scene/lobbies/lobby7.tscn")







var spawn_door_tag

func go_to_level(level_tag, destination_tag):
	var scene_to_load
	
	match level_tag:
		"lobby1":
			scene_to_load = scene_lobby1
		"lobby2":
			scene_to_load = scene_lobby2
		"lobby3":
			scene_to_load = scene_lobby3
		"lobby4":
			scene_to_load = scene_lobby4
		"lobby5":
			scene_to_load = scene_lobby5
		"lobby6":
			scene_to_load = scene_lobby6
		"lobby7":
			scene_to_load = scene_lobby7
		"lobby8":
			scene_to_load = scene_lobby8
		"kinderf":
			scene_to_load = scene_kinderf
		"kinderb":
			scene_to_load = scene_kinderb
		"cash":
			scene_to_load = scene_cashier
		"canteenU":
			scene_to_load = scene_canteenu
		"canteenD":
			scene_to_load = scene_canteend
		"clinic":
			scene_to_load = scene_clinic
		"counsel":
			scene_to_load = scene_counselor
		"registrar":
			scene_to_load = scene_registrar
			
	if scene_to_load != null:
		spawn_door_tag = destination_tag
		get_tree().change_scene_to_packed(scene_to_load)
