# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

# function manhunt:mechanics/count_advancements/as_player

execute if entity @s[team=mmh.hunted] run function manhunt:mechanics/count_advancements/count
