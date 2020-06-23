#!/usr/bin/env bash
# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

shopt -s extglob

rm -rf data/aestd.*/

rm -rf -- data/aestd1/tags/!(functions)
rm -rf -- data/aestd1/!(tags)
rm -f data/minecraft/loot_tables/blocks/yellow_shulker_box.json
rmdir --ignore-fail-on-non-empty -p data/minecraft/loot_tables/blocks

cp -rn AESTD/data/aestd* data/
rm -rf data/aestd.tools/ # kinda inefficient but whatever
cp -rn AESTD/data/load/ data/
cp -r AESTD/data/minecraft/loot_tables/ data/minecraft/
