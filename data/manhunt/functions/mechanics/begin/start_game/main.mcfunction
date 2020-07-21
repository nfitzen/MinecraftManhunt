# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

execute as @a run function manhunt:mechanics/begin/start_game/as_player

execute store result score $worldborder.size mmh.input run data get storage manhunt:settings mmh.mechanics.worldborder.set.game.size
data modify storage manhunt:input mmh.mechanics.worldborder.set.center set from storage manhunt:settings mmh.mechanics.set.game.center
function manhunt:mechanics/worldborder/set_from_input

title @a title {"nbt":"mmh.mechanics.begin.start.title","storage":"manhunt:string"}
scoreboard players set $game_started mmh.int 1
