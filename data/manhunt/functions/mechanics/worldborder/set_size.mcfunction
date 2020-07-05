# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

worldborder set 0

execute if score $worldborder.size mmh.input matches 1.. run worldborder add 1
execute if score $worldborder.size mmh.input matches 2.. run worldborder add 2
execute if score $worldborder.size mmh.input matches 4.. run worldborder add 4
execute if score $worldborder.size mmh.input matches 8.. run worldborder add 8
execute if score $worldborder.size mmh.input matches 16.. run worldborder add 16
execute if score $worldborder.size mmh.input matches 32.. run worldborder add 32
execute if score $worldborder.size mmh.input matches 64.. run worldborder add 64
execute if score $worldborder.size mmh.input matches 128.. run worldborder add 128
execute if score $worldborder.size mmh.input matches 256.. run worldborder add 256
execute if score $worldborder.size mmh.input matches 512.. run worldborder add 512
execute if score $worldborder.size mmh.input matches 1024.. run worldborder add 1024
execute if score $worldborder.size mmh.input matches 2048.. run worldborder add 2048
execute if score $worldborder.size mmh.input matches 4096.. run worldborder add 4096
execute if score $worldborder.size mmh.input matches 8192.. run worldborder add 8192
execute if score $worldborder.size mmh.input matches 16384.. run worldborder add 16384
execute if score $worldborder.size mmh.input matches 32768.. run worldborder add 32768
execute if score $worldborder.size mmh.input matches 65536.. run worldborder add 65536
execute if score $worldborder.size mmh.input matches 131072.. run worldborder add 131072
execute if score $worldborder.size mmh.input matches 262144.. run worldborder add 262144
execute if score $worldborder.size mmh.input matches 524288.. run worldborder add 524288
execute if score $worldborder.size mmh.input matches 1048576.. run worldborder add 1048576
execute if score $worldborder.size mmh.input matches 2097152.. run worldborder add 2097152
execute if score $worldborder.size mmh.input matches 4194304.. run worldborder add 4194304
execute if score $worldborder.size mmh.input matches 8388608.. run worldborder add 8388608
execute if score $worldborder.size mmh.input matches 16777216.. run worldborder add 16777216
execute if score $worldborder.size mmh.input matches 33554432.. run worldborder add 33554432