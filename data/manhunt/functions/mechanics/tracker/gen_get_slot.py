#!/usr/bin/env python3
# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

slotRange = list(range(36))
slotRange.reverse()
slotRange.append(-106)

year = 2020
copyrightHolder = "Nathaniel Fitzenrider"
license = "MIT"

spdx = 'SPDX-' # ensures automatic SPDX tools don't get it mixed up

with open('get_slot.mcfunction', 'w') as f:
    start = f"""# {spdx}FileCopyrightText: {year} {copyrightHolder}
#
# {spdx}License-Identifier: {license}

"""
    lines = ('execute if data entity @s Inventory[{"Slot":%db,"id":"minecraft:compass","tag":{"mmh":{"mechanics":{"tracker":true}}}}] run scoreboard players set @s mmh.compass_slot %d' % (i,i) for i in slotRange)
    f.write(start+'\n'.join(lines))
