#function event_games:countdowns/buzzer_cancel
schedule clear event_games:countdowns/buzzer_sequence
tag @a[tag=show_buzzer] remove show_buzzer
scoreboard players reset buzzer evg_tmp