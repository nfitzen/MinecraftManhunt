# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

# function manhunt:mechanics/tracker/update/if_nether
# called from: ./store_to_nbt

data modify storage aestd:input nbt.LodestonePos.X set from entity @s enteredNetherPosition.x
data modify storage aestd:input nbt.LodestonePos.Y set from entity @s enteredNetherPosition.y
data modify storage aestd:input nbt.LodestonePos.Z set from entity @s enteredNetherPosition.z
data modify storage aestd:input nbt.LodestoneDimension set value "minecraft:overworld"
