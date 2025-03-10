/obj/item/gun/ballistic
	var/emp_damageable = FALSE

/obj/item/gun/ballistic/automatic/emp_act(severity)
	. = ..()
	if(emp_damageable)
		jammed = TRUE
		playsound(src, 'sound/effects/stall.ogg', 60, TRUE)
		if(magazine)
			eject_magazine()

/obj/item/gun/ballistic/automatic/examine(mob/user)
	. = ..()
	if(!emp_damageable)
		. += "It has an EMP prevention system."

//////////////////GLOCK
/obj/item/gun/ballistic/automatic/pistol/g17
	name = "\improper GK-17"
	desc = "A weapon from bygone times, this has been made to look like an old, blocky firearm from the 21st century. Let's hope it's more reliable. Chambered in 9x19mm Peacekeeper."
	icon = 'modular_skyrat/modules/sec_haul/icons/guns/glock.dmi'
	icon_state = "glock"
	w_class = WEIGHT_CLASS_NORMAL
	mag_type = /obj/item/ammo_box/magazine/multi_sprite/g17
	can_suppress = FALSE
	fire_sound = 'sound/weapons/gun/pistol/shot_alt.ogg'
	rack_sound = 'sound/weapons/gun/pistol/rack.ogg'
	lock_back_sound = 'sound/weapons/gun/pistol/slide_lock.ogg'
	bolt_drop_sound = 'sound/weapons/gun/pistol/slide_drop.ogg'
	can_flashlight = TRUE
	dirt_modifier = 1
	emp_damageable = TRUE
	fire_delay = 1.90
	company_flag = COMPANY_CANTALAN

/obj/item/ammo_box/magazine/multi_sprite/g17
	name = "9x19mm peacekeeper double stack magazine"
	icon = 'modular_skyrat/modules/sec_haul/icons/guns/mags.dmi'
	icon_state = "g17"
	ammo_type = /obj/item/ammo_casing/b9mm
	caliber = CALIBER_9MMPEACE
	max_ammo = 17
	multiple_sprites = AMMO_BOX_FULL_EMPTY_BASIC

/obj/item/ammo_box/magazine/multi_sprite/g17/hp
	ammo_type = /obj/item/ammo_casing/b9mm/hp
	round_type = AMMO_TYPE_HOLLOWPOINT

/obj/item/ammo_box/magazine/multi_sprite/g17/ihdf
	ammo_type = /obj/item/ammo_casing/b9mm/ihdf
	round_type = AMMO_TYPE_IHDF

/obj/item/ammo_box/magazine/multi_sprite/g17/rubber
	ammo_type = /obj/item/ammo_casing/b9mm/rubber
	round_type = AMMO_TYPE_RUBBER

/obj/item/gun/ballistic/automatic/pistol/g18
	name = "\improper GK-18"
	desc = "A CFA-made burst firing cheap polymer pistol chambered in 9x19mm Peacekeeper. Its heavy duty barrel affects firerate."
	icon = 'modular_skyrat/modules/sec_haul/icons/guns/glock.dmi'
	icon_state = "glock_spec"
	w_class = WEIGHT_CLASS_NORMAL
	mag_type = /obj/item/ammo_box/magazine/multi_sprite/g18
	can_suppress = FALSE
	fire_sound = 'sound/weapons/gun/pistol/shot_alt.ogg'
	rack_sound = 'sound/weapons/gun/pistol/rack.ogg'
	lock_back_sound = 'sound/weapons/gun/pistol/slide_lock.ogg'
	bolt_drop_sound = 'sound/weapons/gun/pistol/slide_drop.ogg'
	burst_size = 3
	fire_delay = 2.10
	spread = 8
	mag_display = FALSE
	mag_display_ammo = FALSE
	can_flashlight = TRUE
	company_flag = COMPANY_CANTALAN
	dirt_modifier = 1

/obj/item/ammo_box/magazine/multi_sprite/g18
	name = "extended 9x19mm magazine"
	icon = 'modular_skyrat/modules/sec_haul/icons/guns/mags.dmi'
	icon_state = "g18"
	ammo_type = /obj/item/ammo_casing/b9mm
	caliber = CALIBER_9MMPEACE
	max_ammo = 33
	multiple_sprites = AMMO_BOX_FULL_EMPTY_BASIC

/obj/item/ammo_box/magazine/multi_sprite/g18/hp
	ammo_type = /obj/item/ammo_casing/b9mm/hp
	round_type = AMMO_TYPE_HOLLOWPOINT

/obj/item/ammo_box/magazine/multi_sprite/g18/ihdf
	ammo_type = /obj/item/ammo_casing/b9mm/ihdf
	round_type = AMMO_TYPE_IHDF

/obj/item/ammo_box/magazine/multi_sprite/g18/rubber
	ammo_type = /obj/item/ammo_casing/b9mm/rubber
	round_type = AMMO_TYPE_RUBBER

/obj/item/gun/ballistic/automatic/pistol/g17/mesa
	name = "\improper Glock-17"
	desc = "A weapon from bygone times, and this is the exact 21st century version. In fact, even more reliable. Chambered in 9x19mm Peacekeeper."
	icon = 'modular_skyrat/modules/sec_haul/icons/guns/glock.dmi'
	icon_state = "glock_mesa"
	w_class = WEIGHT_CLASS_NORMAL
	mag_type = /obj/item/ammo_box/magazine/multi_sprite/g17
	can_suppress = FALSE
	fire_sound = 'modular_skyrat/master_files/sound/weapons/glock17_fire.ogg'
	rack_sound = 'sound/weapons/gun/pistol/rack.ogg'
	lock_back_sound = 'sound/weapons/gun/pistol/slide_lock.ogg'
	bolt_drop_sound = 'sound/weapons/gun/pistol/slide_drop.ogg'
	realistic = TRUE
	can_flashlight = TRUE
	dirt_modifier = 0.2
	emp_damageable = FALSE
	fire_delay = 0.9
	company_flag = null

////////////////PDH 40x32
/obj/item/gun/ballistic/automatic/pistol/pdh
	name = "\improper PDH-6H 'Osprey'"
	desc = "A modern ballistics sidearm, used primarily by the military, however this one has had a paintjob to match command. It's chambered in 12.7x30mm."
	icon = 'modular_skyrat/modules/sec_haul/icons/guns/pdh.dmi'
	righthand_file = 'modular_skyrat/modules/sec_haul/icons/guns/inhands/righthand40x32.dmi'
	lefthand_file = 'modular_skyrat/modules/sec_haul/icons/guns/inhands/lefthand40x32.dmi'
	icon_state = "pdh"
	inhand_icon_state = "pdh"
	w_class = WEIGHT_CLASS_NORMAL
	mag_type = /obj/item/ammo_box/magazine/multi_sprite/pdh
	can_suppress = FALSE
	fire_sound = 'modular_skyrat/modules/sec_haul/sound/hpistol_fire.ogg'
	rack_sound = 'sound/weapons/gun/pistol/rack.ogg'
	lock_back_sound = 'sound/weapons/gun/pistol/slide_lock.ogg'
	bolt_drop_sound = 'sound/weapons/gun/pistol/slide_drop.ogg'
	realistic = TRUE
	can_flashlight = TRUE
	emp_damageable = TRUE
	company_flag = COMPANY_ARMADYNE

