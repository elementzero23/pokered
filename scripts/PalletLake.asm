PalletLake_Script:
	call EnableAutoTextBoxDrawing
    ld hl, PalletLake_ScriptPointers
    ld a, [wPalletLakeCurScript]
    jp CallFunctionInTable

PalletLake_ScriptPointers:
    dw PalletLakeScript0

PalletLakeScript0: ; hide the guy when starter was picked
    CheckEvent EVENT_OAK_APPEARED_IN_PALLET
    ret z
    ld a, HS_PALLET_LAKE_CAVE_GUY
    ld [wMissableObjectIndex], a
    predef HideObject

	ret
    
	; only for further scripts on this map
    ;ld a, $1
    ;ld [wPalletLakeCurScript], a
    ;ret

PalletLake_TextPointers:
	dw PalletLakeText1

PalletLakeText1:
	text_far _PalletLakeText1
	text_end

	text_end ; unused