#function event_games:hell_cauldron/round_sequence
execute if score evg_hc_timer evg_tmp matches 0 run function event_games:hell_cauldron/round_finish
execute if score evg_hc_timer evg_tmp matches 1..3 as @a[tag=hell_cauldron_player] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 2
scoreboard players remove evg_hc_timer evg_tmp 1
execute if score evg_hc_timer evg_tmp matches 0.. if score evg_hc_round evg_tmp matches ..10 run schedule function event_games:hell_cauldron/round_sequence 1s
execute if score evg_hc_timer evg_tmp matches 0.. if score evg_hc_round evg_tmp matches 11..13 run schedule function event_games:hell_cauldron/round_sequence 16t
execute if score evg_hc_timer evg_tmp matches 0.. if score evg_hc_round evg_tmp matches 14..16 run schedule function event_games:hell_cauldron/round_sequence 12t
execute if score evg_hc_timer evg_tmp matches 0.. if score evg_hc_round evg_tmp matches 17..19 run schedule function event_games:hell_cauldron/round_sequence 8t
execute if score evg_hc_timer evg_tmp matches 0.. if score evg_hc_round evg_tmp matches 20 run schedule function event_games:hell_cauldron/round_sequence 4t