# SPDX-FileCopyrightText: 2020-2021 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

# function manhunt:mechanics/tracker/update/main

execute if entity @s[team=mmh.hunters] if data entity @s {"SelectedItem":{"tag":{"tracker":{"enabled":true}}}} at @s run function manhunt:mechanics/tracker/update/as_hunter
