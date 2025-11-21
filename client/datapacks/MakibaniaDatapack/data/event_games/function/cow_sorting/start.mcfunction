#function event_games:cow_sorting/start
execute at @e[tag=cow_sorting_center] run tag @p[distance=..10] add cow_sorting_player
function event_games:countdowns/ding_start
tag @a[predicate=event_games:in_event_dim] add show_timer
scoreboard players set timer evg_tmp 60
schedule function event_games:countdowns/timer_sequence 3s
schedule function event_games:countdowns/buzzer_start 58s
schedule function event_games:cow_sorting/calculate_scores 63s
scoreboard players set cow_sorting_active evg_persistent 1