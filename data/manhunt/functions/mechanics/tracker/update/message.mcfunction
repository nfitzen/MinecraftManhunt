# SPDX-FileCopyrightText: 2021 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

execute if score $tracker.status mmh.tmp matches 0 run title @s actionbar {"storage":"manhunt:string","nbt":"mmh.mechanics.tracker.message.0","interpret":true}
execute if score $tracker.status mmh.tmp matches 1 run title @s actionbar {"storage":"manhunt:string","nbt":"mmh.mechanics.tracker.message.1","interpret":true}
