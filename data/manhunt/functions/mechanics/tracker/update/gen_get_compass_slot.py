# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

slotRange = list(range(36))
slotRange.reverse()
slotRange.append(-106)

year = 2020
copyrightHolder = "Nathaniel Fitzenrider"
license = "MIT"

with open('get_compass_slot.mcfunction', 'w') as f:
    start = f"""# SPDX-FileCopyrightText: {year} {copyrightHolder}
#
# SPDX-License-Identifier: {license}

"""
    lines = ('execute if data entity @s Inventory[{"Slot":%db,"id":"minecraft:compass","tag":{"mmh":{"mechanics":{"tracker":true}}}}] run scoreboard players set @s mmh.compass_slot %d' % (i,i) for i in slotRange)
    f.write(start+'\n'.join(lines))
