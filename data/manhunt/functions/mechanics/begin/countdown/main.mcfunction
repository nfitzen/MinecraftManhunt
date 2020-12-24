# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

scoreboard players set $frozen_size mmh.int 0
execute as @a run function manhunt:mechanics/begin/countdown/prep/as_player

scoreboard players set $countdown mmh.int 60
execute store result score $countdown mmh.int run data get storage manhunt:settings mmh.mechanics.begin.countdown.time

function manhunt:mechanics/begin/countdown/countdown

function #manhunt:overrides/mechanics/begin/countdown/main
