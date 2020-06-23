# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

data merge storage manhunt:string {"mmh":{"core":{},"mechanics":{}}}

data modify storage manhunt:string mmh.mechanics.begin.title set value '"The Manhunt"'
data modify storage manhunt:string mmh.mechanics.begin.subtitle set value '"has begun!"'

data modify storage manhunt:string mmh.mechanics.win.hunters.title set value '["The ",{"text":"Hunters","color":"red"}]'
data modify storage manhunt:string mmh.mechanics.win.hunters.subtitle set value '{"text":"have won the manhunt!","color":"gold"}'

data modify storage manhunt:string mmh.mechanics.win.hunted.title set value '["The ",{"text":"Hunted","color":"blue"}]'
data modify storage manhunt:string mmh.mechanics.win.hunted.subtitle set value '{"text":"has won the manhunt!","color":"gold"}'

data modify storage manhunt:string mmh.mechanics.tracker.Name set value '{"text":"Tracking Compass","color":"gold"}'
