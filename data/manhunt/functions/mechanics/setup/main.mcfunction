# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

# function manhunt:mechanics/setup/main
# called as/at: server op

scoreboard players set $game_started mmh.int 0

kill 150dfa29-7270-4a29-ab0e-9d0ec42087c2
summon minecraft:area_effect_cloud ~ ~ ~ {"Radius":0.0,"Duration":2147483647,"Tags":["mmh.center"],"UUID":[I;353237545,1919961641,-1425105650,-1004501054]}

setworldspawn ~ ~ ~
execute as @a run function manhunt:mechanics/setup/as_player

function manhunt:mechanics/setup/world_setup

execute store result score $worldborder.size mmh.input run data get storage manhunt:settings mmh.mechanics.worldborder.set.setup.size
data modify storage manhunt:input mmh.mechanics.worldborder.set.center set from entity @s Pos
execute if data storage manhunt:settings mmh.mechanics.worldborder.set.setup.center run data modify storage manhunt:input mmh.mechanics.worldborder.set.center set from storage manhunt:settings mmh.mechanics.worldborder.set.setup.center

function manhunt:mechanics/worldborder/set_from_input
