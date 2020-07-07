# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

# function manhunt:mechanics/tracker/update/store_to_nbt
# called from: ./as_hunter, as: @p[team=mmh.hunted], context: @a[team=mmh.hunters]

data modify storage aestd:input nbt.LodestonePos.X set from entity @s Pos[0]
data modify storage aestd:input nbt.LodestonePos.Y set from entity @s Pos[1]
data modify storage aestd:input nbt.LodestonePos.Z set from entity @s Pos[2]
data modify storage aestd:input nbt.LodestoneDimension set from entity @s Dimension
