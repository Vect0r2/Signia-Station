/obj/machinery/biotube
	name = "ore silo"
	desc = "An all-in-one bluespace storage and transmission system for the station's mineral distribution needs."
	icon = 'icons/obj/machines/ore_silo.dmi'
	icon_state = "silo"

/obj/machinery/biotube/ui_interact(mob/user, datum/tgui/ui)
  ui = SStgui.try_update_ui(user, src, ui)
  if(!ui)
    ui = new(user, src, "MyMachine")
    ui.open()


/obj/machinery/biotube/ui_data(mob/user)
  var/list/data = list()
  data["health"] = 10
  data["color"] = color

  return data

/obj/machinery/biotube/ui_act(action, list/params, datum/tgui/ui, datum/ui_state/state)
  . = ..()
  if(.)
    return
  if(action == "change_color")
    var/new_color = params["color"]
    color = new_color
    . = TRUE
  update_icon()
