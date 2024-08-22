/*
/mob/living/simple_animal/hostile/megafauna/basilisk
	name = "Roko's Basilisk"
	desc = "It stares into your soul"
	health = 2500
	maxHealth = 2500
	attack_verb_continuous = "chomps"
	attack_verb_simple = "chomp"
	attack_sound = 'sound/magic/demon_attack1.ogg'
	attack_vis_effect = ATTACK_EFFECT_BITE
	icon = 'icons/mob/simple/lavaland/96x96megafauna.dmi' //waiting for Moth's icons
	icon_state = "dragon"
	icon_living = "dragon"
	icon_dead = "dragon_dead"
	health_doll_icon = "dragon"
	friendly_verb_continuous = "stares down"
	friendly_verb_simple = "stare down"
	speak_emote = list("roars")
	armour_penetration = 40
	melee_damage_lower = 65
	melee_damage_upper = 65
	speed = 5
	move_to_delay = 5
	ranged = TRUE
	pixel_x = -32
	base_pixel_x = -32
	maptext_height = 64
	maptext_width = 64
	crusher_loot = list(/obj/structure/closet/crate/necropolis/dragon/crusher)
	loot = list(/obj/structure/closet/crate/necropolis/dragon)
	butcher_results = list(/obj/item/stack/ore/diamond = 5, /obj/item/stack/sheet/sinew = 5, /obj/item/stack/sheet/bone = 30)
	guaranteed_butcher_results = list(/obj/item/stack/sheet/animalhide/ashdrake = 10)
	gps_name = "Fiery Signal"
	achievement_type = /datum/award/achievement/boss/drake_kill
	crusher_achievement_type = /datum/award/achievement/boss/drake_crusher
	score_achievement_type = /datum/award/score/drake_score
	death_message = "collapses into a pile of bones, its flesh sloughing away."
	death_sound = 'sound/magic/demon_dies.ogg'
	footstep_type = FOOTSTEP_MOB_HEAVY
	var/datum/action/cooldown/mob_cooldown/summon_wall/wall_summon

/mob/living/simple_animal/hostile/megafauna/basilisk/Initialize(mapload)
	.=..()
	wall_summon.new(src)

	AddElement(/datum/element/change_force_on_death, move_force = MOVE_FORCE_DEFAULT)

/mob/living/simple_animal/hostile/megafauna/basilisk/Destory()
	wall_summon = null
	return ..()

/mob/living/simple_animal/hostile/megafauna/basilik/OpenFire()
	if(client)
		return

*/
