#!/bin/bash 
# SPDX-FileCopyrightText: 2023 Yukari Watarai
# SPDX-License-Identifier: BSD-3-Clause


ng () {
	echo NG at Line $1
	res=1

}

res=0

#「seq 5」を入力
out=$(seq 5 | ./plus.py)

[ "$res" = 0 ] && echo OK

out=$(seq 5 | ./times.py)
[ "${out}" = 120.0 ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK

#「あ」を入力
out=$(echo あ | ./plus.py)
[ "$?" = 1 ]       || ng ${LINENO}
[ "${out}" = "" ]  || ng ${LINENO}

out=$(echo あ | ./times.py)
[ "$?" = 1 ] || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

#「echo」を入力
out=$(echo | ./plus.py)
[ "$?" = 1 ]       || ng ${LINENO}
[ "${out}" = "" ]  || ng ${LINENO}

out=$(echo | ./times.py)
[ "$?" = 1 ] || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res
