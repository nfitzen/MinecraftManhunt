# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

# function manhunt:mechanics/tracker/update/store_to_nbt
# called from: ./as_hunter, as: @p[team=mmh.hunted], context: @a[team=mmh.hunters]

data modify storage manhunt:temp Dimension set from storage manhunt:input Dimension
execute store success score @s mmh.tmp run data modify storage manhunt:temp Dimension set from entity @s Dimension

execute if score @s mmh.tmp matches 0 run function manhunt:mechanics/tracker/update/unless_dimdiff

execute if score @s mmh.tmp matches 1 if data storage manhunt:input {"Dimension":"minecraft:overworld"} if data entity @s {"Dimension":"minecraft:the_nether"} run function manhunt:mechanics/tracker/update/if_nether
