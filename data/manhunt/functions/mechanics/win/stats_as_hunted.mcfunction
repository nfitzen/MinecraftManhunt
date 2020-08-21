# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

execute if entity @s[advancements={manhunt:finish=false}] run data modify storage manhunt:input mmh.mechanics.win.stats.finished set from storage manhunt:string mmh.mechanics.win.stats.finished.false
execute if entity @s[advancements={manhunt:finish=true}] run data modify storage manhunt:input mmh.mechanics.win.stats.finished set from storage manhunt:string mmh.mechanics.win.stats.finished.true
execute if entity @s[advancements={manhunt:finish=true}] run scoreboard players operation @s mmh.time_alive = @s mmh.time

function #nlib:tellraw_from_list
