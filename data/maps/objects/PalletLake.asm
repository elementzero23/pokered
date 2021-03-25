PalletLake_Object:
	db $0b ; border block

	def_warps
	warp  15, 5, 0, PALLET_LAKE_HOUSE
	warp   4, 5, 1, PALLET_LAKE_CAVE_B1F

	def_signs

	def_objects
	object SPRITE_SUPER_NERD, 4, 6, STAY, DOWN, 1 ; cave guy

	def_warps_to PALLET_LAKE