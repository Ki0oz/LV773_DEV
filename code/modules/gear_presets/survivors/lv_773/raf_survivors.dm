///////////////////////////////////////////////////////////////////

/// Aegis - RAF - survivors

/datum/equipment_preset/survivor/raf
	name = "Survivor - RAF"
	paygrades = list(PAY_SHORT_RAFE3 = JOB_PLAYTIME_TIER_0)
	job_title = JOB_SURVIVOR
	skills = /datum/skills/raf
	languages = list(LANGUAGE_ENGLISH, LANGUAGE_JAPANESE)
	faction = FACTION_RAF
	faction_group = FACTION_LIST_SURVIVOR_RAF
	origin_override = ORIGIN_TWE
	minimap_icon = "rmc_rifleman"
	minimap_background = "background_raf"
	role_comm_title = "24/RAF"
	idtype = /obj/item/card/id/dogtag
	flags = EQUIPMENT_PRESET_EXTRA
	access = list(
		ACCESS_CIVILIAN_PUBLIC,
	)

/datum/equipment_preset/survivor/raf/load_gear(mob/living/carbon/human/new_human)
	var/obj/item/clothing/under/marine/veteran/royal_marine/raf/uniform = new()
	var/random_number = rand(1,4)
	switch(random_number)
		if(1)
			uniform.roll_suit_jacket(new_human)
			new_human.equip_to_slot_or_del(new /obj/item/clothing/mask/neckerchief/brown(new_human), WEAR_FACE)
			new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/marine/veteran/royal_marine/light/raf(new_human), WEAR_JACKET)
		if(2)
			new_human.equip_to_slot_or_del(new /obj/item/clothing/mask/neckerchief/brown(new_human.back), WEAR_IN_BACK)
			new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/marine/veteran/royal_marine/light/raf(new_human), WEAR_JACKET)
		if(3)
			new_human.equip_to_slot_or_del(new /obj/item/clothing/mask/neckerchief/brown(new_human.back), WEAR_IN_BACK)
			new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/jacket/marine/rmc/service/raf_combat_jacket(new_human), WEAR_JACKET)
			new_human.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/marine/veteran/royal_marine/generic(new_human.back), WEAR_IN_BACK)
		if(4)
			uniform.roll_suit_sleeves(new_human)
	new_human.equip_to_slot_or_del(uniform, WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/storage/webbing/raf(new_human), WEAR_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/storage/belt/gun/raf_para_belt/webley_near_empty(new_human), WEAR_WAIST)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/marine/veteran/raf_beret(new_human), WEAR_HEAD)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine/royal_marine/knife(new_human), WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/flare(new_human), WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/firstaid/full/alternate(new_human), WEAR_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/tool/crowbar/tactical(new_human), WEAR_IN_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/rifle/rmc_f90(new_human), WEAR_J_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/rmc_f90(new_human), WEAR_IN_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/rmc_f90(new_human), WEAR_IN_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/lightpack/five_slot(new_human), WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/stack/sheet/metal/med_small_stack(new_human.back), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/device/radio(new_human.back), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/marine/veteran/royal_marine(new_human), WEAR_HANDS)
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/distress/raf(new_human), WEAR_L_EAR)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/patch/twe(new_human), WEAR_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/marine/veteran/royal_marine/light/raf(new_human), WEAR_JACKET)

///////////////////////////////////////////////////////////////////

/datum/equipment_preset/survivor/iasf/paratrooper
	name = "Survivor - IASF - Paratrooper"
	paygrades = list(PAY_SHORT_RAFE4 = JOB_PLAYTIME_TIER_0, PAY_SHORT_RAFE4 = JOB_PLAYTIME_TIER_1)
	assignment = "IASF - Paratrooper"
	job_title = JOB_TWE_IASF_PARA
	skills = /datum/skills/survivor/raf_rifleman

/datum/equipment_preset/survivor/raf/paratrooper/load_gear(mob/living/carbon/human/new_human)
	var/obj/item/clothing/under/marine/veteran/royal_marine/raf/uniform = new()
	var/random_number = rand(1,2)
	switch(random_number)
		if(1)
			uniform.roll_suit_jacket(new_human)
		if(2)
			uniform.roll_suit_sleeves(new_human)
	new_human.equip_to_slot_or_del(uniform, WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/lightpack/five_slot(new_human), WEAR_BACK)

	..()

