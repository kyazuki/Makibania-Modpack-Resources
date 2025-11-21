#function event_games:hell_cauldron/result
execute unless entity @a[tag=hell_cauldron_player] run return
tellraw @a[predicate=event_games:in_event_dim] ""
tellraw @a[predicate=event_games:in_event_dim] ["=====",{"text":"リザルト", "underlined":true,"bold":true,"color":"red"},"====="]
tellraw @a[predicate=event_games:in_event_dim] ["ラウンド数: ",{"score":{"name":"evg_hc_round","objective":"evg_tmp","bold":true}}]
tellraw @a[predicate=event_games:in_event_dim] "生存者: "
execute as @a[tag=hell_cauldron_player_alive] run tellraw @a[predicate=event_games:in_event_dim] {"selector":"@s"}
execute if score evg_hc_survivors evg_tmp matches ..0 run tellraw @a[predicate=event_games:in_event_dim] "なし"
tellraw @a[predicate=event_games:in_event_dim] ["================"]