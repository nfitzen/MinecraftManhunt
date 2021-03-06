# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

# function manhunt:mechanics/setup/player_setup
# tag #manhunt:mechanics/setup/as_player
# called as: @a, from: ./as_player

tp @s 150dfa29-7270-4a29-ab0e-9d0ec42087c2

clear @s
advancement revoke @s everything
recipe take @s *

xp set @s 0 points
xp set @s 0 levels

effect give @s minecraft:saturation 1 20
effect give @s minecraft:instant_health 1 28

gamemode adventure @s

tag @s add mmh.joined
