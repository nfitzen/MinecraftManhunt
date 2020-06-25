# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

# function manhunt:mechanics/tracker/compass_check/as_player
# called as: @a, from: #manhunt:core/second/as_player

execute as @s[team=mmh.hunters,nbt={"Inventory":[{"id":"minecraft:compass","tag":{"mmh":{"mechanics":{"tracker":true}}}}]}] run function manhunt:mechanics/tracker/give
