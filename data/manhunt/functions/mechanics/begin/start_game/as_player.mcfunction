# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

# function manhunt:mechanics/begin/start_game/as_player

title @s subtitle {"nbt":"mmh.mechanics.begin.start.subtitle","storage":"manhunt:string","interpret":true}
title @s title {"nbt":"mmh.mechanics.begin.start.title","storage":"manhunt:string","interpret":true}

execute if entity @s[team=mmh.hunters] run function manhunt:mechanics/begin/start_game/as_hunter
execute if entity @s[team=mmh.hunted] run function manhunt:mechanics/begin/start_game/as_hunted

gamemode survival @s[team=!]

function #manhunt:overrides/mechanics/begin/start_game/as_player
