# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

tag @s remove mmh.alive
scoreboard players operation @s mmh.time_alive = @s mmh.time
scoreboard players remove $hunted_size mmh.int 1
gamemode spectator @s
execute if score $hunted_size mmh.int matches ..0 run function manhunt:mechanics/win/hunters
