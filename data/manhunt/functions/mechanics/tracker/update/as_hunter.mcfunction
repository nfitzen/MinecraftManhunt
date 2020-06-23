# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

# function manhunt:mechanics/tracker/update/main

data modify storage aestd:input nbt set value {}

tag @e[team=mmh.hunted,limit=1,sort=nearest] add mmh.tracked

data modify storage aestd:input nbt.LodestonePos.X set from entity @e[tag=mmh.tracked,limit=1,sort=nearest] Pos[0]
data modify storage aestd:input nbt.LodestonePos.Y set from entity @e[tag=mmh.tracked,limit=1,sort=nearest] Pos[1]
data modify storage aestd:input nbt.LodestonePos.Z set from entity @e[tag=mmh.tracked,limit=1,sort=nearest] Pos[2]

function manhunt:mechanics/tracker/update/get_compass_slot

scoreboard players operation @s aestd.item.slot = @s mmh.compass_slot

function aestd1:item/merge_nbt
