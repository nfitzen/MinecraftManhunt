# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

# function manhunt:mechanics/begin/team_assignment/as_player
# called from: ./main

team join mmh.hunters @s
execute if score $hunted_diff mmh.tmp matches 1.. run team join mmh.hunted @s
scoreboard players remove $hunted_diff mmh.tmp 1

function #manhunt:overrides/mechanics/begin/team_assignment/as_player
