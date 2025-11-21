#function event_games:fishing_event/clear

scoreboard players set fishing_event_active evg_persistent 0
scoreboard objectives setdisplay sidebar
clear @a northstar:salt

#cancel timers
function event_games:countdowns/ding_cancel
function event_games:countdowns/buzzer_cancel
function event_games:countdowns/timer_cancel