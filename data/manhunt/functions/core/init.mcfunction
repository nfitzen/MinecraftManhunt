# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

# function manhunt:core/init
# called from: #load:post_load

scoreboard objectives add mmh.int dummy
scoreboard objectives add mmh.input dummy
# mmh.tmp is optional, but nice to have. Don't expect data to survive!
scoreboard objectives add mmh.tmp dummy

scoreboard objectives add mmh.achievements
scoreboard objectives add mmh.time_alive dummy
scoreboard objectives add mmh.compass_slot dummy
scoreboard objectives add top trigger
scoreboard objectives add mmh.kill_player playerKillCount

team add mmh.hunters
team modify mmh.hunters color red

team add mmh.hunted
team modify mmh.hunted color blue
