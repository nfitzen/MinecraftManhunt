# SPDX-FileCopyrightText: 2020-2021 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

# function manhunt:mechanics/tracker/update/main

#> 0 means it's all good; 1 means it couldn't find a player. 2 means it was a Nether portal.
# @internal
scoreboard players set $tracker.status mmh.tmp 1

data modify storage aestd:input nbt set value {"LodestoneTracked":false}

# Probably unnecessary. Should comment out if you want to minimize data operations.
data modify storage aestd:input nbt.display set from storage manhunt:string mmh.mechanics.tracker.display

data modify storage manhunt:input Dimension set from entity @s Dimension
execute as @p[team=mmh.hunted,tag=mmh.alive] run function manhunt:mechanics/tracker/update/store_to_nbt

execute if score $tracker.status mmh.tmp matches 0 store result score @s aestd.item.slot run data get entity @s SelectedItemSlot

execute if score $tracker.status mmh.tmp matches 0 run function aestd1:item/merge_nbt

execute run function #manhunt:mechanics/tracker/update/message
