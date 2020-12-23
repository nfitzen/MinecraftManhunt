#> manhunt:core/settings
# called by: #manhunt:core/init
# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

# function manhunt:core/settings
# called by: #manhunt:core/init

#>
#@public
#declare storage manhunt:settings

#>
#@private
#declare storage manhunt:default_settings

function #manhunt:core/settings/pre

scoreboard objectives add mmh.settings dummy

data remove storage manhunt:default_settings mmh

data modify storage manhunt:default_settings mmh.mechanics.begin set value {"countdown":{"time":60s,"hunted_gamemode":"survival"},"team_assignment":{"hunted_size":1s}}

data modify storage manhunt:default_settings mmh.mechanics.setup.NoAI set value false

# The Y coordinate can be anything but is included because it minimizes calls to NBT.
# head_start is left blank but follows the same pattern as all the other worldborder settings
# and modifies the worldborder during countdown.
data modify storage manhunt:default_settings mmh.mechanics.worldborder.set set value {"head_start":{"size":60000000,"center":[0d,0d,0d]},"setup":{"size":40},"game":{"size":60000000,"center":[0d,0d,0d]}}

execute unless data storage manhunt:settings mmh run data modify storage manhunt:settings mmh set from storage manhunt:default_settings mmh

function #manhunt:core/settings/post
