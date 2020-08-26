# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

# Pretty slow and jank, as per usual.
# If no center is set, I shouldn't summon an entity to act as that anchor.
# in fact, there's no need for the AoE cloud to run ./set_size.

kill ad7a10d4-7d3c-4f43-86bb-da872d12bb79

summon minecraft:area_effect_cloud ~ ~ ~ {"Radius":0.0,"Duration":2147483647,"Tags":["nlib.worldborder"],"UUID":[I;-1384509228,2101104451,-2034509177,756202361]}

execute store success score $worldborder.center.exists nlib.tmp if data worldborder.center run data modify entity ad7a10d4-7d3c-4f43-86bb-da872d12bb79 Pos set from storage nlib:input worldborder.center

# very jank and slow (like most of this pack), but it covers the edge case of the aoecloud being at the specified center

execute if score $worldborder.center.exists nlib.tmp matches 0 run function nlib:mechanics/worldborder/test_at_center

execute as ad7a10d4-7d3c-4f43-86bb-da872d12bb79 at @s run function nlib:mechanics/worldborder/as_aoe

# reset it so I don't have to every time
data remove storage nlib:input worldborder
scoreboard players set $worldborder.size nlib.input 0
