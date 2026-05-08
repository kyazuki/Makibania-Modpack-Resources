#function event_games:fishing_event/calculate
execute as @a run function event_games:fishing_event/calculate_self
scoreboard players set fishing_event_active evg_persistent 1