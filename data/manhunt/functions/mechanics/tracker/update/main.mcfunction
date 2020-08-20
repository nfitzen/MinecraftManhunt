# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

# function manhunt:mechanics/tracker/update/main

execute if entity @s[team=mmh.hunters] if data entity @s {"SelectedItem":{"tag":{"mmh":{"mechanics":{"tracker":true}}}}} run function manhunt:mechanics/tracker/update/as_hunter
