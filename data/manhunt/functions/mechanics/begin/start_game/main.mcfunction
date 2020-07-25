# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

execute as @a run function #manhunt:mechanics/begin/start_game/as_player
function #manhunt:mechanics/begin/start_game/world

execute store result score $worldborder.size mmh.input run data get storage manhunt:settings mmh.mechanics.worldborder.set.game.size
data modify storage manhunt:input mmh.mechanics.worldborder.set.center set from storage manhunt:settings mmh.mechanics.worldborder.set.game.center
function manhunt:mechanics/worldborder/set_from_input

kill 150dfa29-7270-4a29-ab0e-9d0ec42087c2
kill @e[tag=mmh.stickytp]

scoreboard players set $game_started mmh.int 1

function #manhunt:overrides/mechanics/begin/start_game/main
