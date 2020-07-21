# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

# function manhunt:mechanics/tracker/update/store_to_nbt
# called from: ./as_hunter, as: @p[team=mmh.hunted], context: @a[team=mmh.hunters]

execute store result score @s mmh.tmp run data get entity @s Dimension

execute if score @s mmh.tmp = $comp mmh.tmp run function manhunt:mechanics/tracker/update/unless_dimdiff

execute if data storage manhunt:input {"Dimension":"minecraft:overworld"} if data entity @s {"Dimension":"minecraft:the_nether"} run function manhunt:mechanics/tracker/update/if_dimdiff
