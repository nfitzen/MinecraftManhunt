# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

# function manhunt:mechanics/count_advancements/count
# called as: @a[team=mmh.hunted], from: ./as_player

scoreboard players set @s mmh.advancements 0
execute store result score @s mmh.advancements run advancement revoke @s until minecraft:story/enter_the_end

scoreboard players set @s mmh.tmp 0
execute store result score @s mmh.tmp run advancement revoke @s until minecraft:nether/obtain_blaze_rod
scoreboard players operation @s mmh.advancements += @s mmh.tmp

scoreboard players add @s[advancements={minecraft:end/kill_dragon=true}] mmh.advancements 1

scoreboard players remove @s[advancements={minecraft:nether/root=true}] mmh.advancements 1
scoreboard players remove @s[advancements={minecraft:story/form_obsidian=true}] mmh.advancements 1

function #manhunt:overrides/mechanics/count_advancements/count
