	object_const_def
	const ROUTE7SAFFRONGATE_OFFICER

Route7SaffronGate_MapScripts:
	def_scene_scripts

	def_callbacks

Route7SaffronGuardScript:
	faceplayer
	opentext
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedPart
	writetext Route7SaffronGuardPowerPlantText
	waitbutton
	closetext
	end

.ReturnedPart:
	writetext Route7SaffronGuardSeriousText
	waitbutton
	closetext
	end

Route7SaffronGuardPowerPlantText:
	text "Heb je gehoord" ; "Did you hear about"
	line "van het ongeluk" ; "the accident at"
	cont "in de ENERGIE-" ; "the POWER PLANT?"
	cont "CENTRALE?" ;

	para "Het is in het" ; "It's located in"
	line "oosten, nabij" ; "the East, close to"
	cont "LAVENDER TOWN."
	done

Route7SaffronGuardSeriousText:
	text "Ik neem mijn baan" ; "I take my GUARD"
	line "als BEWAKER heel" ; "job seriously."
	cont "serieus." ;

	para "Hé! Je hebt een" ; "Hey! You have a"
	line "#DEX."

	para "Oké. Je kan" ; "OK. You can go"
	line "verder gaan." ; "through."
	done

Route7SaffronGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, ROUTE_7, 1
	warp_event  0,  5, ROUTE_7, 2
	warp_event  9,  4, SAFFRON_CITY, 10
	warp_event  9,  5, SAFFRON_CITY, 11

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route7SaffronGuardScript, -1
