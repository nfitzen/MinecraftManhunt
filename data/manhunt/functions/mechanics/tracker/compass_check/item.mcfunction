# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

# function manhunt:mechanics/tracker/compass_check/item
# called from: #manhunt:core/tick

kill @e[type=minecraft:item,nbt={"Item":{"id":"minecraft:compass","tag":{"tracker":{"enabled":true}}}}]
