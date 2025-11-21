#function event_games:cow_sorting/calculate_scores
execute unless entity @a[tag=cow_sorting_player] run return
scoreboard players set @e[tag=cow_sorting_center] evg_tmp 0
execute at @e[tag=cow_sorting_center] as @e[tag=cow_sorting,distance= ..10] at @s run function event_games:cow_sorting/check
tellraw @a[predicate=event_games:in_event_dim] ""
tellraw @a[predicate=event_games:in_event_dim] ["=====",{"text":"リザルト", "underlined":true,"bold":true},"====="]
execute as @e[tag=cow_sorting_center] at @s if entity @a[distance=..10, tag=cow_sorting_player] run tellraw @a[predicate=event_games:in_event_dim] [{"selector":"@a[tag=cow_sorting_player,sort=nearest,limit=1]"},": ",{"score":{"name":"@s","objective":"evg_tmp","bold":true}}]
tellraw @a[predicate=event_games:in_event_dim] ["================"]