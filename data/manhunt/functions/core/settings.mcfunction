# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

# function manhunt:core/settings
# called by: #manhunt:core/init

function #manhunt:core/settings/pre

scoreboard objectives add mmh.settings dummy

data merge storage manhunt:settings {"mmh":{"core":{},"mechanics":{}}}

data modify storage manhunt:settings mmh.mechanics.begin set value {"countdown":{"time":10s}}
data modify storage manhunt:settings mmh.mechanics.begin.team_assignment set value {"hunted_size":1s}

# The Y coordinate can be anything but is included because it minimizes calls to NBT.
data modify storage manhunt:settings mmh.mechanics.worldborder.set set value {"setup":{"size":40},"game":{"size":6000000,"center":[0d,0d,0d]}}

function #manhunt:core/settings/post
