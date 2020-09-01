# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

# function manhunt:mechanics/death/as_player
# called as: @p, from: #aestd1:player_dies

execute if score $game_started mmh.int matches 1.. if entity @s[team=mmh.hunted] run function manhunt:mechanics/death/as_hunted
execute if entity @s[team=mmh.hunters] run tag @s add mmh.dead

function #manhunt:overrides/mechanics/death/as_player
