# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

# function manhunt:core/init
# called from: #load:post_load

scoreboard objectives add mmh.int dummy
scoreboard objectives add mmh.input dummy
# mmh.tmp is optional, but nice to have. Don't expect data to survive!
# Actually... why do I have this... lol. I guess it's cause I was lazy one time
# and decided to use @s mmh.tmp for stuff LOL.
scoreboard objectives add mmh.tmp dummy

scoreboard objectives add mmh.advancements dummy
scoreboard objectives add mmh.time_alive dummy

scoreboard objectives add mmh.time_spawned minecraft.custom:minecraft.time_since_death
scoreboard objectives add mmh.kill_player playerKillCount

scoreboard objectives add top trigger

team add mmh.hunters
team modify mmh.hunters color red

team add mmh.hunted
team modify mmh.hunted color blue

scoreboard players add $game_started mmh.int 0
