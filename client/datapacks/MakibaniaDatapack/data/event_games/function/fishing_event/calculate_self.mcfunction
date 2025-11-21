#function event_games:fishing_event/calculate_self
execute store result score @s evg_tmp run clear @s northstar:salt
scoreboard players operation @s evg_tmp *= fishing_event_baitbag_score evg_persistent
scoreboard players operation @s fishing_event += @s evg_tmp
scoreboard players reset @s evg_tmp