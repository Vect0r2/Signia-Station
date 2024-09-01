/obj/effect/forcefield/basilisk
	icon = 'icons/turf/mining.dmi'
	icon_state = "rock"
	name = "basilisk's wall"
	desc = "A basilisk's force wall"
	density = FALSE
	initial_duration = 10 SECONDS
	alpha = 150

/obj/effect/forcefield/basilisk/CanAllowThrough(atom/movable/mover, border_dir)
	.=..()
	if(!isliving(mover))
		return TRUE
	var/mob/living/living_mover = mover
	if(living_mover.has_status_effect(/datum/status_effect/basilisk_stare))
		return TRUE
	if(istype(mover, /mob/living/simple_animal/hostile/megafauna/basilisk))
		var/mob/living/simple_animal/hostile/megafauna/basilisk/basilisk = mover
		if(basilisk.basilisk_pass)
			return TRUE
	return FALSE

