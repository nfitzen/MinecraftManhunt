# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

execute if entity @s[advancements={manhunt:finish=true}] run data modify storage manhunt:input mmh.mechanics.win.stats.finished set from storage manhunt:string mmh.mechanics.win.stats.finished.true

function #manhunt:mechanics/win/stats

scoreboard players set $game_started mmh.int 0
