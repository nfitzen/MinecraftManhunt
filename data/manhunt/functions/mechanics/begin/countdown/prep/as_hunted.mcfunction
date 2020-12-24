# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

gamemode survival @s
execute if data storage manhunt:settings {"mmh":{"mechanics":{"begin":{"countdown":{"hunted_gamemode":"adventure"}}}}} run gamemode adventure @s

function #manhunt:overrides/mechanics/begin/countdown/prep/as_hunted