///////////////////////////////////////////////////////////////////

/datum/equipment_preset/survivor/raf/engi
	name = "Survivor - RAF Combat Engineer"
	paygrades = list(PAY_SHORT_RAFE4 = JOB_PLAYTIME_TIER_0)
	assignment = "RAF - Combat Engineer"
	job_title = JOB_TWE_IASF_PARA_ENGI

	minimap_icon = "rmc_breacher"

	skills = /datum/skills/survivor/raf_engi

/datum/equipment_preset/survivor/raf/engi/load_gear(mob/living/carbon/human/new_human)

	var/obj/item/clothing/under/marine/veteran/royal_marine/raf/uniform = new()
	var/R = rand(1,2)
	switch(R)
		if(1)
			uniform.roll_suit_jacket(new_human)
		if(2)
			uniform.roll_suit_sleeves(new_human)
	new_human.equip_to_slot_or_del(uniform, WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/under/marine/veteran/royal_marine/raf (new_human), WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/marine/veteran/royal_marine/light/raf(new_human), WEAR_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/marine/veteran/royal_marine(new_human), WEAR_HANDS)
	new_human.equip_to_slot_or_del(new /obj/item/storage/belt/utility/full(new_human), WEAR_WAIST)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/glasses/welding(new_human), WEAR_EYES)
	new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/rifle/rmc_f90(new_human), WEAR_J_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/rmc_f90(new_human), WEAR_IN_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/rmc_f90(new_human), WEAR_IN_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/lightpack/five_slot(new_human), WEAR_BACK)

	..()

///////////////////////////////////////////////////////////////////

/datum/equipment_preset/survivor/raf_medic
	name = "Survivor - IASF - Combat Medical Technician"
	paygrades = list(PAY_SHORT_IASFE4 = JOB_PLAYTIME_TIER_0)
	assignment = "IASF - Combat Medical Technician"
	job_title = JOB_TWE_IASF_PARA_MEDIC

	minimap_icon = "rmc_medic"

	skills = /datum/skills/raf/medic

/datum/equipment_preset/survivor/raf/medic/load_gear(mob/living/carbon/human/new_human)
	var/obj/item/clothing/under/marine/veteran/royal_marine/raf/uniform = new()
	var/random_number = rand(1,2)
	switch(random_number)
		if(1)
			uniform.roll_suit_jacket(new_human)
		if(2)
			uniform.roll_suit_sleeves(new_human)
	new_human.equip_to_slot_or_del(uniform, WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/marine/veteran/royal_marine/light/raf(new_human), WEAR_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/marine/veteran/royal_marine/generic(new_human.back), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/glasses/hud/health(new_human), WEAR_EYES)
	new_human.equip_to_slot_or_del(new /obj/item/storage/belt/medical/rmc/survivor(new_human), WEAR_WAIST)
	new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/smg/p90/twe(new_human), WEAR_J_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/smg/p90/ap(new_human), WEAR_IN_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/smg/p90/ap(new_human), WEAR_IN_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/rmc/medium/medic(new_human), WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/device/radio(new_human.back), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/tool/extinguisher/mini(new_human.back), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/device/defibrillator(new_human.back), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/device/healthanalyzer(new_human.back), WEAR_IN_BACK)

	..()

///////////////////////////////////////////////////////////////////

/datum/equipment_preset/survivor/raf_pilot
	name = "Survivor - RAF - Pilot"
	assignment = "RAF - Pilot"
	job_title = JOB_TWE_RAF_PILOT
	minimap_icon = "raf_pilot"
	paygrades = list(PAY_SHORT_RAFE6 = JOB_PLAYTIME_TIER_0)
	skills = /datum/skills/raf/pilot

/datum/equipment_preset/survivor/raf/pilot/load_gear(mob/living/carbon/human/new_human)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/marine/veteran/royal_marine/pilot (new_human), WEAR_HEAD)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/under/marine/veteran/royal_marine/raf (new_human), WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/marine/veteran/royal_marine/light/raf(new_human), WEAR_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/smg/p90/twe(new_human), WEAR_J_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/smg/p90/ap(new_human), WEAR_IN_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/smg/p90/ap(new_human), WEAR_IN_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/lightpack/five_slot(new_human), WEAR_BACK)

	..()

