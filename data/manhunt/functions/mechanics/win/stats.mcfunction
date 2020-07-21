# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

# function manhunt:mechanics/win/stats

data modify storage nlib:input StringList set from storage manhunt:string mmh.mechanics.win.stats.message

tag @a add nlib.tellraw_from_list
execute as @a[team=mmh.hunted] run function #nlib:tellraw_from_list
