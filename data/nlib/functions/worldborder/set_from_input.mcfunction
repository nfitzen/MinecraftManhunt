# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

execute if data storage nlib:input worldborder.size store result score $worldborder.size nlib.input run data get storage nlib:input worldborder.size

kill ad7a10d4-7d3c-4f43-86bb-da872d12bb79

execute if data storage nlib:input worldborder.center run function nlib:worldborder/set_center

# execute if isn't included here because most use cases include setting $worldborder.size.
scoreboard players operation $worldborder.size nlib.tmp = $worldborder.size nlib.input

execute if score $worldborder.size nlib.input matches 1.. run function nlib:worldborder/set_size

# reset it so I don't have to every time
data remove storage nlib:input worldborder
scoreboard players set $worldborder.size nlib.input 0
