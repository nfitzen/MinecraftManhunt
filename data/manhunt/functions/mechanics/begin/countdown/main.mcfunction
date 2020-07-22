# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

execute as @a[team=mmh.hunters] run function manhunt:mechanics/begin/countdown/as_hunter
execute as @a[team=mmh.hunted] run function manhunt:mechanics/begin/countdown/as_hunted

execute store result score $countdown mmh.int run data get storage manhunt:settings mmh.mechanics.begin.countdown.time

function manhunt:mechanics/begin/countdown/countdown

function #manhunt:overrides/mechanics/begin/countdown/main
