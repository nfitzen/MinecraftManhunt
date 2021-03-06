# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

# function manhunt:core/init
# called from: #load:post_load

#declare score_holder $game_started

#>
# @public
scoreboard objectives add mmh.input dummy

#>
# @internal
    scoreboard objectives add mmh.int dummy
    scoreboard objectives add mmh.tmp dummy

scoreboard objectives add mmh.advancements dummy
scoreboard objectives add mmh.time_alive dummy
scoreboard objectives add mmh.time minecraft.custom:minecraft.play_one_minute
scoreboard objectives add mmh.time_spawned minecraft.custom:minecraft.time_since_death

team add mmh.hunters "Hunters"
team modify mmh.hunters color red

team add mmh.hunted "Hunted"
team modify mmh.hunted color blue

scoreboard players add $game_started mmh.int 0
