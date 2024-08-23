/datum/action/cooldown/mob_cooldown/summon_wall
	name = "Summon Wall"
	desc = "Unleash burrowed tentacles in a line towards a targeted location, grappling targets after a delay."
	button_icon = 'icons/mob/simple/lavaland/lavaland_monsters.dmi'
	button_icon_state = "goliath_tentacle_wiggle"
	background_icon_state = "bg_demon"
	overlay_icon_state = "bg_demon_border"
	click_to_activate = TRUE
	cooldown_time = 12 SECONDS
	melee_cooldown_time = 0
	shared_cooldown = NONE

/datum/action/cooldown/mob_cooldown/summon_wall/Activate(atom/target)
	new /obj/effect/temp_visual/effect_trail/summon_wall(owner.loc, target)
	if (isliving(target))
		owner.visible_message(span_warning("[owner] reaches for [target] with its tentacles!"))
	StartCooldown()
	return TRUE

/// An invisible effect which chases a target, spawning tentacles every so often.
/obj/effect/temp_visual/effect_trail/summon_wall
	name = "wall summoning"
	duration = 3 SECONDS
	move_speed = 2
	homing = TRUE
	spawn_interval = 0.1 SECONDS
	spawned_effect = /obj/effect/forcefield/basilisk



