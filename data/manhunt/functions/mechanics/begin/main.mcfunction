# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

# function manhunt:mechanics/begin/main

execute as @e[tag=mmh.NoAI] run function manhunt:mechanics/begin/noai

function #manhunt:mechanics/begin/team_assignment

execute as @a run function manhunt:mechanics/begin/as_player

function manhunt:mechanics/begin/countdown/main

function #manhunt:overrides/mechanics/begin/main