/obj/item/gun/ballistic/automatic/pistol/pdh/alt
	name = "\improper PDH-6C 'SOCOM'"
	desc = "A prestigious 12mm sidearm normally seen in the hands of SolFed special operation units due to its reliable and time-tested design. Now's one of those times that pays to be the strong, silent type."
	icon_state = "pdh_alt"
	w_class = WEIGHT_CLASS_NORMAL
	mag_type = /obj/item/ammo_box/magazine/multi_sprite/pdh
	can_suppress = FALSE
	fire_sound = 'sound/weapons/gun/pistol/shot_suppressed.ogg'
	fire_delay = 8
	fire_sound_volume = 30
	spread = 1
	realistic = TRUE
	dirt_modifier = 0.1
	can_flashlight = TRUE
	emp_damageable = FALSE

/obj/item/ammo_box/magazine/multi_sprite/pdh
	name = "12.7x30mm pistol magazine"
	icon = 'modular_skyrat/modules/sec_haul/icons/guns/mags.dmi'
	icon_state = "pdh"
	ammo_type = /obj/item/ammo_casing/b12mm
	caliber = CALIBER_12MM
	max_ammo = 8
	multiple_sprites = AMMO_BOX_FULL_EMPTY_BASIC
	possible_types = list("lethal" = AMMO_TYPE_LETHAL, "hollowpoint" = AMMO_TYPE_HOLLOWPOINT, "rubber" = AMMO_TYPE_RUBBER)

/obj/item/ammo_box/magazine/multi_sprite/pdh/hp
	ammo_type = /obj/item/ammo_casing/b12mm/hp
	round_type = AMMO_TYPE_HOLLOWPOINT

/obj/item/ammo_box/magazine/multi_sprite/pdh/rubber
	ammo_type = /obj/item/ammo_casing/b12mm/rubber
	round_type = AMMO_TYPE_RUBBER

/obj/item/gun/ballistic/automatic/pistol/pdh/corpo
	name = "\improper PDH-6M 'Corpo'"
	desc = "A prestigious ballistic sidearm, from Armadyne's military division, normally given to corporate agents. It has a 3 round burst mode and uses .357 Magnum ammunition."
	icon_state = "pdh_corpo"
	w_class = WEIGHT_CLASS_NORMAL
	mag_type = /obj/item/ammo_box/magazine/multi_sprite/pdh_corpo
	can_suppress = FALSE
	fire_sound = 'modular_skyrat/modules/sec_haul/sound/hpistol_fire.ogg'
	burst_size = 3
	fire_delay = 2
	spread = 5
	realistic = TRUE
	dirt_modifier = 0.1
	can_flashlight = TRUE
	company_flag = COMPANY_ARMADYNE

/obj/item/ammo_box/magazine/multi_sprite/pdh_corpo
	name = ".357 pistol magazine"
	icon = 'modular_skyrat/modules/sec_haul/icons/guns/mags.dmi'
	icon_state = "pdh"
	ammo_type = /obj/item/ammo_casing/a357
	caliber = "357"
	max_ammo = 14
	multiple_sprites = AMMO_BOX_FULL_EMPTY_BASIC
	possible_types = list("lethal" = AMMO_TYPE_LETHAL)


///////////////////////////PDH PEACEKEEPER
/obj/item/gun/ballistic/automatic/pistol/pdh/peacekeeper
	name = "\improper PDH-6B"
	desc = "A modern ballistic sidearm, used primarily by law enforcement, chambered in 9x19mm Peacekeeper."
	fire_delay = 1.95
	icon_state = "pdh_peacekeeper"
	mag_type = /obj/item/ammo_box/magazine/multi_sprite/pdh_peacekeeper
	fire_sound = 'modular_skyrat/modules/sec_haul/sound/pistol_fire.ogg'
	realistic = TRUE
	can_flashlight = TRUE
	company_flag = COMPANY_ARMADYNE

/obj/item/ammo_box/magazine/multi_sprite/pdh_peacekeeper
	name = "9x19mm PDH-6B polymer magazine"
	icon = 'modular_skyrat/modules/sec_haul/icons/guns/mags.dmi'
	icon_state = "pdh"
	ammo_type = /obj/item/ammo_casing/b9mm
	caliber = CALIBER_9MMPEACE
	max_ammo = 16
	multiple_sprites = AMMO_BOX_FULL_EMPTY_BASIC

/obj/item/ammo_box/magazine/multi_sprite/pdh_peacekeeper/hp
	ammo_type = /obj/item/ammo_casing/b9mm/hp
	round_type = AMMO_TYPE_HOLLOWPOINT

/obj/item/ammo_box/magazine/multi_sprite/pdh_peacekeeper/ihdf
	ammo_type = /obj/item/ammo_casing/b9mm/ihdf
	round_type = AMMO_TYPE_IHDF

/obj/item/ammo_box/magazine/multi_sprite/pdh_peacekeeper/rubber
	ammo_type = /obj/item/ammo_casing/b9mm/rubber
	round_type = AMMO_TYPE_RUBBER

///////////////////////LADON 40x32
/obj/item/gun/ballistic/automatic/pistol/ladon
	name = "\improper Ladon pistol"
	desc = "Modern handgun based off the PDH series, chambered in 10mm Auto."
	icon = 'modular_skyrat/modules/sec_haul/icons/guns/ladon.dmi'
	righthand_file = 'modular_skyrat/modules/sec_haul/icons/guns/inhands/righthand40x32.dmi'
	lefthand_file = 'modular_skyrat/modules/sec_haul/icons/guns/inhands/lefthand40x32.dmi'
	icon_state = "ladon"
	inhand_icon_state = "ladon"
	w_class = WEIGHT_CLASS_NORMAL
	mag_type = /obj/item/ammo_box/magazine/multi_sprite/ladon
	can_suppress = FALSE
	fire_sound = 'modular_skyrat/modules/sec_haul/sound/pistol_fire.ogg'
	rack_sound = 'sound/weapons/gun/pistol/rack.ogg'
	lock_back_sound = 'sound/weapons/gun/pistol/slide_lock.ogg'
	bolt_drop_sound = 'sound/weapons/gun/pistol/slide_drop.ogg'
	realistic = TRUE
	can_flashlight = TRUE
	dirt_modifier = 0.8
	emp_damageable = TRUE
	fire_delay = 4.20
	company_flag = COMPANY_ARMADYNE

