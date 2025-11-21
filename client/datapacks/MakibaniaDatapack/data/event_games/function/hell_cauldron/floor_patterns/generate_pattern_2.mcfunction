#function event_games:hell_cauldron/generate_pattern_2
execute if score evg_rng1 evg_tmp matches 0 run function event_games:hell_cauldron/floor_patterns/pattern_2/none
execute if score evg_rng1 evg_tmp matches 1 run function event_games:hell_cauldron/floor_patterns/pattern_2/90
execute if score evg_rng1 evg_tmp matches 2 run function event_games:hell_cauldron/floor_patterns/pattern_2/180
execute if score evg_rng1 evg_tmp matches 3 run function event_games:hell_cauldron/floor_patterns/pattern_2/270