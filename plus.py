#!/usr/bin/python3
# SPDX-FileCopyrightText: 2023 Yukari Watarai
# SPDX-License-Identifier: BSD-3-Clause

import sys 

def tonum(s):
    try:
        return int(s)
    except:
        return float(s)

ans = 0.0
for line in sys.stdin:
    line = line.rstrip()
    ans += float(line)


print('足し算の結果は')
print(ans)
