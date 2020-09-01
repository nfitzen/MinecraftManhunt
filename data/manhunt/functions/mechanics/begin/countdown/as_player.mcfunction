# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

execute as @s[team=mmh.hunters] run function manhunt:mechanics/begin/countdown/as_hunter
execute as @s[team=mmh.hunted] run function manhunt:mechanics/begin/countdown/as_hunted
