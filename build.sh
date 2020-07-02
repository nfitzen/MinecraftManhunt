#!/usr/bin/env bash
# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

rm -r .build/
mkdir .build releases .build/files

cp -r data/ ./pack.mcmeta .build/files/

cp -r AESTD/ .build/

cp -r .reuse/ LICENSE LICENSES/ README.md .build/files

cd .build

cp -rn AESTD/data/aestd*/ files/data
rm -rf files/data/aestd.tools/ # kinda inefficient but whatever
cp -rn AESTD/data/load/ files/data/
cp -r AESTD/data/minecraft/loot_tables/ files/data/minecraft/

cd files

zip -r ../../releases/MinecraftManhunt.zip *

# cd ../..

# cp .build/MinecraftManhunt.zip releases/
