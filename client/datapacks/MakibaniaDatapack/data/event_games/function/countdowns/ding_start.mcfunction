#function event_games:countdowns/ding_start
scoreboard players set ding evg_tmp 3
tag @a[predicate=event_games:in_event_dim] add show_ding
function event_games:countdowns/ding_sequence