/obj/item/ammo_box/magazine/multi_sprite/ladon
	name = "10mm Auto pistol magazine"
	icon = 'modular_skyrat/modules/sec_haul/icons/guns/mags.dmi'
	icon_state = "pdh"
	ammo_type = /obj/item/ammo_casing/b10mm
	caliber = CALIBER_10MMAUTO
	max_ammo = 12
	multiple_sprites = AMMO_BOX_FULL_EMPTY_BASIC

/obj/item/ammo_box/magazine/multi_sprite/ladon/hp
	ammo_type = /obj/item/ammo_casing/b10mm/hp
	round_type = AMMO_TYPE_HOLLOWPOINT

/obj/item/ammo_box/magazine/multi_sprite/ladon/ihdf
	ammo_type = /obj/item/ammo_casing/b10mm/ihdf
	round_type = AMMO_TYPE_IHDF

/obj/item/ammo_box/magazine/multi_sprite/ladon/rubber
	ammo_type = /obj/item/ammo_casing/b10mm/rubber
	round_type = AMMO_TYPE_RUBBER

/////////////////////MAKAROV
/obj/item/gun/ballistic/automatic/pistol/makarov
	name = "\improper R-C 'Makarov'"
	desc = "A mediocre pocket-sized handgun of seemingly Russian origin, chambered in 10mm Auto."
	icon = 'modular_skyrat/modules/sec_haul/icons/guns/makarov.dmi'
	icon_state = "makarov"
	w_class = WEIGHT_CLASS_SMALL
	mag_type = /obj/item/ammo_box/magazine/multi_sprite/makarov
	can_suppress = TRUE
	rack_sound = 'sound/weapons/gun/pistol/rack.ogg'
	lock_back_sound = 'sound/weapons/gun/pistol/slide_lock.ogg'
	bolt_drop_sound = 'sound/weapons/gun/pistol/slide_drop.ogg'
	dirt_modifier = 0.75
	emp_damageable = TRUE
	company_flag = COMPANY_IZHEVSK

/obj/item/ammo_box/magazine/multi_sprite/makarov
	name = "small 10mm Auto pistol magazine"
	icon = 'modular_skyrat/modules/sec_haul/icons/guns/mags.dmi'
	icon_state = "pdh"
	ammo_type = /obj/item/ammo_casing/b10mm
	caliber = CALIBER_10MMAUTO
	max_ammo = 6
	multiple_sprites = AMMO_BOX_FULL_EMPTY_BASIC

/obj/item/ammo_box/magazine/multi_sprite/makarov/hp
	ammo_type = /obj/item/ammo_casing/b10mm/hp
	round_type = AMMO_TYPE_HOLLOWPOINT

/obj/item/ammo_box/magazine/multi_sprite/makarov/ihdf
	ammo_type = /obj/item/ammo_casing/b10mm/ihdf
	round_type = AMMO_TYPE_IHDF

/obj/item/ammo_box/magazine/multi_sprite/makarov/rubber
	ammo_type = /obj/item/ammo_casing/b10mm/rubber
	round_type = AMMO_TYPE_RUBBER

////////////////////////////MK58

/obj/item/gun/ballistic/automatic/pistol/mk58
	name = "\improper MK-58"
	desc = "A modern 9mm Peacekeeper handgun with an olive polymer lower frame. Looks like a generic 21st century military sidearm."
	icon = 'modular_skyrat/modules/sec_haul/icons/guns/mk58.dmi'
	icon_state = "mk58"
	w_class = WEIGHT_CLASS_NORMAL
	mag_type = /obj/item/ammo_box/magazine/multi_sprite/mk58
	can_suppress = FALSE
	fire_sound = 'modular_skyrat/modules/sec_haul/sound/pistol_fire.ogg'
	rack_sound = 'sound/weapons/gun/pistol/rack.ogg'
	lock_back_sound = 'sound/weapons/gun/pistol/slide_lock.ogg'
	bolt_drop_sound = 'sound/weapons/gun/pistol/slide_drop.ogg'
	realistic = TRUE
	dirt_modifier = 0.4
	emp_damageable = TRUE
	company_flag = COMPANY_ARMADYNE

/obj/item/ammo_box/magazine/multi_sprite/mk58
	name = "outdated 9x19mm magazine"
	icon = 'modular_skyrat/modules/sec_haul/icons/guns/mags.dmi'
	icon_state = "g17"
	ammo_type = /obj/item/ammo_casing/b9mm
	caliber = CALIBER_9MMPEACE
	max_ammo = 12
	multiple_sprites = AMMO_BOX_FULL_EMPTY_BASIC

/obj/item/ammo_box/magazine/multi_sprite/mk58/hp
	ammo_type = /obj/item/ammo_casing/b9mm/hp
	round_type = AMMO_TYPE_HOLLOWPOINT

/obj/item/ammo_box/magazine/multi_sprite/mk58/ihdf
	ammo_type = /obj/item/ammo_casing/b9mm/ihdf
	round_type = AMMO_TYPE_IHDF

/obj/item/ammo_box/magazine/multi_sprite/mk58/rubber
	ammo_type = /obj/item/ammo_casing/b9mm/rubber
	round_type = AMMO_TYPE_RUBBER

//////////////////////FIREFLY
/obj/item/gun/ballistic/automatic/pistol/firefly
	name = "\improper P-92 'Firefly'"
	desc = "A 9mm (Peacekeeper) sidearm made by Armadyne's Medical Directive, with a heavy front for weak wrists. A small warning label on the back says it's not fit for surgical work."
	icon = 'modular_skyrat/modules/sec_haul/icons/guns/firefly.dmi'
	righthand_file = 'modular_skyrat/modules/sec_haul/icons/guns/inhands/righthand.dmi'
	lefthand_file = 'modular_skyrat/modules/sec_haul/icons/guns/inhands/lefthand.dmi'
	icon_state = "firefly"
	inhand_icon_state = "firefly"
	fire_delay = 1.95
	w_class = WEIGHT_CLASS_NORMAL
	mag_type = /obj/item/ammo_box/magazine/multi_sprite/firefly
	can_suppress = FALSE
	realistic = TRUE
	can_flashlight = TRUE
	emp_damageable = TRUE
	company_flag = COMPANY_ARMADYNE

/obj/item/ammo_box/magazine/multi_sprite/firefly
	name = "9x19mm special pistol magazine"
	icon = 'modular_skyrat/modules/sec_haul/icons/guns/mags.dmi'
	icon_state = "pdh"
	ammo_type = /obj/item/ammo_casing/b9mm
	caliber = CALIBER_9MMPEACE
	max_ammo = 12
	multiple_sprites = AMMO_BOX_FULL_EMPTY_BASIC

/obj/item/ammo_box/magazine/multi_sprite/firefly/hp
	ammo_type = /obj/item/ammo_casing/b9mm/hp
	round_type = AMMO_TYPE_HOLLOWPOINT

/obj/item/ammo_box/magazine/multi_sprite/firefly/rubber
	ammo_type = /obj/item/ammo_casing/b9mm/rubber
	round_type = AMMO_TYPE_RUBBER

