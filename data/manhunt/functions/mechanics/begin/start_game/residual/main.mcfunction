# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

execute as @a[team=mmh.hunters,tag=mmh.frozen] run function #manhunt:mechanics/begin/start_game/residual/as_hunter

execute if score $frozen.size mmh.int matches 1.. run schedule function manhunt:mechanics/begin/start_game/residual/main 1s replace
