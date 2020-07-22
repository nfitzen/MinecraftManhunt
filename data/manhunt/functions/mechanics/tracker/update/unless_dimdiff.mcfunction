# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

# function manhunt:mechanics/tracker/update/unless_dimdiff
# called from: ./store_to_nbt

data modify storage aestd:input nbt.LodestonePos.X set from entity @s Pos[0]
data modify storage aestd:input nbt.LodestonePos.Y set from entity @s Pos[1]
data modify storage aestd:input nbt.LodestonePos.Z set from entity @s Pos[2]
data modify storage aestd:input nbt.LodestoneDimension set from entity @s Dimension