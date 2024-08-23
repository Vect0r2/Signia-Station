/datum/action/cooldown/mob_cooldown/projectile_attack/hook
	projectile_type = /obj/projectile/hook/megafauna
	cooldown_time = 10 SECONDS
	has_homing = TRUE
	homing_turn_speed = 10
	projectile_speed_multiplier = 2

/obj/projectile/hook/megafauna
	name="basilisk's hook"

/obj/projectile/hook/on_hit(atom/target, blocked = 0, pierce_hit)
	. = ..()
	if(isliving(target))
		var/mob/living/living_victim = target
		living_victim.apply_status_effect(/datum/status_effect/basilisk_stare)
		living_victim.apply_status_effect(/datum/status_effect/incapacitating/immobilized/basilisk)


/datum/status_effect/basilisk_stare
	id = "basilisk_stare"
	duration = 2 SECONDS

/datum/status_effect/incapacitating/immobilized/basilisk
	duration = 2 SECONDS

