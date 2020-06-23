# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

# function manhunt:core/init
# called from: #load:post_load

scoreboard objectives add mmh.int dummy
scoreboard objectives add mmh.achievements
scoreboard objectives add mmh.time_alive dummy
scoreboard objectives add mmh.compass_slot
scoreboard objectives add top trigger

team add mmh.hunters
team modify mmh.hunters color red

team add mmh.hunted
team modify mmh.hunted color blue
