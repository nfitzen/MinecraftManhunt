# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

# function manhunt:mechanics/begin/start_game/as_player

effect clear @s

execute if entity @s[team=mmh.hunters] run function manhunt:mechanics/begin/start_game/as_hunter
execute if entity @s[team=mmh.hunted] run function manhunt:mechanics/begin/start_game/as_hunted

gamemode survival @s[team=!]

function #manhunt:overrides/mechanics/begin/start_game/as_player
