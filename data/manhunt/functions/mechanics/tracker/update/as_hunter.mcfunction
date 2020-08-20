# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

# function manhunt:mechanics/tracker/update/main

data modify storage aestd:input nbt set value {"LodestoneTracked":false}

# Probably unnecessary. Should comment out if you want to minimize data operations.
data modify storage aestd:input nbt.display set from storage manhunt:string mmh.mechanics.tracker.display

data modify storage manhunt:input Dimension set from entity @s Dimension
execute as @p[team=mmh.hunted,tag=mmh.alive] run function manhunt:mechanics/tracker/update/store_to_nbt

execute store result score @s aestd.item.slot run data get entity @s SelectedItemSlot

function aestd1:item/merge_nbt
