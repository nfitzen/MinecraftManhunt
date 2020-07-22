# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

# function manhunt:mechanics/count_time,
# tag #manhunt:core/tick/as_player

execute if score $game_started mmh.int matches 1.. run scoreboard players add @s[team=mmh.hunted,tag=mmh.alive] mmh.time_alive 1
