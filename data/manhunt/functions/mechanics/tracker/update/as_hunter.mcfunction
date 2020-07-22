# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

# function manhunt:mechanics/tracker/update/main

data modify storage aestd:input nbt set value {"LodestoneTracked":false}
data modify storage aestd:input nbt.display set from storage manhunt:string mmh.mechanics.tracker.display

execute store result score $comp mmh.tmp run data get entity @s Dimension
data modify storage manhunt:input Dimension set from entity @s Dimension
execute as @p[team=mmh.hunted,tag=mmh.alive] run function manhunt:mechanics/tracker/update/store_to_nbt

execute store result score @s aestd.item.slot run data get entity @s SelectedItemSlot

function aestd1:item/merge_nbt
