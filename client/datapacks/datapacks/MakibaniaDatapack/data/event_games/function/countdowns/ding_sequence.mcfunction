#function event_games:countdowns/ding_sequence

execute unless score ding evg_tmp matches 0 as @a[tag=show_ding] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 1 1.5
execute if score ding evg_tmp matches 0 as @a[tag=show_ding] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 2
execute if score ding evg_tmp matches 1.. run title @a[tag=show_ding] title {"score":{"name":"ding","objective":"evg_tmp"}}
execute if score ding evg_tmp matches 0 run title @a[tag=show_ding] title {"text":"スタート", "bold":true}
scoreboard players remove ding evg_tmp 1
execute if score ding evg_tmp matches 0.. run schedule function event_games:countdowns/ding_sequence 1s replace
execute if score ding evg_tmp matches -1 run scoreboard players reset ding evg_tmp
execute if score ding evg_tmp matches -1 run tag @a[tag=show_ding] remove show_ding