/obj/item/ammo_box/magazine/multi_sprite/firefly/ihdf
	ammo_type = /obj/item/ammo_casing/b9mm/ihdf
	round_type = AMMO_TYPE_IHDF

/////////////////////CROON 40x32
/obj/item/gun/ballistic/automatic/croon
	name = "\improper DT-4 'Croon'"
	desc = "A low-quality 6.3mm reproduction of a popular SMG model, jams like a bitch. Although crude and unofficial, it gets the job done."
	icon = 'modular_skyrat/modules/sec_haul/icons/guns/croon.dmi'
	righthand_file = 'modular_skyrat/modules/sec_haul/icons/guns/inhands/righthand40x32.dmi'
	lefthand_file = 'modular_skyrat/modules/sec_haul/icons/guns/inhands/lefthand40x32.dmi'
	icon_state = "croon"
	inhand_icon_state = "croon"
	w_class = WEIGHT_CLASS_NORMAL
	mag_type = /obj/item/ammo_box/magazine/multi_sprite/croon
	can_suppress = FALSE
	fire_sound = 'sound/weapons/gun/smg/shot.ogg'
	rack_sound = 'sound/weapons/gun/smg/smgrack.ogg'
	lock_back_sound = 'sound/weapons/gun/pistol/slide_lock.ogg'
	bolt_drop_sound = 'sound/weapons/gun/pistol/slide_drop.ogg'
	burst_size = 3
	fire_delay = 2.10
	spread = 25
	mag_display = FALSE
	mag_display_ammo = FALSE
	fire_select_modes = list(SELECT_SEMI_AUTOMATIC, SELECT_BURST_SHOT)
	realistic = TRUE
	dirt_modifier = 1.7 //the croon is an EXTRA piece of shit
	emp_damageable = TRUE
	company_flag = COMPANY_IZHEVSK

/obj/item/ammo_box/magazine/multi_sprite/croon
	name = "6.3mm SMG magazine"
	icon = 'modular_skyrat/modules/sec_haul/icons/guns/mags.dmi'
	icon_state = "croon"
	ammo_type = /obj/item/ammo_casing/b6mm
	caliber = CALIBER_6MM
	max_ammo = 15
	multiple_sprites = AMMO_BOX_FULL_EMPTY_BASIC
	possible_types = list(AMMO_TYPE_LETHAL, AMMO_TYPE_RUBBER, AMMO_TYPE_IHDF)

/obj/item/ammo_box/magazine/multi_sprite/croon/rubber
	ammo_type = /obj/item/ammo_casing/b6mm/rubber
	round_type = AMMO_TYPE_RUBBER

/obj/item/ammo_box/magazine/multi_sprite/croon/ihdf
	ammo_type = /obj/item/ammo_casing/b6mm/ihdf
	round_type = AMMO_TYPE_IHDF

///////////////////////////Dozer
/obj/item/gun/ballistic/automatic/dozer
	name = "\improper DZR-9 'Dozer'"
	desc = "The DZR-9, a notorious 9x25mm PDW that lives up to its nickname."
	icon = 'modular_skyrat/modules/sec_haul/icons/guns/dozer.dmi'
	righthand_file = 'modular_skyrat/modules/sec_haul/icons/guns/inhands/righthand.dmi'
	lefthand_file = 'modular_skyrat/modules/sec_haul/icons/guns/inhands/lefthand.dmi'
	icon_state = "dozer"
	inhand_icon_state = "dozer"
	w_class = WEIGHT_CLASS_NORMAL
	mag_type = /obj/item/ammo_box/magazine/multi_sprite/dozer
	can_suppress = TRUE
	mag_display = FALSE
	mag_display_ammo = FALSE
	burst_size = 2
	fire_delay = 1.90
	fire_select_modes = list(SELECT_SEMI_AUTOMATIC, SELECT_BURST_SHOT)
	fire_sound = 'sound/weapons/gun/rifle/shot.ogg'
	rack_sound = 'sound/weapons/gun/smg/smgrack.ogg'
	lock_back_sound = 'sound/weapons/gun/pistol/slide_lock.ogg'
	bolt_drop_sound = 'sound/weapons/gun/pistol/slide_drop.ogg'
	realistic = TRUE
	emp_damageable = TRUE
	company_flag = COMPANY_ARMADYNE

/obj/item/ammo_box/magazine/multi_sprite/dozer
	name = "9x25mm small PDW magazine"
	icon = 'modular_skyrat/modules/sec_haul/icons/guns/mags.dmi'
	icon_state = "croon"
	ammo_type = /obj/item/ammo_casing/c9mm
	caliber = CALIBER_9MM
	max_ammo = 8
	multiple_sprites = AMMO_BOX_FULL_EMPTY_BASIC
	possible_types = list(AMMO_TYPE_LETHAL, AMMO_TYPE_HOLLOWPOINT, AMMO_TYPE_INCENDIARY, AMMO_TYPE_AP)

/obj/item/ammo_box/magazine/multi_sprite/dozer/hp
	ammo_type = /obj/item/ammo_casing/c9mm/hp
	round_type = AMMO_TYPE_HOLLOWPOINT

/obj/item/ammo_box/magazine/multi_sprite/dozer/ap
	ammo_type = /obj/item/ammo_casing/c9mm/ap
	round_type = AMMO_TYPE_AP

/obj/item/ammo_box/magazine/multi_sprite/dozer/inc
	ammo_type = /obj/item/ammo_casing/c9mm/fire
	round_type = AMMO_TYPE_INCENDIARY

/////////////////DMR 40x32
/obj/item/gun/ballistic/automatic/dmr
	name = "\improper M557 'Ripper' Gen-2"
	desc = "An incredibly powerful marksman rifle with an internal stabilization gymbal. It's chambered in .577 Snider."
	icon = 'modular_skyrat/modules/sec_haul/icons/guns/dmr.dmi'
	icon_state = "dmr"
	worn_icon = 'modular_skyrat/modules/sec_haul/icons/guns/dmr.dmi'
	worn_icon_state = "dmr_worn"
	righthand_file = 'modular_skyrat/modules/sec_haul/icons/guns/inhands/righthand40x32.dmi'
	lefthand_file = 'modular_skyrat/modules/sec_haul/icons/guns/inhands/lefthand40x32.dmi'
	inhand_icon_state = "dmr"
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_BELT | ITEM_SLOT_SUITSTORE
	mag_type = /obj/item/ammo_box/magazine/dmr
	fire_delay = 1.7
	can_suppress = FALSE
	burst_size = 3
	can_bayonet = FALSE
	mag_display = TRUE
	realistic = TRUE
	fire_sound_volume = 60
	fire_sound = 'modular_skyrat/modules/sec_haul/sound/sniper_fire.ogg'
	company_flag = COMPANY_ARMADYNE

/obj/item/ammo_box/magazine/dmr
	name = ".577 DMR Magazine"
	icon = 'modular_skyrat/modules/sec_haul/icons/guns/mags.dmi'
	icon_state = "dmr"
	ammo_type = /obj/item/ammo_casing/b577
	caliber = CALIBER_B577
	max_ammo = 25
	multiple_sprites = AMMO_BOX_FULL_EMPTY_BASIC

