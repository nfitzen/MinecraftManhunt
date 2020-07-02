# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

# function manhunt:mechanics/tracker/update/main

data modify storage aestd:input nbt set value {}
data modify storage aestd:input nbt.display set from storage manhunt:string mmh.mechanics.tracker.display

execute as @p[team=mmh.hunted] run function manhunt:mechanics/tracker/update/store_to_nbt

function manhunt:mechanics/tracker/get_slot

scoreboard players operation @s aestd.item.slot = @s mmh.compass_slot

function aestd1:item/merge_nbt
