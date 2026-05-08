#function event_games:countdowns/timer_sequence
scoreboard players operation timer_min evg_tmp = timer evg_tmp
scoreboard players operation timer_min evg_tmp /= const_60 evg_persistent
scoreboard players operation timer_sec evg_tmp = timer evg_tmp
scoreboard players operation timer_sec evg_tmp %= const_60 evg_persistent

execute if score timer_min evg_tmp matches ..9 run scoreboard players set timer_placeholder_min evg_tmp 0
execute if score timer_sec evg_tmp matches ..9 run scoreboard players set timer_placeholder_sec evg_tmp 0

title @a[tag=show_timer] actionbar [{"score":{"name":"timer_placeholder_min","objective":"evg_tmp"}},{"score":{"name":"timer_min","objective":"evg_tmp"}},":",{"score":{"name":"timer_placeholder_sec","objective":"evg_tmp"}},{"score":{"name":"timer_sec","objective":"evg_tmp"}}]
scoreboard players reset timer_placeholder_min evg_tmp
scoreboard players reset timer_placeholder_sec evg_tmp

scoreboard players remove timer evg_tmp 1
execute if score timer evg_tmp matches 0.. run schedule function event_games:countdowns/timer_sequence 1s replace
execute if score timer evg_tmp matches ..-1 run function event_games:countdowns/timer_cancel