/////////////////////////////////////////////ZETA
/obj/item/gun/ballistic/revolver/zeta
	name = "\improper Zeta-6 'Spurchamber'"
	desc = "A fairly common double-action six-shooter chambered for 10mm Magnum."
	icon = 'modular_skyrat/modules/sec_haul/icons/guns/zeta.dmi'
	righthand_file = 'modular_skyrat/modules/sec_haul/icons/guns/inhands/righthand.dmi'
	lefthand_file = 'modular_skyrat/modules/sec_haul/icons/guns/inhands/lefthand.dmi'
	icon_state = "zeta"
	inhand_icon_state = "zeta"
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/zeta
	fire_sound = 'modular_skyrat/modules/sec_haul/sound/revolver_fire.ogg'
	fire_delay = 3
	company_flag = COMPANY_BOLT

/obj/item/ammo_box/magazine/internal/cylinder/zeta
	name = "10mm Auto revolver cylinder"
	ammo_type = /obj/item/ammo_casing/c10mm
	caliber = CALIBER_10MM
	max_ammo = 6

/obj/item/ammo_box/revolver/zeta
	name = "10mm Magnum speedloader"
	desc = "Designed to quickly reload the Zeta-6."
	icon_state = "speedloader"
	ammo_type = /obj/item/ammo_casing/c10mm
	max_ammo = 6
	multiple_sprites = AMMO_BOX_FULL_EMPTY_BASIC
	caliber = CALIBER_10MM
	start_empty = TRUE

/obj/item/ammo_box/revolver/zeta/full
	start_empty = FALSE

/////////////////////////////////////////////////////////REVOLUTION
/obj/item/gun/ballistic/revolver/revolution
	name = "\improper Revolution-8 'Spurmaster'"
	desc = "The Zeta 6's distant cousin, sporting an eight-round competition grade cylinder chambered for 9mm Peacekeeper."
	icon = 'modular_skyrat/modules/sec_haul/icons/guns/revolution.dmi'
	righthand_file = 'modular_skyrat/modules/sec_haul/icons/guns/inhands/righthand.dmi'
	lefthand_file = 'modular_skyrat/modules/sec_haul/icons/guns/inhands/lefthand.dmi'
	icon_state = "revolution"
	inhand_icon_state = "revolution"
	mag_type = /obj/item/ammo_box/magazine/internal/cylinder/revolution
	fire_sound = 'modular_skyrat/modules/sec_haul/sound/revolver_fire.ogg'
	fire_delay = 1.90
	company_flag = COMPANY_BOLT

/obj/item/ammo_box/magazine/internal/cylinder/revolution
	name = "revolver cylinder"
	ammo_type = /obj/item/ammo_casing/b9mm
	caliber = CALIBER_9MMPEACE
	max_ammo = 8

/obj/item/ammo_box/revolver/revolution
	name = "9x19mm speedloader"
	desc = "Designed to quickly reload revolvers."
	icon_state = "speedloader"
	ammo_type = /obj/item/ammo_casing/b9mm
	max_ammo = 8
	multiple_sprites = AMMO_BOX_FULL_EMPTY_BASIC
	caliber = CALIBER_9MMPEACE
	start_empty = TRUE

/obj/item/ammo_box/revolver/revolution/full
	start_empty = FALSE

/////////////////SMARTGUN 40x32
/obj/item/gun/ballistic/automatic/smartgun
	name = "\improper OP-15 'S.M.A.R.T.' Rifle"
	desc = "Suppressive Manual Action Reciprocating Taser rifle. A modified version of an Armadyne heavy machine gun fitted to fire miniature shock-bolts."
	icon = 'modular_skyrat/modules/sec_haul/icons/guns/smartgun.dmi'
	righthand_file = 'modular_skyrat/modules/sec_haul/icons/guns/inhands/righthand40x32.dmi'
	lefthand_file = 'modular_skyrat/modules/sec_haul/icons/guns/inhands/lefthand40x32.dmi'
	icon_state = "smartgun"
	w_class = WEIGHT_CLASS_HUGE
	weapon_weight = WEAPON_HEAVY
	slot_flags = ITEM_SLOT_BACK
	inhand_icon_state = "smartgun_worn"
	worn_icon = 'modular_skyrat/modules/sec_haul/icons/guns/smartgun.dmi'
	worn_icon_state = "smartgun_worn"
	mag_type = /obj/item/ammo_box/magazine/smartgun
	actions_types = null
	can_suppress = FALSE
	can_bayonet = FALSE
	mag_display = TRUE
	mag_display_ammo = TRUE
	empty_alarm = TRUE
	tac_reloads = FALSE
	bolt_type = BOLT_TYPE_STANDARD
	semi_auto = FALSE
	fire_sound = 'modular_skyrat/modules/sec_haul/sound/chaingun_fire.ogg'
	rack_sound = 'modular_skyrat/modules/sec_haul/sound/chaingun_cock.ogg'
	lock_back_sound = 'modular_skyrat/modules/sec_haul/sound/chaingun_open.ogg'
	bolt_drop_sound = 'modular_skyrat/modules/sec_haul/sound/chaingun_cock.ogg'
	load_sound = 'modular_skyrat/modules/sec_haul/sound/chaingun_magin.ogg'
	load_empty_sound = 'modular_skyrat/modules/sec_haul/sound/chaingun_magin.ogg'
	eject_sound = 'modular_skyrat/modules/sec_haul/sound/chaingun_magout.ogg'
	load_empty_sound = 'modular_skyrat/modules/sec_haul/sound/chaingun_magout.ogg'
	var/recharge_time = 5 SECONDS
	var/recharging = FALSE
	company_flag = COMPANY_ARMADYNE

/obj/item/gun/ballistic/automatic/smartgun/process_chamber()
	. = ..()
	recharging = TRUE
	addtimer(CALLBACK(src, .proc/recharge), recharge_time)

/obj/item/gun/ballistic/automatic/smartgun/proc/recharge()
	recharging = FALSE
	playsound(src, 'sound/weapons/kenetic_reload.ogg', 60, 1)

/obj/item/gun/ballistic/automatic/smartgun/can_shoot()
	. = ..()
	if(recharging)
		return FALSE

/obj/item/gun/ballistic/automatic/smartgun/update_icon()
	. = ..()
	if(!magazine)
		icon_state = "smartgun_open"
	else
		icon_state = "smartgun_closed"

/obj/item/ammo_box/magazine/smartgun
	name = "rail rifle magazine"
	icon = 'modular_skyrat/modules/sec_haul/icons/guns/mags.dmi'
	icon_state = "smartgun"
	ammo_type = /obj/item/ammo_casing/smartgun
	caliber = "smartgun"
	max_ammo = 5
	multiple_sprites = AMMO_BOX_PER_BULLET

