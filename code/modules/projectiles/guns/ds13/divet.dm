/obj/item/weapon/gun/projectile/divet
	name = "divet pistol"
	desc = "A Winchester Arms NK-series pistol capable of fully automatic fire."
	icon_state = "divet"
	magazine_type = /obj/item/ammo_magazine/divet
	allowed_magazines = /obj/item/ammo_magazine/divet
	caliber = "slug"
	accuracy = 10
	fire_delay = 5.5
	burst_delay = 1
	w_class = ITEM_SIZE_SMALL
	handle_casings = CLEAR_CASINGS
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2)
	load_method = MAGAZINE

	firemodes = list(
		FULL_AUTO_300,
		list(mode_name="3-round bursts", burst=3, fire_delay=3, move_delay=4, one_hand_penalty=0, burst_accuracy=list(0,-2,-4),       dispersion=list(0.0, 0.6, 1.0)),

		)

/obj/item/weapon/gun/projectile/divet/update_icon()
	..()
	if(ammo_magazine && ammo_magazine.stored_ammo.len)
		icon_state = "divet"
	else
		icon_state = "divet_e"



/obj/item/ammo_magazine/divet
	name = "magazine (pistol slug)"
	icon_state = "45ds"
	mag_type = MAGAZINE
	ammo_type = /obj/item/ammo_casing/ls_slug
	matter = list(MATERIAL_STEEL = 525) //metal costs are very roughly based around 1 .45 casing = 75 metal
	caliber = "slug"
	max_ammo = 10
	multiple_sprites = 1


/obj/item/ammo_casing/ls_slug
	desc = "A .45 bullet casing."
	caliber = "slug"
	projectile_type = /obj/item/projectile/bullet/ls_slug


/obj/item/projectile/bullet/ls_slug
	fire_sound = 'sound/weapons/gunshot/gunshot_pistol.ogg'
	damage = 22.5
	expiry_method = EXPIRY_FADEOUT
	muzzle_type = /obj/effect/projectile/pulse/muzzle/light
	fire_sound='sound/weapons/guns/fire/pulse_shot.ogg'
	armor_penetration = 5
	structure_damage_factor = 1.5
	penetration_modifier = 1.1