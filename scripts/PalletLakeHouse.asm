PalletLakeHouse_Script:
	call EnableAutoTextBoxDrawing
	ld hl, PalletLakeHouseTrainerHeader0
	ld de, PalletLakeHouse_ScriptPointers
	ld a, [wPalletLakeHouseCurScript]
	call ExecuteCurMapScriptInTable
	ld [wPalletLakeHouseCurScript], a
	ret

PalletLakeHouse_ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle

PalletLakeHouse_TextPointers:
	dw PalletLakeHouseText1

PalletLakeHouseTrainerHeader0:
	trainer EVENT_BEAT_PALLET_LAKE_HOUSE_TRAINER_0, 3, PalletLakeHouseBattleText1, PalletLakeHouseEndBattleText1, PalletLakeHouseAfterBattleText1
	db -1 ; end

PalletLakeHouseText1:
	text_asm
	ld hl, PalletLakeHouseTrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

PalletLakeHouseBattleText1:
	text_far _PalletLakeHouseBattleText1
	text_end

PalletLakeHouseEndBattleText1:
	text_far _PalletLakeHouseEndBattleText1
	text_end

PalletLakeHouseAfterBattleText1:
	text_far _PalletLakeHouseAfterBattleText1
	text_end

	;text_end ; unused