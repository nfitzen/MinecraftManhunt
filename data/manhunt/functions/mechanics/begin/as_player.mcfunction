# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

clear @s
advancement revoke @s everything
recipe take @s *
effect clear @s

xp set @s 0 points
xp set @s 0 levels

effect give @s minecraft:saturation 1 20
effect give @s minecraft:instant_health 1 28

tag @s add mmh.alive
scoreboard players set @s mmh.time 0

function #manhunt:overrides/mechanics/begin/as_player
