# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

#declare tag mmh.stickytp An entity to which "sticky" players will teleport.

tag @s add mmh.frozen
scoreboard players add $frozen_size mmh.int 1

execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {"Radius":0.0f,"Duration":2147483647,"Tags":["mmh.stickytp"]}
