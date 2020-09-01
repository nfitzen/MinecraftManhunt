#!/usr/bin/env bash
# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

shopt -s extglob

rm -rf data/aestd.*/

rm -rf -- data/aestd1/tags/!(functions)
rm -rf -- data/aestd1/!(tags)
rm -f data/minecraft/loot_tables/blocks/yellow_shulker_box.json
rmdir --ignore-fail-on-non-empty -p data/minecraft/loot_tables/blocks
