/datum/action/cooldown/crush
	name = "Basilisk Crush"
	desc = "Collapse onto the ground and stuns anybody in an area around you!"
	button_icon = 'icons/mob/simple/lavaland/lavaland_monsters.dmi'
	button_icon_state = "goliath_tentacle_wiggle"
	background_icon_state = "bg_demon"
	overlay_icon_state = "bg_demon_border"
	click_to_activate = TRUE
	cooldown_time = 12 SECONDS
	melee_cooldown_time = 0
	shared_cooldown = NONE


/datum/action/cooldown/mob_cooldown/summon_wall/Activate(atom/target)
	var/list/directions = GLOB.alldirs.Copy()
	for (var/dir in directions)
		var/turf/adjacent_target = get_step(target, dir)
		if(adjacent_target)
			new /obj/effect/crushing_blast
	owner.visible_message(span_warning("[owner] crushes the ground around itself"))
	StartCooldown()
	return TRUE

/obj/effect/crushing_blast
