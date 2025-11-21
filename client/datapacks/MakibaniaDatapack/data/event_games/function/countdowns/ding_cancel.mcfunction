#function event_games:countdowns/ding_cancel
schedule clear event_games:countdowns/ding_sequence
tag @a[tag=show_ding] remove show_ding
scoreboard players reset ding evg_tmp