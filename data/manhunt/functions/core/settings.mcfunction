# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

# function manhunt:core/settings
# called by: #manhunt:core/init

#declare storage manhunt:settings

function #manhunt:core/settings/pre

scoreboard objectives add mmh.settings dummy

data merge storage manhunt:settings {"mmh":{"core":{},"mechanics":{}}}

data modify storage manhunt:settings mmh.mechanics.begin set value {"countdown":{"time":10s,"hunted_gamemode":"adventure"},"team_assignment":{"hunted_size":1s}}

# The Y coordinate can be anything but is included because it minimizes calls to NBT.
data modify storage manhunt:settings mmh.mechanics.worldborder.set set value {"head_start":{},"setup":{"size":40},"game":{"size":60000000,"center":[0d,0d,0d]}}

function #manhunt:core/settings/post
