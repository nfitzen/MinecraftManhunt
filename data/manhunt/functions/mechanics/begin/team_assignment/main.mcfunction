# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

# function manhunt:mechanics/begin/team_assignment/main,
# tag #manhunt:mechanics/begin/team_assignment
# called from: ../main

execute store result score $current_hunted mmh.tmp if entity @a[team=mmh.hunted]
execute store result score $hunted_size mmh.int run data get storage manhunt:settings mmh.mechanics.begin.team_assignment.hunted_size

scoreboard players operation $hunted_diff mmh.tmp = $hunted_size mmh.int
scoreboard players operation $hunted_diff mmh.tmp -= $current_hunted mmh.tmp

execute as @a[sort=random,team=] run function manhunt:mechanics/begin/team_assignment/as_player

execute store result score $hunted_size mmh.int if entity @a[team=mmh.hunted]

function #manhunt:overrides/mechanics/begin/team_assignment/main