#function event_games:hell_cauldron/start
tag @a[tag=hell_cauldron_player] remove hell_cauldron_player
execute store result score evg_hc_player_count evg_tmp at @e[tag=hell_cauldron_center] run tag @a[predicate=event_games:in_event_dim, distance=..11] add hell_cauldron_player
tag @a[tag=hell_cauldron_player] add hell_cauldron_player_alive
tag @a[tag=hell_cauldron_player] remove hell_cauldron_player_dead
function event_games:hell_cauldron/generate_floor
execute at @e[tag=hell_cauldron_center] run clone ~-6 ~-12 ~-6 ~6 ~-12 ~6 ~-6 ~-1 ~-6 replace normal
scoreboard players set ding evg_tmp 3
tag @a[tag=hell_cauldron_player] add show_ding
function event_games:countdowns/ding_sequence
scoreboard players set evg_hc_round evg_tmp 0
execute as @e[tag=hell_cauldron_center] store result score evg_hc_height evg_tmp run data get entity @s Pos[1]
scoreboard players remove evg_hc_height evg_tmp 3
schedule function event_games:hell_cauldron/round_start 3s
scoreboard players set hell_cauldron_active evg_persistent 1