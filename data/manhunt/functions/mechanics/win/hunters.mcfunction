# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

title @a subtitle {"nbt":"mmh.mechanics.win.hunters.subtitle","storage":"manhunt:string","interpret":true}
title @a title {"nbt":"mmh.mechanics.win.hunters.title","storage":"manhunt:string","interpret":true}

data modify storage manhunt:input mmh.mechanics.win.stats.finished set from storage manhunt:string mmh.mechanics.win.stats.finished.false

function #manhunt:mechanics/win/stats

scoreboard players set $game_started mmh.int 0
