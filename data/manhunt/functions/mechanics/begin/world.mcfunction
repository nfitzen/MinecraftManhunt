# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

data modify storage manhunt:input worldborder.center set from storage manhunt:settings mmh.mechanics.worldborder.set.head_start.center
execute store result score $worldborder.size nlib.input run data get storage manhunt:settings mmh.mechanics.worldborder.set.head_start.size

function nlib:worldborder/set_from_input
