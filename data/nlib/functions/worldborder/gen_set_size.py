#!/usr/bin/env python3
# SPDX-FileCopyrightText: 2020-2021 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

from datetime import date

year = date.today().year

# 60,000,000 == 0b00000011100100111000011100000000
# 26 bits

bits = range(25,-1,-1)

tests = (2**x for x in bits)

year = "2020-" + str(year)
copyrightHolder = "Nathaniel Fitzenrider"
contact = "<https://github.com/nfitzen>"
l = "MIT"

spdx = 'SPDX-' # ensures automatic SPDX tools don't get it mixed up

filename = 'set_size.mcfunction'

with open(filename, 'w') as f:
    start = f"""# {spdx}FileCopyrightText: {year} {copyrightHolder} {contact}
#
# {spdx}License-Identifier: {l}

worldborder set 1

"""
    end = """
worldborder add -1
"""
    repeat = """execute if score $worldborder.size nlib.tmp matches %d.. run worldborder add %d
execute if score $worldborder.size nlib.tmp matches %d.. run scoreboard players remove $worldborder.size nlib.tmp %d"""
    lines = (repeat % (i,i,i,i) for i in tests)
    f.write(start+'\n'.join(lines)+end)
