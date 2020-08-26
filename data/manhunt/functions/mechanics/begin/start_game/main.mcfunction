# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

execute as @a run function #manhunt:mechanics/begin/start_game/as_player
function #manhunt:mechanics/begin/start_game/world

kill 150dfa29-7270-4a29-ab0e-9d0ec42087c2
kill @e[tag=mmh.stickytp]

scoreboard players set $game_started mmh.int 1

function #manhunt:overrides/mechanics/begin/start_game/main