/obj/item/gun/ballistic/automatic/smartgun/nomag
	spawnwithmagazine = FALSE

/obj/item/gun/ballistic/automatic/smartgun/scoped
	name = "\improper OP-10 'S.M.A.R.T.' Rifle";
	desc = "Suppressive Manual Action Reciprocating Taser rifle. A gauss rifle fitted to fire miniature shock-bolts. Looks like this one is prety heavy, but it has a scope on it.";
	recharge_time = 6 SECONDS;
	recoil = 3;
	slowdown = 0.25;

/obj/item/gun/ballistic/automatic/smartgun/scoped/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/scope, range_modifier = 1.5)


/obj/structure/closet/secure_closet/smartgun
	name = "smartgun locker"
	req_access = list(ACCESS_ARMORY)
	icon_state = "shotguncase"

/obj/structure/closet/secure_closet/smartgun/PopulateContents()
	. = ..()
	new /obj/item/gun/ballistic/automatic/smartgun/nomag(src)
	new /obj/item/ammo_box/magazine/smartgun(src)
	new /obj/item/ammo_box/magazine/smartgun(src)
	new /obj/item/ammo_box/magazine/smartgun(src)

//////////////////////////////////////////////////////////
/////////////////KRAUT SPACE MAGIC G11////////////////////
//////////////////////////////////////////////////////////

/obj/item/gun/ballistic/automatic/g11
	name = "\improper G11 K-490"
	desc = "An outdated german caseless battle rifle that has been revised countless times during the late 2400s. Takes 4.73x33mm toploaded magazines."
	icon = 'modular_skyrat/modules/sec_haul/icons/guns/g11.dmi'
	righthand_file = 'modular_skyrat/modules/sec_haul/icons/guns/inhands/righthand.dmi'
	lefthand_file = 'modular_skyrat/modules/sec_haul/icons/guns/inhands/lefthand.dmi'
	icon_state = "g11"
	inhand_icon_state = "g11"
	worn_icon = 'modular_skyrat/modules/sec_haul/icons/guns/g11.dmi'
	worn_icon_state = "g11_worn"
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_BELT | ITEM_SLOT_OCLOTHING
	mag_type = /obj/item/ammo_box/magazine/multi_sprite/g11
	can_suppress = FALSE
	burst_size = 3
	fire_delay = 0.5
	spread = 10
	mag_display = TRUE
	mag_display_ammo = TRUE
	realistic = TRUE
	fire_sound = 'modular_skyrat/modules/sec_haul/sound/ltrifle_fire.ogg'
	emp_damageable = FALSE
	can_bayonet = TRUE
	can_flashlight = TRUE
	dirt_modifier = 0.1
	company_flag = COMPANY_OLDARMS

/obj/item/ammo_box/magazine/multi_sprite/g11
	name = "4.73x33mm top-loader magazine"
	icon = 'modular_skyrat/modules/sec_haul/icons/guns/mags.dmi'
	icon_state = "g11"
	ammo_type = /obj/item/ammo_casing/caseless/b473
	caliber = CALIBER_473MM
	max_ammo = 50
	multiple_sprites = AMMO_BOX_FULL_EMPTY_BASIC

/obj/item/ammo_box/magazine/multi_sprite/g11/hp
	ammo_type = /obj/item/ammo_casing/caseless/b473/hp
	round_type = AMMO_TYPE_HOLLOWPOINT

/obj/item/ammo_box/magazine/multi_sprite/g11/ihdf
	ammo_type = /obj/item/ammo_casing/caseless/b473/ihdf
	round_type = AMMO_TYPE_IHDF

/////////////////////////////////////////////////
//////////////////SHOTGUNS///////////////////////
/////////////////////////////////////////////////

/obj/item/gun/ballistic/shotgun/m23
	name = "\improper Model 23-37"
	desc = "An outdated police shotgun sporting an eight-round tube, chambered in twelve-gauge."
	icon_state = "riotshotgun"
	inhand_icon_state = "shotgun"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/m23
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_BELT | ITEM_SLOT_OCLOTHING
	company_flag = COMPANY_BOLT

/obj/item/ammo_box/magazine/internal/shot/m23
	name = "m23 shotgun internal magazine"
	caliber = CALIBER_SHOTGUN
	ammo_type = /obj/item/ammo_casing/shotgun/beanbag
	max_ammo = 8

/obj/item/gun/ballistic/shotgun/automatic/as2
	name = "\improper M2 Auto-Shotgun"
	desc = "A semi-automatic twelve-gauge shotgun with a four-round internal tube."
	icon = 'modular_skyrat/modules/aesthetics/guns/icons/guns.dmi'
	icon_state = "as2"
	worn_icon = 'modular_skyrat/modules/aesthetics/guns/icons/guns_back.dmi'
	lefthand_file = 'modular_skyrat/modules/aesthetics/guns/icons/guns_lefthand.dmi'
	righthand_file = 'modular_skyrat/modules/aesthetics/guns/icons/guns_righthand.dmi'
	inhand_icon_state = "riot_shotgun"
	inhand_x_dimension = 32
	inhand_y_dimension = 32
	can_suppress = TRUE
	suppressed_sound = 'modular_skyrat/modules/aesthetics/guns/sound/suppressed_shotgun.ogg'
	suppressed_volume = 100
	vary_fire_sound = TRUE
	fire_sound = 'modular_skyrat/modules/aesthetics/guns/sound/shotgun_light.ogg'
	fire_delay = 5
	mag_type = /obj/item/ammo_box/magazine/internal/shot/as2
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_BELT | ITEM_SLOT_OCLOTHING
	company_flag = COMPANY_ARMADYNE

/obj/item/ammo_box/magazine/internal/shot/as2
	name = "shotgun internal magazine"
	caliber = CALIBER_SHOTGUN
	ammo_type = /obj/item/ammo_casing/shotgun
	max_ammo = 4

/obj/item/gun/ballistic/shotgun/sas14
	name = "\improper SAS-14"
	desc = "A semi-automatic shotgun with a five-round box magazine."
	icon =  'modular_skyrat/modules/sec_haul/icons/guns/sas14.dmi'
	icon_state = "sas14"
	inhand_icon_state = "shotgun"
	worn_icon_state = "shotgun"
	can_suppress = TRUE
	suppressed_sound = 'modular_skyrat/modules/aesthetics/guns/sound/suppressed_shotgun.ogg'
	suppressed_volume = 100
	vary_fire_sound = TRUE
	fire_sound = 'modular_skyrat/modules/sec_haul/sound/shotgun_bm.ogg'
	fire_delay = 5
	mag_type = /obj/item/ammo_box/magazine/sas14
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_BELT | ITEM_SLOT_OCLOTHING
	weapon_weight = WEAPON_MEDIUM
	burst_size = 1
	fire_select_modes = list(SELECT_SEMI_AUTOMATIC)
	semi_auto = TRUE
	internal_magazine = FALSE
	company_flag = COMPANY_ARMADYNE

