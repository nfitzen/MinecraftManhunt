# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

# function manhunt:mechanics/setup/check_join,
# tag #manhunt:core/second/as_player

execute if entity @s[tag=!mmh.joined] unless score $game_started mmh.int matches 1.. run function manhunt:mechanics/setup/as_player
