#function event_games:fishing_event/start
scoreboard players set fishing_event_active evg_persistent 1
scoreboard players set @a fishing_event 0
scoreboard objectives setdisplay sidebar fishing_event

tag @a add show_ding
scoreboard players set ding evg_tmp 3
function event_games:countdowns/ding_sequence
tag @a add show_timer
scoreboard players set timer evg_tmp 900
schedule function event_games:countdowns/timer_sequence 3s
tag @a add show_buzzer
scoreboard players set buzzer evg_tmp 5
schedule function event_games:countdowns/buzzer_sequence 898s
schedule function event_games:fishing_event/calculate 923s