/obj/item/ammo_box/magazine/sas14
	name = "14 Gauge box magazine"
	icon = 'modular_skyrat/modules/sec_haul/icons/guns/mags.dmi'
	icon_state = "sas14"
	multiple_sprites = AMMO_BOX_FULL_EMPTY_BASIC
	caliber = CALIBER_14GAUGE
	ammo_type = /obj/item/ammo_casing/s14gauge
	max_ammo = 5

//New SAS14 mags beyond here

/obj/item/ammo_box/magazine/sas14/empty
	start_empty = TRUE

/obj/item/ammo_box/magazine/sas14/beanbag
	ammo_type = /obj/item/ammo_casing/s14gauge/beanbag

/obj/item/ammo_box/magazine/sas14/buckshot
	ammo_type = /obj/item/ammo_casing/s14gauge/buckshot

/obj/item/ammo_box/magazine/sas14/rubbershot
	ammo_type = /obj/item/ammo_casing/s14gauge/rubbershot

/obj/item/ammo_box/magazine/sas14/stunslug
	ammo_type = /obj/item/ammo_casing/s14gauge/stunslug

/////////////////////////////////////////////////
///////////////Un-Goofed Guns////////////////////
/////////////////////////////////////////////////

/////////////////////NORWIND
/obj/item/gun/ballistic/automatic/norwind
	name = "\improper M112 'Norwind'"
	desc = "A rare M112 DMR rechambered to 12.7x30mm for peacekeeping work, it comes with a scope for medium-long range engagements. A bayonet lug is visible."
	icon = 'modular_skyrat/modules/sec_haul/icons/guns/norwind.dmi'
	righthand_file = 'modular_skyrat/modules/sec_haul/icons/guns/inhands/righthand.dmi'
	lefthand_file = 'modular_skyrat/modules/sec_haul/icons/guns/inhands/lefthand.dmi'
	worn_icon = 'modular_skyrat/modules/sec_haul/icons/guns/norwind.dmi'
	worn_icon_state = "norwind_worn"
	icon_state = "norwind"
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_BELT | ITEM_SLOT_OCLOTHING
	inhand_icon_state = "norwind"
	worn_icon = 'modular_skyrat/modules/sec_haul/icons/guns/norwind.dmi'
	worn_icon_state = "norwind_worn"
	alt_icons = TRUE
	alt_icon_state = "norwind_worn"
	mag_type = /obj/item/ammo_box/magazine/multi_sprite/norwind
	can_suppress = FALSE
	can_bayonet = TRUE
	mag_display = TRUE
	can_flashlight = TRUE
	mag_display_ammo = TRUE
	actions_types = null
	realistic = TRUE
	fire_sound = 'modular_skyrat/modules/sec_haul/sound/ltrifle_fire.ogg'
	emp_damageable = TRUE
	fire_select_modes = list(SELECT_SEMI_AUTOMATIC)
	burst_size = 1
	fire_delay = 10
	company_flag = COMPANY_ARMADYNE

/obj/item/gun/ballistic/automatic/norwind/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/scope, range_modifier = 1.75)

/obj/item/ammo_box/magazine/multi_sprite/norwind
	name = "12.7x30mm DMR Magazine"
	icon = 'modular_skyrat/modules/sec_haul/icons/guns/mags.dmi'
	icon_state = "norwind"
	ammo_type = /obj/item/ammo_casing/b12mm
	caliber = CALIBER_12MM
	max_ammo = 8
	multiple_sprites = AMMO_BOX_FULL_EMPTY_BASIC
	possible_types = list(AMMO_TYPE_LETHAL, AMMO_TYPE_HOLLOWPOINT, AMMO_TYPE_RUBBER)

/obj/item/ammo_box/magazine/multi_sprite/norwind/hp
	ammo_type = /obj/item/ammo_casing/b12mm/hp
	round_type = AMMO_TYPE_HOLLOWPOINT

/obj/item/ammo_box/magazine/multi_sprite/norwind/rubber
	ammo_type = /obj/item/ammo_casing/b12mm/rubber
	round_type = AMMO_TYPE_RUBBER

/////////////////////VINTOREZ
/obj/item/gun/ballistic/automatic/vintorez
	name = "\improper VKC 'Vintorez'"
	desc = "The VKC Vintorez is a lightweight integrally-suppressed scoped carbine usually employed in stealth operations. It was rechambered to 9x19mm for peacekeeping work."
	icon = 'modular_skyrat/modules/sec_haul/icons/guns/vintorez.dmi'
	righthand_file = 'modular_skyrat/modules/sec_haul/icons/guns/inhands/righthand.dmi'
	lefthand_file = 'modular_skyrat/modules/sec_haul/icons/guns/inhands/lefthand.dmi'
	icon_state = "vintorez"
	worn_icon = 'modular_skyrat/modules/sec_haul/icons/guns/norwind.dmi'
	worn_icon_state = "norwind_worn"
	alt_icons = TRUE
	alt_icon_state = "vintorez_worn"
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_BELT | ITEM_SLOT_OCLOTHING
	inhand_icon_state = "vintorez"
	mag_type = /obj/item/ammo_box/magazine/multi_sprite/vintorez
	suppressed = TRUE
	can_unsuppress = FALSE
	can_bayonet = FALSE
	mag_display = FALSE
	mag_display_ammo = FALSE
	realistic = TRUE
	burst_size = 2
	fire_delay = 4
	spread = 10
	fire_sound = 'sound/weapons/gun/smg/shot_suppressed.ogg'
	emp_damageable = TRUE
	company_flag = COMPANY_OLDARMS

/obj/item/gun/ballistic/automatic/vintorez/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/scope, range_modifier = 1.5)

/obj/item/ammo_box/magazine/multi_sprite/vintorez
	name = "9x19mm carbine magazine"
	icon = 'modular_skyrat/modules/sec_haul/icons/guns/mags.dmi'
	icon_state = "norwind"
	ammo_type = /obj/item/ammo_casing/b9mm
	caliber = CALIBER_9MMPEACE
	max_ammo = 20
	multiple_sprites = AMMO_BOX_FULL_EMPTY_BASIC

/obj/item/ammo_box/magazine/multi_sprite/vintorez/hp
	ammo_type = /obj/item/ammo_casing/b9mm/hp
	round_type = AMMO_TYPE_HOLLOWPOINT

/obj/item/ammo_box/magazine/multi_sprite/vintorez/ihdf
	ammo_type = /obj/item/ammo_casing/b9mm/ihdf
	round_type = AMMO_TYPE_IHDF

/obj/item/ammo_box/magazine/multi_sprite/vintorez/rubber
	ammo_type = /obj/item/ammo_casing/b9mm/rubber
	round_type = AMMO_TYPE_RUBBER

/////////////////////PCR

