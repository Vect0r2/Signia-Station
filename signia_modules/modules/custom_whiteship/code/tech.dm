#define TECHWEB_NODE_CUSTOM_SHUTTLES "custom_shuttles"

/datum/techweb_node/beam_weapons
	id = TECHWEB_NODE_CUSTOM_SHUTTLES
	display_name = "Custom Shuttles"
	description = "All you need to be able to build new shuttles"
	prereq_ids = list(TECHWEB_NODE_BLUESPACE_TRAVEL)
	design_ids = list(
		"rapid_shuttle_contructor",
		"flight_targeter",
		"flight_controller",
	)
	research_costs = list(TECHWEB_POINT_TYPE_GENERIC = TECHWEB_TIER_2_POINTS)

/datum/design/shuttle_contructer
	name = "Rapid Shuttle Contructor"
	desc = "This device lets you build custom shuttles. The future of exploration."
	id = "rapid_shuttle_contructor"
	build_type = PROTOLATHE
	materials = list(/datum/material/iron = SHEET_MATERIAL_AMOUNT * 20, /datum/material/glass = SHEET_MATERIAL_AMOUNT * 10 | /datum/material/bluespace = SHEET_MATERIAL_AMOUNT * 0.5)
	build_path = /obj/item/shuttle_creator
	category = list(
		RND_CATEGORY_TOOLS
	)
	departmental_flags = DEPARTMENT_BITFLAG_ENGINEERING | DEPARTMENT_BITFLAG_SCIENCE
	autolathe_exportable = TRUE

/datum/design/flight_controller
	name = "Flight Controller"
	desc = "This lets you fly your custom shuttle"
	id = "flight_controller"
	build_type = PROTOLATHE
	materials = list(/datum/material/glass = SHEET_MATERIAL_AMOUNT)
	build_path = /obj/item/circuitboard/computer/shuttle/flight_control
	category = list(
		RND_SUBCATEGORY_COMPUTER_ENGINEERING
	)
	departmental_flags = DEPARTMENT_BITFLAG_ENGINEERING | DEPARTMENT_BITFLAG_SCIENCE
	autolathe_exportable = TRUE

/datum/design/flight_controller
	name = "Navigation Computer"
	desc = "This lets you find landing locations for your custom shuttle"
	id = "flight_targeter"
	build_type = PROTOLATHE
	materials = list(/datum/material/glass = SHEET_MATERIAL_AMOUNT)
	build_path = /obj/machinery/computer/camera_advanced/shuttle_docker/custom
	category = list(
		RND_SUBCATEGORY_COMPUTER_ENGINEERING
	)
	departmental_flags = DEPARTMENT_BITFLAG_ENGINEERING | DEPARTMENT_BITFLAG_SCIENCE
	autolathe_exportable = TRUE
