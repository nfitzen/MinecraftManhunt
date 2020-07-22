# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

worldborder center ~ ~

scoreboard players operation $worldborder.size mmh.tmp = $worldborder.size mmh.input

function manhunt:mechanics/worldborder/set_size

kill @s
