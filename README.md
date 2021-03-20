<!--
  ~ SPDX-FileCopyrightText: 2020-2021 Nathaniel Fitzenrider <https://github.com/nfitzen>
  ~
  ~ SPDX-License-Identifier: MIT
  -->

# Minecraft Manhunt
Inspired by [Dream]'s Minecraft Manhunt series [on YouTube][mcmanhunt-yt].
Designed for Minecraft 1.16.2+. It's certainly poorly designed, but it's gratis
and [free][fsd], and we all like both don't we.

[Dream]: https://www.youtube.com/channel/UCTkXRDQl0luXxVQrRQvWS6w
[mcmanhunt-yt]: https://www.youtube.com/playlist?list=PLChiKQUYPsJ9_ZXHeT287Ry2tIX1AiSkq
[fsd]: https://www.gnu.org/philosophy/free-sw.html "Free as in freedom, not price."


## Usage

### Quick start

1. Run `function #manhunt:setup`.
    - This isn't required, but it'll freeze the game (daylight cycle, etc.) until everyone's ready.
2. Run `function #manhunt:begin` to begin.
    - It'll randomly assign one person as being hunted and the rest to being hunters.

### More advanced setup

1. Run `function #manhunt:setup`.
    - Smack your friends around until everyone joins.

2. Change settings as you see fit with `data modify`.

    - Run `data get storage manhunt:settings` to see all settings.
    - Make sure the worldborder size is more than double the `spawnRadius`
        gamerule!

3. Assign teams with `team join mmh.hunters <player>`
    or `team join mmh.hunted <player>`.

    - The game will randomly assign a hunted player
        if the number of hunted players is less than 1 (or whatever `mmh.mechanics.begin.team_assignment.hunted_size` is) when the game begins.

4. Make sure everyone is technically alive; some players might not be frozen properly if not.

5. Run `function #manhunt:begin` to begin.

### Trackers
Some features of the trackers are:
- Doesn't update when in different dimensions
    - Except if you're in the overworld and the target is in the Nether; then, it updates to the coords the person entered the Nether
- Updates every tick
- You won't be able to mine, e.g., dirt, while holding the tracker if the target's in the same dimension as you are.
    - A planned update will notify the player if no one is in the same dimension.
- Trackers blindly track the nearest player, without telling you information like their username (might be changed)
- You can't move the tracker around in your inventory without the number keys.

## Building from Source

Run `./build.sh` to create a ZIP file in the `releases` folder. Works best on [GNU/Linux](//gnu.org/gnu/linux-and-gnu.html).

I'll try to detect 7-Zip if on Windows later on, but for now the files to be zipped are in `.build/files`. You can upload that to GitHub releases or share it with friends or something idk.

Also, I sometimes post fixes to things in releases in `master` because I'm bad at programming and versioning; as such, you can also download this repo as a ZIP if you wish to use it personally; the build script just bundles AESTD. Make sure to also put [AESTD] in your `datapacks` folder.

## Credits
- [daatguy](//github.com/daatguy) for pushing me to make this
- [Aeldrion] for [AESTD]
- The [Minecraft Wiki](//minecraft.gamepedia.com/) and [r/MinecraftCommands] for
    resources and documentation
- [Lantern] for their [Load library][Lantern Load]

[r/MinecraftCommands]: https://reddit.com/r/MinecraftCommands

## Copyright
This datapack is licensed under the [Expat/MIT License](LICENSE).

[AESTD] is licensed under the [0BSD license](LICENSES/0BSD.txt).

[Lantern Load] is licensed under [CC0 1.0](LICENSES/CC0-1.0.txt).

See the [dep5 file](.reuse/dep5) and/or individual files for more information
on copyright and licensing (and a link to the source code, if using the built
release).
(You could also use the [REUSE initiative]'s handy tool.)

## URL to Source

If you're reading this in a pre-bundled ZIP, you can find the URL to the source
code in the [pack.mcmeta](pack.mcmeta) and [dep5](.reuse/dep5) files.

[REUSE Initiative]: https://reuse.software/

[Aeldrion]: https://github.com/Aeldrion
[Lantern]: https://github.com/LanternMC
[AESTD]: https://github.com/Aeldrion/AESTD
[Lantern Load]: https://github.com/LanternMC/Load
