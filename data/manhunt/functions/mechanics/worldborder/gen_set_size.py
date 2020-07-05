#!/usr/bin/env python3
# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider
#
# SPDX-License-Identifier: MIT

# 60,000,000 == 0b00000011100100111000011100000000
# 26 bits

bits = range(26)

tests = (2**x for x in bits)

year = 2020
copyrightHolder = "Nathaniel Fitzenrider"
license = "MIT"

spdx = 'SPDX-' # ensures automatic SPDX tools don't get it mixed up

filename = 'set_size.mcfunction'

with open(filename, 'w') as f:
    start = f"""# {spdx}FileCopyrightText: {year} {copyrightHolder}
#
# {spdx}License-Identifier: {license}

worldborder set 0

"""
    lines = ('execute if score $worldborder.size mmh.input matches %d.. run worldborder add %d' % (i,i) for i in tests)
    f.write(start+'\n'.join(lines))
