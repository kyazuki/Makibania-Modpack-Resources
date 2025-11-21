#function event_games:hell_cauldron/round_start
scoreboard players add evg_hc_round evg_tmp 1
tellraw @a[tag=hell_cauldron_player] ["ラウンド",{"score":{"name":"evg_hc_round","objective":"evg_tmp","bold":true}}]
execute at @e[tag=hell_cauldron_center] run function event_games:hell_cauldron/generate_panels
execute as @a[tag=hell_cauldron_player] at @s run playsound minecraft:block.note_block.guitar master @s ~ ~ ~ 1 2
scoreboard players set evg_hc_timer evg_tmp 11
scoreboard players operation evg_hc_timer evg_tmp -= evg_hc_round evg_tmp
execute if score evg_hc_timer evg_tmp matches ..2 run scoreboard players set evg_hc_timer evg_tmp 3
execute if score evg_hc_round evg_tmp matches ..10 run scoreboard players operation timer evg_tmp = evg_hc_timer evg_tmp
execute if score evg_hc_round evg_tmp matches ..10 run tag @a[tag=hell_cauldron_player] add show_timer
execute if score evg_hc_round evg_tmp matches ..10 run schedule function event_games:countdowns/timer_sequence 1s
schedule function event_games:hell_cauldron/round_sequence 1s