/obj/item/gun/ballistic/automatic/pcr
	name = "\improper PCR-9 SMG"
	desc = "An accurate, fast-firing SMG chambered in 9x19mm."
	icon = 'modular_skyrat/modules/sec_haul/icons/guns/pcr.dmi'
	righthand_file = 'modular_skyrat/modules/sec_haul/icons/guns/inhands/righthand.dmi'
	lefthand_file = 'modular_skyrat/modules/sec_haul/icons/guns/inhands/lefthand.dmi'
	worn_icon = 'modular_skyrat/modules/sec_haul/icons/guns/ostwind.dmi'
	worn_icon_state = "ostwind_worn"
	inhand_icon_state = "pcr"
	icon_state = "pcr"
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_BELT | ITEM_SLOT_OCLOTHING
	w_class = WEIGHT_CLASS_BULKY
	mag_type = /obj/item/ammo_box/magazine/multi_sprite/pcr
	fire_delay = 1.80
	can_suppress = FALSE
	burst_size = 5
	spread = 10
	can_bayonet = FALSE
	mag_display = TRUE
	mag_display_ammo = TRUE
	realistic = TRUE
	fire_sound = 'modular_skyrat/modules/sec_haul/sound/smg_fire.ogg'
	emp_damageable = TRUE
	can_flashlight = TRUE
	company_flag = COMPANY_BOLT

/obj/item/ammo_box/magazine/multi_sprite/pcr
	name = "9mm SMG magazine"
	icon = 'modular_skyrat/modules/sec_haul/icons/guns/mags.dmi'
	icon_state = "pcr"
	ammo_type = /obj/item/ammo_casing/b9mm
	caliber = CALIBER_9MMPEACE
	max_ammo = 32
	multiple_sprites = AMMO_BOX_FULL_EMPTY_BASIC

/obj/item/ammo_box/magazine/multi_sprite/pcr/hp
	ammo_type = /obj/item/ammo_casing/b9mm/hp
	round_type = AMMO_TYPE_HOLLOWPOINT

/obj/item/ammo_box/magazine/multi_sprite/pcr/ihdf
	ammo_type = /obj/item/ammo_casing/b9mm/ihdf
	round_type = AMMO_TYPE_IHDF

/obj/item/ammo_box/magazine/multi_sprite/pcr/rubber
	ammo_type = /obj/item/ammo_casing/b9mm/rubber
	round_type = AMMO_TYPE_RUBBER

/obj/item/gun/ballistic/automatic/pitbull
	name = "\improper Pitbull PDW"
	desc = "A sturdy personal defense weapon designed to fire 10mm Auto rounds."
	icon = 'modular_skyrat/modules/sec_haul/icons/guns/pitbull.dmi'
	righthand_file = 'modular_skyrat/modules/sec_haul/icons/guns/inhands/righthand.dmi'
	lefthand_file = 'modular_skyrat/modules/sec_haul/icons/guns/inhands/lefthand.dmi'
	inhand_icon_state = "pitbull"
	icon_state = "pitbull"
	worn_icon = 'modular_skyrat/modules/sec_haul/icons/guns/ostwind.dmi'
	worn_icon_state = "ostwind_worn"
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_BELT | ITEM_SLOT_OCLOTHING
	mag_type = /obj/item/ammo_box/magazine/multi_sprite/pitbull
	fire_delay = 4.20
	can_suppress = FALSE
	burst_size = 3
	spread = 15
	mag_display = TRUE
	mag_display_ammo = TRUE
	realistic = TRUE
	fire_sound = 'modular_skyrat/modules/sec_haul/sound/sfrifle_fire.ogg'
	emp_damageable = TRUE
	can_bayonet = TRUE
	can_flashlight = TRUE
	company_flag = COMPANY_BOLT

/obj/item/ammo_box/magazine/multi_sprite/pitbull
	name = "10mm SMG magazine"
	icon = 'modular_skyrat/modules/sec_haul/icons/guns/mags.dmi'
	icon_state = "pcr"
	ammo_type = /obj/item/ammo_casing/b10mm
	caliber = CALIBER_10MMAUTO
	max_ammo = 24
	multiple_sprites = AMMO_BOX_FULL_EMPTY_BASIC

/obj/item/ammo_box/magazine/multi_sprite/pitbull/hp
	ammo_type = /obj/item/ammo_casing/b10mm/hp
	round_type = AMMO_TYPE_HOLLOWPOINT

/obj/item/ammo_box/magazine/multi_sprite/pitbull/ihdf
	ammo_type = /obj/item/ammo_casing/b10mm/ihdf
	round_type = AMMO_TYPE_IHDF

/obj/item/ammo_box/magazine/multi_sprite/pitbull/rubber
	ammo_type = /obj/item/ammo_casing/b10mm/rubber
	round_type = AMMO_TYPE_RUBBER

/////////////////DTR
/obj/item/gun/ballistic/automatic/ostwind
	name = "\improper DTR-6 Rifle"
	desc = "A 6.3mm special-purpose rifle designed for specific situations."
	icon = 'modular_skyrat/modules/sec_haul/icons/guns/ostwind.dmi'
	righthand_file = 'modular_skyrat/modules/sec_haul/icons/guns/inhands/righthand.dmi'
	lefthand_file = 'modular_skyrat/modules/sec_haul/icons/guns/inhands/lefthand.dmi'
	inhand_icon_state = "ostwind"
	icon_state = "ostwind"
	worn_icon = 'modular_skyrat/modules/sec_haul/icons/guns/ostwind.dmi'
	worn_icon_state = "ostwind_worn"
	alt_icons = TRUE
	alt_icon_state = "ostwind_worn"
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK | ITEM_SLOT_BELT | ITEM_SLOT_OCLOTHING
	mag_type = /obj/item/ammo_box/magazine/multi_sprite/ostwind
	spread = 10
	fire_delay = 2
	can_suppress = FALSE
	burst_size = 2
	mag_display = TRUE
	mag_display_ammo = TRUE
	realistic = TRUE
	fire_sound = 'sound/weapons/gun/smg/shot.ogg'
	emp_damageable = TRUE
	can_bayonet = TRUE

/obj/item/ammo_box/magazine/multi_sprite/ostwind
	name = "6.3mm Rifle Magazine"
	icon = 'modular_skyrat/modules/sec_haul/icons/guns/mags.dmi'
	icon_state = "pcr"
	ammo_type = /obj/item/ammo_casing/b6mm
	caliber = CALIBER_6MM
	max_ammo = 30
	multiple_sprites = AMMO_BOX_FULL_EMPTY_BASIC
	possible_types = list(AMMO_TYPE_LETHAL, AMMO_TYPE_RUBBER, AMMO_TYPE_IHDF)

/obj/item/ammo_box/magazine/multi_sprite/ostwind/rubber
	ammo_type = /obj/item/ammo_casing/b6mm/rubber
	round_type = AMMO_TYPE_RUBBER

/obj/item/ammo_box/magazine/multi_sprite/ostwind/ihdf
	ammo_type = /obj/item/ammo_casing/b6mm/ihdf
	round_type = AMMO_TYPE_IHDF
