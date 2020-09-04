# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

gamerule doDaylightCycle true
weather rain 1
gamerule doMobSpawning true

data modify storage nlib:input worldborder set from storage manhunt:settings mmh.mechanics.worldborder.set.game

function nlib:worldborder/set_from_input

function #manhunt:overrides/mechanics/begin/start_game/world
