/obj/machinery/biotube
	name = "ore silo"
	desc = "An all-in-one bluespace storage and transmission system for the station's mineral distribution needs."
	icon = 'icons/obj/machines/ore_silo.dmi'
	icon_state = "silo"
	var/instability = 0


/obj/machinery/biotube/ui_interact(mob/user, datum/tgui/ui)
	ui = SStgui.try_update_ui(user, src, ui)
	if(!ui)
		ui = new(user, src, "biotube")
		ui.open()

/obj/machinery/biotube/ui_data(mob/user)
	var/list/data = list()
	data["instability"] = instability
	return data

/obj/machinery/biotube/ui_act(action, list/params, datum/tgui/ui, datum/ui_state/state)
	if(..())
		return
	switch(action)

	if("prod")
    	var = params["instability"]
		var = 10 + var
    	// A demo of proper input sanitation.
    	. = TRUE
	update_icon() // Not applicable to all objects.
