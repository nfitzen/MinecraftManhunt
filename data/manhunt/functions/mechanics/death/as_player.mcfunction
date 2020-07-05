# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

# function manhunt:mechanics/death/as_player
# called as: @p, from: #aestd1:player_dies

execute if entity @s[team=mmh.hunted] run function manhunt:mechanics/death/as_hunted
execute if entity @s[team=mmh.hunters] run tag @s add mmh.dead
