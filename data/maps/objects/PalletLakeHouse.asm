PalletLakeHouse_Object:
	db $0a ; border block

	def_warps
	warp  2,  7, 0, LAST_MAP ; exit1
	warp  3,  7, 0, LAST_MAP ; exit2

	def_signs

	def_objects
	object SPRITE_YOUNGSTER,  5, 5, STAY, LEFT, 1, OPP_YOUNGSTER, 14 ; trainer 0

	def_warps_to PALLET_LAKE_HOUSE