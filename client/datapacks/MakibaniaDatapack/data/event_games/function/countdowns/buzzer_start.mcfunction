#function event_games:countdowns/buzzer_start
scoreboard players set buzzer evg_tmp 5
tag @a[predicate=event_games:in_event_dim] add show_buzzer
function event_games:countdowns/buzzer_sequence