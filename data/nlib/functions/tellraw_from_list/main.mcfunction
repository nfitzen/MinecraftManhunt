# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

data modify storage nlib:private StringList set from storage nlib:input StringList

function nlib:tellraw_from_list/recurse
