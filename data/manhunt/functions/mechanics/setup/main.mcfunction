# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

# function manhunt:mechanics/setup/main
# called as/at: server op

scoreboard players set $game_started mmh.int 0

kill 150dfa29-7270-4a29-ab0e-9d0ec42087c2
summon minecraft:area_effect_cloud ~ ~ ~ {"Radius":0.0f,"Duration":2147483647,"Tags":["mmh.center"],"UUID":[I;353237545,1919961641,-1425105650,-1004501054]}

setworldspawn ~ ~ ~
execute as @a run function manhunt:mechanics/setup/as_player

function manhunt:mechanics/setup/world_setup
