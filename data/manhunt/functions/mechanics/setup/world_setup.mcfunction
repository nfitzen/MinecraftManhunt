# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

gamerule doDaylightCycle false
time set 0
weather rain 1

gamerule doMobSpawning false
execute as @e[type=#aestd1:mobs,tag=!mmh.NoAI] run function manhunt:mechanics/setup/noai

data modify storage nlib:input worldborder.center set from entity @s Pos
data modify storage nlib:input worldborder merge from storage manhunt:settings mmh.mechanics.worldborder.set.setup

function nlib:worldborder/set_from_input
