# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

data merge storage manhunt:string {"mmh":{"core":{},"mechanics":{}}}

data modify storage manhunt:string mmh.mechanics.begin.countdown.title set value ""
data modify storage manhunt:string mmh.mechanics.begin.countdown.subtitle set value '{"score":{"name":"$countdown","objective":"mmh.int"}}'
data modify storage manhunt:string mmh.mechanics.begin.start.title set value '"The Manhunt"'
data modify storage manhunt:string mmh.mechanics.begin.start.subtitle set value '"has begun!"'

data modify storage manhunt:string mmh.mechanics.win.hunters.title set value '["The ",{"text":"Hunters","color":"red"}]'
data modify storage manhunt:string mmh.mechanics.win.hunters.subtitle set value '{"text":"have won the manhunt!","color":"gold"}'

data modify storage manhunt:string mmh.mechanics.win.hunted.title set value '["The ",{"text":"Hunted","color":"blue"}]'
data modify storage manhunt:string mmh.mechanics.win.hunted.subtitle set value '{"text":"has won the manhunt!","color":"gold"}'

data modify storage manhunt:string mmh.mechanics.tracker.display.Name set value '{"text":"Tracking Compass","color":"gold","italic":false}'


data modify storage manhunt:string mmh.mechanics.win.stats.message set value []
data modify storage manhunt:string mmh.mechanics.win.stats.message append value '{"text":"--------------------","color":"green"}'
data modify storage manhunt:string mmh.mechanics.win.stats.message append value "[{\"text\":\"\",\"color\":\"grey\"},{\"selector\":\"@s\"},\"'s stats:\"]"
data modify storage manhunt:string mmh.mechanics.win.stats.message append value '{"nbt":"mmh.mechanics.win.stats.finished","storage":"manhunt:input","interpret":true}'
data modify storage manhunt:string mmh.mechanics.win.stats.message append value '["",{"text":"Advancements -- ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"mmh.advancements"}}]'
data modify storage manhunt:string mmh.mechanics.win.stats.message append value '["",{"text":"Time alive -- ","color":"gold"},{"color":"green","score":{"name":"@s","objective":"mmh.time_alive"}}]'
data modify storage manhunt:string mmh.mechanics.win.stats.message append value '{"text":"--------------------","color":"green"}'

data modify storage manhunt:string mmh.mechanics.win.stats.finished.true set value '{"text":"Finished the game!","color":"green","bold":true}'
data modify storage manhunt:string mmh.mechanics.win.stats.finished.false set value '{"text":"Didn\'t finish the game.","color":"red","bold":true}'
