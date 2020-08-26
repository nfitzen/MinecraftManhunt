# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

gamerule doDaylightCycle true
weather rain 1
gamerule doMobSpawning true

data modify storage manhunt:input worldborder.center set from storage manhunt:settings mmh.mechanics.worldborder.set.game.center
execute store result score $worldborder.size nlib.input run data get storage manhunt:settings mmh.mechanics.worldborder.set.game.size

function nlib:worldborder/set_from_input

function #manhunt:overrides/mechanics/begin/start_game/world
