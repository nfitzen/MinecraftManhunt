# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

# function manhunt:mechanics/win/hunted_check

execute if score $game_started mmh.int matches 1.. if entity @s[team=mmh.hunted] run function manhunt:mechanics/win/hunted
