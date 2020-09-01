# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

summon minecraft:area_effect_cloud ~ ~ ~ {"Radius":0.0f,"Duration":2147483647,"Tags":["nlib.worldborder"],"UUID":[I;-1384509228,2101104451,-2034509177,756202361]}

execute as ad7a10d4-7d3c-4f43-86bb-da872d12bb79 at @s run function nlib:worldborder/as_aoe
