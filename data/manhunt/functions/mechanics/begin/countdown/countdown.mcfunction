# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

# function manhunt:mechanics/begin/countdown/countdown

execute if score $countdown mmh.int matches ..0 run function #manhunt:mechanics/begin/countdown/start_game
execute if score $countdown mmh.int matches 1.. run title @a subtitle {"nbt":"mmh.mechanics.begin.countdown.subtitle","storage":"manhunt:string"}
execute if score $countdown mmh.int matches 1.. run title @a title {"nbt":"mmh.mechanics.begin.countdown.title","storage":"manhunt:string"}
scoreboard players remove $countdown mmh.int 1

execute if score $countdown mmh.int matches 1.. run schedule function manhunt:mechanics/begin/countdown/countdown 1s replace
