# SPDX-FileCopyrightText: 2020 Nathaniel Fitzenrider <https://github.com/nfitzen>
#
# SPDX-License-Identifier: MIT

execute unless data storage manhunt:settings {"mmh":{"mechanics":{"begin":{"countdown":{"stickytp":false}}}}} run function manhunt:mechanics/begin/countdown/prep/enable_sticky

function #manhunt:overrides/mechanics/begin/countdown/prep/as_hunter
