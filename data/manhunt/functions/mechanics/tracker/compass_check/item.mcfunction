# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

# function manhunt:mechanics/tracker/compass_check/item
# called from: #manhunt:core/tick

execute as @e[type=minecraft:item] unless data entity @s Owner if data entity @s {"Item":{"id":"minecraft:compass","tag":{"mmh":{"mechanics":{"tracker":true}}}}} run kill @s
