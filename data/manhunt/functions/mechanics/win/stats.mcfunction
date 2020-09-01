# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

# function manhunt:mechanics/win/stats

data modify storage nlib:input StringList set from storage manhunt:string mmh.mechanics.win.stats.message

function #manhunt:overrides/mechanics/win/stats

tag @a add nlib.tellraw_from_list
execute as @a[team=mmh.hunted] run function #manhunt:mechanics/win/stats_as_hunted
