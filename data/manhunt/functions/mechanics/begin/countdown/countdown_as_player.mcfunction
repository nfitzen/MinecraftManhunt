# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

execute if entity @s[team=mmh.hunters] run function manhunt:mechanics/begin/countdown/countdown_as_hunter
execute if entity @s[team=mmh.hunted] run function manhunt:mechanics/begin/countdown/countdown_as_hunted

title @s subtitle {"nbt":"mmh.mechanics.begin.countdown.subtitle","storage":"manhunt:string","interpret":true}
title @s title {"nbt":"mmh.mechanics.begin.countdown.title","storage":"manhunt:string","interpret":true}
