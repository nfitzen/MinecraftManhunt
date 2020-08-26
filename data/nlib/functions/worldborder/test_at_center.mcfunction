# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

tp @s ~1 ~ ~

execute store success score $worldborder.center.exists nlib.tmp run data modify entity @s Pos set from storage worldborder.center nlib:input
