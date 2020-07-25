# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

tag @s add mmh.frozen

execute at @s summon minecraft:area_effect_cloud ~ ~ ~ {"Radius":0.0,"Duration":2147483647,"Tags":["mmh.stickytp"]}

function #manhunt:overrides/mechanics/begin/countdown/as_hunter
