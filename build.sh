#!/usr/bin/env bash
# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

mkdir .build releases

cp -r data/ ./pack.mcmeta .build/

cp -r AESTD/ .build/

cp -r .reuse/ LICENSE LICENSES/ README.md .build/

cd .build

cp -rn AESTD/data/aestd* data/
rm -rf data/aestd.tools/ # kinda inefficient but whatever
cp -rn AESTD/data/load/ data/
cp -r AESTD/data/minecraft/loot_tables/ data/minecraft/

zip -r MinecraftManhunt.zip data/ pack.mcmeta .reuse/ LICENSE LICENSES/ README.md

cd ..

cp .build/MinecraftManhunt.zip releases/

rm -r .build/
