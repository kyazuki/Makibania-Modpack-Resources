#function event_games:cow_sorting/summon_cows
scoreboard players remove @s evg_tmp 1
summon minecraft:mooshroom ~ ~ ~ {Tags:["cow_sorting"], Invulnerable:1b}
summon minecraft:cow ~ ~ ~ {Tags:["cow_sorting"], Invulnerable:1b}
execute if score @s evg_tmp matches 1.. run function event_games:cow_sorting/summon_cows