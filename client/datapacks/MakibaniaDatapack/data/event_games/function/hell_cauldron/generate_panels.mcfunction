#function event_games:hell_cauldron/generate_panels
function event_games:random/get_rng
scoreboard players operation evg_rng0 evg_tmp %= const_16 evg_persistent

execute if score evg_rng0 evg_tmp matches 0 run place template event_games:hell_cauldron/panels/black ~-7 ~ ~-7
execute if score evg_rng0 evg_tmp matches 1 run place template event_games:hell_cauldron/panels/blue ~-7 ~ ~-7
execute if score evg_rng0 evg_tmp matches 2 run place template event_games:hell_cauldron/panels/brown ~-7 ~ ~-7
execute if score evg_rng0 evg_tmp matches 3 run place template event_games:hell_cauldron/panels/cyan ~-7 ~ ~-7
execute if score evg_rng0 evg_tmp matches 4 run place template event_games:hell_cauldron/panels/gray ~-7 ~ ~-7
execute if score evg_rng0 evg_tmp matches 5 run place template event_games:hell_cauldron/panels/green ~-7 ~ ~-7
execute if score evg_rng0 evg_tmp matches 6 run place template event_games:hell_cauldron/panels/light_blue ~-7 ~ ~-7
execute if score evg_rng0 evg_tmp matches 7 run place template event_games:hell_cauldron/panels/light_gray ~-7 ~ ~-7
execute if score evg_rng0 evg_tmp matches 8 run place template event_games:hell_cauldron/panels/lime ~-7 ~ ~-7
execute if score evg_rng0 evg_tmp matches 9 run place template event_games:hell_cauldron/panels/magenta ~-7 ~ ~-7
execute if score evg_rng0 evg_tmp matches 10 run place template event_games:hell_cauldron/panels/orange ~-7 ~ ~-7
execute if score evg_rng0 evg_tmp matches 11 run place template event_games:hell_cauldron/panels/pink ~-7 ~ ~-7
execute if score evg_rng0 evg_tmp matches 12 run place template event_games:hell_cauldron/panels/purple ~-7 ~ ~-7
execute if score evg_rng0 evg_tmp matches 13 run place template event_games:hell_cauldron/panels/red ~-7 ~ ~-7
execute if score evg_rng0 evg_tmp matches 14 run place template event_games:hell_cauldron/panels/white ~-7 ~ ~-7
execute if score evg_rng0 evg_tmp matches 15 run place template event_games:hell_cauldron/panels/yellow ~-7 ~ ~-7