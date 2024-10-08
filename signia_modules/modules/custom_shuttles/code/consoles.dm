/obj/machinery/computer/shuttle/custom_shuttle
	name = "Nanotrasen Flight Control System"
	desc = "A shuttle control computer."
	icon_screen = "shuttle"
	icon_keyboard = "tech_key"
	shuttleId = ""
	light_color = LIGHT_COLOR_CYAN
	req_access = list()
	interaction_flags_machine = INTERACT_MACHINE_ALLOW_SILICON


/obj/machinery/computer/shuttle/custom_shuttle/proc/linkShuttle(new_id)
	if(shuttleId=="")
		shuttleId = new_id
		possible_destinations = "whiteship_home;shuttle[new_id]_custom;"
		return TRUE
	return FALSE


//docking cam
/obj/machinery/computer/camera_advanced/shuttle_docker/custom
	name = "Shuttle Navigation Computer"
	desc = "Used to designate a precise transit location for private ships."
	lock_override = NONE
	whitelist_turfs = list(/turf/open/space, /turf/open/lava)
	jump_to_ports = list("whiteship_home" = 1)
	view_range = 12
	designate_time = 30
	circuit = /obj/item/circuitboard/computer/shuttle/docker

/obj/machinery/computer/camera_advanced/shuttle_docker/custom/Initialize(mapload)
	. = ..()
	GLOB.jam_on_wardec += src

/obj/machinery/computer/camera_advanced/shuttle_docker/custom/Destroy()
	GLOB.jam_on_wardec -= src
	return ..()

/obj/machinery/computer/camera_advanced/shuttle_docker/custom/placeLandingSpot()
	if(!shuttleId)
		return	//Only way this would happen is if someone else delinks the console while in use somehow
	var/obj/docking_port/mobile/M = SSshuttle.getShuttle(shuttleId)
	if(M?.mode != SHUTTLE_IDLE)
		to_chat(usr, "<span class='warning'>You cannot target locations while in transit.</span>")
		return
	..()

/obj/machinery/computer/camera_advanced/shuttle_docker/custom/attack_hand(mob/user)
	if(!shuttleId)
		to_chat(user, "<span class='warning'>You must link the console to a shuttle first.</span>")
		return
	return ..()

/obj/machinery/computer/camera_advanced/shuttle_docker/custom/proc/linkShuttle(new_id)
	if(shuttleId=="")
		shuttleId = new_id
		return TRUE
	return FALSE
