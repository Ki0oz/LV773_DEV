/obj/item/attachable/helmet_beacon/helmet
	name = "IFF helmet beacon"
	desc = "An IFF beacon (Identification Squad) is a small light device mounted on a helmet. It can be toggled on and off."
	icon = 'icons/obj/items/weapons/guns/attachments/rail.dmi'
	icon_state = "helmet_beacon"

	var/light_power_on = 2
	var/light_range_on = 3

	var/light_active = FALSE
	var/obj/item/clothing/head/helmet/marine/attached_helmet
	var/datum/action/item_action/toggle/helmet_flashlight/action


/obj/item/attachable/flashlight/helmet/on_enter_storage(obj/item/storage/internal/S)
	..()

	if(!istype(S, /obj/item/storage/internal))
		return

	var/obj/item/clothing/head/helmet/marine/H = S.master_object
	if(!istype(H))
		return

	remove_helmet()

	attached_helmet = H
	RegisterSignal(attached_helmet, COMSIG_PARENT_QDELETING, PROC_REF(remove_helmet))

	// Button
	action = new /datum/action/item_action/toggle/helmet_flashlight(src)
	if(ismob(H.loc))
		action.give_to(H.loc)

	activate(TRUE)


/obj/item/attachable/flashlight/helmet/on_exit_storage(obj/item/storage/S)
	remove_helmet()
	return ..()


/obj/item/attachable/flashlight/helmet/proc/remove_helmet()
	SIGNAL_HANDLER

	if(!attached_helmet)
		return

	activate(FALSE)

	UnregisterSignal(attached_helmet, COMSIG_PARENT_QDELETING)

	if(action)
		qdel(action)

	attached_helmet.update_icon()
	attached_helmet = null


/obj/item/attachable/flashlight/helmet/ui_action_click(mob/owner, obj/item/holder)
	activate()


/obj/item/attachable/flashlight/helmet/proc/activate(forced = FALSE)
	if(!attached_helmet)
		return

	// ON OFF
	light_active = !light_active

	if(light_active)
		playsound(attached_helmet, 'sound/handling/light_on_1.ogg', 15, 1)
	else
		playsound(attached_helmet, 'sound/handling/click_2.ogg', 15, 1)

	attached_helmet.set_light_on(light_active)
	attached_helmet.set_light_power(light_active ? light_power_on : 0)
	attached_helmet.set_light_range(light_active ? light_range_on : 0)

	attached_helmet.update_icon()

	if(action)
		action.update_button_icon()
