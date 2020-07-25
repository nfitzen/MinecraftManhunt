# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

effect give @s minecraft:resistance 1000000 127 true
effect give @s minecraft:slowness 1000000 127 true
effect give @s minecraft:jump_boost 1000000 128 true
effect give @s minecraft:weakness 1000000 127 true

execute positioned as @e[tag=mmh.stickytp,limit=1,sort=nearest] run tp ~ ~ ~
