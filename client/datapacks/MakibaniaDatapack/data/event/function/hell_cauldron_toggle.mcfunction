#function event:hell_cauldron_toggle
execute unless score hell_cauldron_active evg_persistant matches 1 run schedule function event_games:hell_cauldron/start 1t
execute if score hell_cauldron_active evg_persistant matches 1 run schedule function event_games:hell_cauldron/reset 1t