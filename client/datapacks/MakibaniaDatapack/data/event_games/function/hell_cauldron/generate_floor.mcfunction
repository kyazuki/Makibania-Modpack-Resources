#function event_games:hell_cauldron/generate_floor

execute at @e[tag=hell_cauldron_center] run function event_games:random/get_rng
#床パターンを決める
scoreboard players operation evg_rng0 evg_tmp %= const_4 evg_persistent
#回転を決める
scoreboard players operation evg_rng1 evg_tmp %= const_4 evg_persistent
#反転を決める
scoreboard players operation evg_rng2 evg_tmp %= const_2 evg_persistent

execute if score evg_rng0 evg_tmp matches 0 at @e[tag=hell_cauldron_center] run function event_games:hell_cauldron/floor_patterns/generate_pattern_1
execute if score evg_rng0 evg_tmp matches 1 at @e[tag=hell_cauldron_center] run function event_games:hell_cauldron/floor_patterns/generate_pattern_2
execute if score evg_rng0 evg_tmp matches 2 at @e[tag=hell_cauldron_center] run function event_games:hell_cauldron/floor_patterns/generate_pattern_3
execute if score evg_rng0 evg_tmp matches 3 at @e[tag=hell_cauldron_center] run function event_games:hell_cauldron/floor_patterns/generate_pattern_4

#床パターンを保存
scoreboard players operation evg_hc_floor_pattern evg_tmp = evg_rng0 evg_tmp