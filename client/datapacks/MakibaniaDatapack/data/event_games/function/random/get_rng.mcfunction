summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["evg_random"]}
execute store result score evg_rng0 evg_tmp run data get entity @e[tag=evg_random,limit=1] UUID[0]
execute store result score evg_rng1 evg_tmp run data get entity @e[tag=evg_random,limit=1] UUID[1]
execute store result score evg_rng2 evg_tmp run data get entity @e[tag=evg_random,limit=1] UUID[2]
execute store result score evg_rng3 evg_tmp run data get entity @e[tag=evg_random,limit=1] UUID[3]
kill @e[tag=evg_random]