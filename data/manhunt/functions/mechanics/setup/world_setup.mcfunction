# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

gamerule doDaylightCycle false
time set 0
weather rain 1

gamerule doMobSpawning false
execute as @e[type=#aestd1:mobs,tag=!mmh.NoAI] run function manhunt:mechanics/setup/noai
