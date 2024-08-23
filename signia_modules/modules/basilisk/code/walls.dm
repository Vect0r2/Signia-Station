/obj/effect/forcefield/basilisk
	name = "basilisk's wall"
	desc = "A basilisk's force wall"

/obj/effect/forcefield/basilisk/CanAllowThrough(atom/movable/mover, border_dir)
	. = ..()
	if(mover == /mob/living/simple_animal/hostile/megafauna/basilisk)
		return TRUE
