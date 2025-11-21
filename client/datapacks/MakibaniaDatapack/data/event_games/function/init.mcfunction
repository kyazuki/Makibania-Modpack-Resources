#event_games:init
scoreboard objectives add evg_tmp dummy
scoreboard objectives add evg_persistent dummy
scoreboard objectives add fishing_event minecraft.custom:minecraft.fish_caught "釣った数"

#数値
scoreboard players set const_60 evg_persistent 60
scoreboard players set const_16 evg_persistent 16
scoreboard players set const_4 evg_persistent 4
scoreboard players set const_2 evg_persistent 2
#餌袋が釣れ、スコアが反映される状態
scoreboard players set fishing_event_active evg_persistent 0
#釣り餌1個あたりのスコア
scoreboard players set fishing_event_baitbag_score evg_persistent 5