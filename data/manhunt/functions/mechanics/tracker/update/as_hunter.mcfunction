# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

# function manhunt:mechanics/tracker/update/main

data modify storage aestd:input nbt set value {}

data modify storage aestd:input nbt.LodestonePos.X set from entity @p[team=mmh.hunted] Pos[0]
data modify storage aestd:input nbt.LodestonePos.Y set from entity @p[team=mmh.hunted] Pos[1]
data modify storage aestd:input nbt.LodestonePos.Z set from entity @p[team=mmh.hunted] Pos[2]

function manhunt:mechanics/tracker/update/get_compass_slot

scoreboard players operation @s aestd.item.slot = @s mmh.compass_slot

function aestd1:item/merge_nbt
