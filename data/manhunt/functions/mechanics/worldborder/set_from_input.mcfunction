# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

kill ad7a10d4-7d3c-4f43-86bb-da872d12bb79

summon minecraft:area_effect_cloud ~ ~ ~ {"Radius":0.0,"Duration":2147483647,"Tags":["mmh.worldborder"],"UUID":[I;-1384509228,2101104451,-2034509177,756202361]}

data modify entity ad7a10d4-7d3c-4f43-86bb-da872d12bb79 Pos set from storage manhunt:input mmh.mechanics.worldborder.set.center
execute at ad7a10d4-7d3c-4f43-86bb-da872d12bb79 run worldborder center ~ ~

function manhunt:mechanics/worldborder/set_size

kill ad7a10d4-7d3c-4f43-86bb-da872d12bb79
