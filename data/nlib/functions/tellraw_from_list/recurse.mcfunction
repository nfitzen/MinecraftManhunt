# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

# function nlib:tellraw_from_list/recurse
# called from: ./main, as: @s

tellraw @a[tag=nlib.tellraw_from_list] {"nbt":"StringList[0]","storage":"nlib:private","interpret":true}
data remove storage nlib:input StringList[0]

execute if data storage nlib:input StringList[0] run function nlib:tellraw_from_list/recurse
