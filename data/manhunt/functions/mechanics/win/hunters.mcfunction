# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

execute as @a run function manhunt:mechanics/win/title

data modify storage manhunt:input mmh.mechanics.win.stats.finished set from storage manhunt:string mmh.mechanics.win.stats.finished.false

function #manhunt:mechanics/win/stats

scoreboard players set $game_started mmh.int 0
