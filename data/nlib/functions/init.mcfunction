# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

#declare score_holder $worldborder.size
#declare storage nlib:input

#>
# @public
scoreboard objectives add nlib.input dummy

#>
# @internal
scoreboard objectives add nlib.tmp dummy

scoreboard players set $worldborder.size nlib.input 0
