#function event:cow_sorting_toggle
execute unless score cow_sorting_active evg_persistant matches 1 run schedule function event_games:cow_sorting/start 1t
execute if score cow_sorting_active evg_persistant matches 1 run schedule function event_games:cow_sorting/reset 1t