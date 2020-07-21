# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

clear @s
advancement revoke @s everything
recipe take @s *

xp set @s 0 points
xp set @s 0 levels

effect give @s minecraft:saturation 1 20
effect give @s minecraft:instant_health 1 28

tag @s add mmh.alive
