# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

function manhunt:mechanics/tracker/give
effect clear @s
tag @s remove mmh.frozen
scoreboard players remove $frozen_size mmh.int 1

function #manhunt:overrides/mechanics/begin/start_game/as_hunter
