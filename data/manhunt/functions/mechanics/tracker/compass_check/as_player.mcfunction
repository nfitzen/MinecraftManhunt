# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

# function manhunt:mechanics/tracker/compass_check/as_player
# called as: @a, from: #manhunt:core/second/as_player

execute if score $game_started mmh.int matches 1.. if entity @s[team=mmh.hunters] unless entity @s[tag=mmh.dead] unless data entity @s {"Inventory":[{"id":"minecraft:compass","tag":{"mmh":{"mechanics":{"tracker":true}}}}]} run function manhunt:mechanics/tracker/give
