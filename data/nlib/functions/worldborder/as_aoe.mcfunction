# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

execute if score $worldborder.center.exists nlib.tmp matches 1.. run worldborder center ~ ~

# execute if isn't included here because most use cases include setting $worldborder.size.
scoreboard players operation $worldborder.size nlib.tmp = $worldborder.size nlib.input

execute if score $worldborder.size nlib.input matches 1.. run function nlib:mechanics/worldborder/set_size

kill @s
