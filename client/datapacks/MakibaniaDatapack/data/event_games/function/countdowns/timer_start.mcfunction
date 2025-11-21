#function event_games:countdowns/timer_start
scoreboard players set timer evg_tmp 120
tag @a[predicate=event_games:in_event_dim] add show_timer
function event_games:countdowns/timer_sequence