///////////////////////////////////////////////////////////////////

/datum/equipment_preset/survivor/raf/sniper
	name = "Survivor - IASF - Sniper"
	assignment = JOB_TWE_RAF_SNIPER
	skills = /datum/skills/survivor/raf_sniper
	minimap_icon = "spec"

/datum/equipment_preset/survivor/forecon/sniper/load_gear(mob/living/carbon/human/new_human)
	var/obj/item/clothing/under/marine/reconnaissance/uniform = new()
	var/obj/item/clothing/accessory/storage/droppouch/pouch = new()
	var/obj/item/clothing/accessory/ranks/marine/e5/pin = new()
	var/obj/item/clothing/accessory/patch/uscmpatch/patch_uscm = new()
	var/obj/item/clothing/accessory/patch/forecon/patch_forecon = new()
	uniform.attach_accessory(new_human,pouch)
	uniform.attach_accessory(new_human,patch_uscm)
	uniform.attach_accessory(new_human,pin)
	uniform.attach_accessory(new_human,patch_forecon)
	new_human.equip_to_slot_or_del(uniform, WEAR_BODY)
	new_human.equip_to_slot(new /obj/item/clothing/suit/storage/marine/ghillie/forecon(new_human), WEAR_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/marine/satchel(new_human), WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/firstaid/full(new_human), WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/firstaid/full/alternate(new_human), WEAR_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/reagent_container/food/drinks/flask/marine(new_human), WEAR_IN_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/facepaint/sniper(new_human), WEAR_IN_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/storage/box/mre(new_human), WEAR_IN_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/general_belt(new_human), WEAR_J_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/tool/crowbar/tactical(new_human), WEAR_IN_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine/knife(new_human), WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/device/radio(new_human), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/almayer/sof/survivor_forecon(new_human), WEAR_L_EAR)
	spawn_random_headgear(new_human)
	add_forecon_equipment(new_human)
	add_forecon_weapon_pistol(new_human)

///////////////////////////////////////////////////////////////////

/datum/equipment_preset/survivor/raf/squad_leader
	name = "Survivor - RAF Squad Leader"
	paygrades = list(PAY_SHORT_IASFE5 = JOB_PLAYTIME_TIER_0)
	assignment = "RAF - Section Leader"
	job_title = JOB_TWE_IASF_PARA_SQUAD_LEADER
	languages = list(LANGUAGE_ENGLISH, LANGUAGE_JAPANESE)
	role_comm_title = "24/RAF SL"

	minimap_icon = "rmc_teamleader"

	skills = /datum/skills/raf/leader

/datum/equipment_preset/survivor/raf/squad_leader/load_gear(mob/living/carbon/human/new_human)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/under/marine/veteran/royal_marine/raf(new_human), WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/marine/veteran/royal_marine/light/raf(new_human), WEAR_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/rifle/rmc_f90(new_human), WEAR_J_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/rmc_f90(new_human), WEAR_IN_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/rmc_f90(new_human), WEAR_IN_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/marine/veteran/raf_beret/tl(new_human), WEAR_HEAD)
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/lightpack/five_slot(new_human), WEAR_BACK)

	..()

///////////////////////////////////////////////////////////////////

/datum/equipment_preset/synth/survivor/raf_synth
	name = "Survivor - RAF - Support Synthetic"
	assignment = "RAF - Support Synthetic"
	flags = EQUIPMENT_PRESET_EXTRA
	languages = ALL_SYNTH_LANGUAGES
	job_title = JOB_TWE_RAF_SYNTH
	faction = FACTION_RAF
	faction_group = FACTION_LIST_SURVIVOR_RAF
	origin_override = ORIGIN_TWE
	paygrades = list(PAY_SHORT_SYN = JOB_PLAYTIME_TIER_0)
	idtype = /obj/item/card/id/dogtag
	role_comm_title = "24/RAF Syn"
	minimap_background = "background_raf"
	minimap_icon = "synth"

