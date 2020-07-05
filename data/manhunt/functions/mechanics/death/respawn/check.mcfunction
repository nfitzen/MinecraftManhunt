# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

# function manhunt:mechanics/death/respawn/check
# called as: @a, from: #manhunt:core/second/as_player

execute if entity @s[scores={mmh.time_spawned=1},team=mmh.hunters] run tag @s remove mmh.dead
