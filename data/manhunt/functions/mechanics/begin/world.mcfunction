# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

execute as @e[tag=mmh.NoAI] run function manhunt:mechanics/begin/noai

data modify storage nlib:input worldborder set from storage manhunt:settings mmh.mechanics.worldborder.set.head_start
function nlib:worldborder/set_from_input
