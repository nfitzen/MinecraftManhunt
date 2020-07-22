# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

gamemode adventure @s
execute if data storage manhunt:settings {"mmh":{"mechanics":{"begin":{"countdown":{"hunted_gamemode":"survival"}}}}} run gamemode survival @s

function #manhunt:overrides/mechanics/begin/countdown/as_hunted
