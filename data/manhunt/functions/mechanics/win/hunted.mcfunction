# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

execute as @a run function manhunt:mechanics/win/hunted_title

function #manhunt:mechanics/win/stats

scoreboard players set $game_started mmh.int 0
