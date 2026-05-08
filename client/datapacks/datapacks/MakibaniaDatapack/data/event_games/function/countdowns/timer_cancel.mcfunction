#function event_games:countdowns/timer_cancel
schedule clear event_games:countdowns/timer_sequence
tag @a[tag=show_timer] remove show_timer
scoreboard players reset timer evg_tmp
scoreboard players reset timer_min evg_tmp
scoreboard players reset timer_sec evg_tmp