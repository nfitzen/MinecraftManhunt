# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

data modify entity ad7a10d4-7d3c-4f43-86bb-da872d12bb79 Pos set from storage nlib:input worldborder.center

execute at @s run worldborder center ~ ~

kill @s
