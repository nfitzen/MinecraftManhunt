# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

# function manhunt:mechanics/begin/countdown/countdown

execute if score $countdown mmh.int matches ..0 run function #manhunt:mechanics/begin/start_game
execute if score $countdown mmh.int matches 1.. run title @a subtitle {"nbt":"mmh.mechanics.begin.countdown.subtitle","storage":"manhunt:string","interpret":true}
execute if score $countdown mmh.int matches 1.. run title @a title {"nbt":"mmh.mechanics.begin.countdown.title","storage":"manhunt:string","interpret":true}

execute if score $countdown mmh.int matches 1.. run schedule function manhunt:mechanics/begin/countdown/countdown 1s replace

scoreboard players remove $countdown mmh.int 1

function #manhunt:overrides/mechanics/begin/countdown/countdown