/datum/equipment_preset/synth/survivor/iasf_synth/load_gear(mob/living/carbon/human/new_human)
	var/obj/item/clothing/under/marine/veteran/royal_marine/raf/uniform = new()
	var/random_number = rand(1,2)
	switch(random_number)
		if(1)
			uniform.roll_suit_jacket(new_human)
		if(2)
			uniform.roll_suit_sleeves(new_human)
	new_human.equip_to_slot_or_del(uniform, WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/storage/webbing/raf(new_human), WEAR_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/marine/veteran/raf_beret(new_human), WEAR_HEAD)
	new_human.equip_to_slot_or_del(new /obj/item/tool/screwdriver(new_human), WEAR_R_EAR)
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/distress/raf(new_human), WEAR_L_EAR)
	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/lightpack/five_slot(new_human), WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/roller(new_human.back), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/device/multitool(new_human.back), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/device/radio(new_human.back), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/stack/cable_coil(new_human.back), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/stack/sheet/metal/small_stack(new_human.back), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/device/healthanalyzer(new_human.back), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/device/defibrillator/synthetic(new_human.back), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/marine/veteran/royal_marine/light/raf/synth(new_human), WEAR_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/device/flashlight(new_human), WEAR_J_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/belt/medical/rmc/survivor(new_human), WEAR_WAIST)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/patch/twe(new_human), WEAR_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/marine/veteran/royal_marine(new_human), WEAR_HANDS)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/electronics(new_human), WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/survival/synth/full(new_human), WEAR_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine/royal_marine/knife(new_human), WEAR_FEET)

///////////////////////////////////////////////////////////////////

/datum/equipment_preset//survivor/raf_lieutenantr
	name = "Survivor - RAF Commander"
	assignment = "RAF - Commander"
	faction = FACTION_RAF
	faction_group = FACTION_LIST_SURVIVOR_RAF
	skills = /datum/skills/raf/commander
	paygrades = list(PAY_SHORT_RAFO5 = JOB_PLAYTIME_TIER_0)
	job_title = JOB_TWE_RAF_COMMANDER
	minimap_icon = "rmc_commander"
	minimap_background = "background_raf"
	idtype = /obj/item/card/id/gold
	role_comm_title = "RAF CDR"
	flags = EQUIPMENT_PRESET_START_OF_ROUND
	access = list(
		ACCESS_CIVILIAN_PUBLIC,
		ACCESS_CIVILIAN_RESEARCH,
		ACCESS_CIVILIAN_ENGINEERING,
		ACCESS_CIVILIAN_LOGISTICS,
		ACCESS_CIVILIAN_BRIG,
		ACCESS_CIVILIAN_MEDBAY,
		ACCESS_CIVILIAN_COMMAND,
	)

/datum/equipment_preset/survivor/aegis/raf_commander/load_gear(mob/living/carbon/human/new_human)

	new_human.equip_to_slot_or_del(new /obj/item/storage/backpack/satchel/black(new_human), WEAR_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/accessory/tie/black(new_human), WEAR_ACCESSORY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/mask/neckerchief/brown(new_human.back), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/gloves/marine/veteran/royal_marine(new_human), WEAR_HANDS)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/under/marine/officer/royal_marine/raf(new_human), WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/jacket/marine/rmc/service/raf_co(new_human), WEAR_JACKET)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine/royal_marine/knife(new_human), WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/device/radio/headset/distress/raf(new_human), WEAR_L_EAR)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/survival/full(new_human), WEAR_L_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/general/large(new_human), WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/notepad(new_human), WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/tool/pen/multicolor/fountain(new_human), WEAR_IN_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/stack/sheet/metal/med_small_stack(new_human.back), WEAR_IN_BACK)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/head/beret/raf_commander_cap(new_human), WEAR_HEAD)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/glasses/sunglasses/aviator(new_human), WEAR_EYES)
	new_human.equip_to_slot_or_del(new /obj/item/storage/belt/gun/raf_para_belt/custom/full(new_human), WEAR_WAIST)
	new_human.equip_to_slot_or_del(new /obj/item/tool/crowbar/tactical(new_human), WEAR_IN_JACKET)

	..()
