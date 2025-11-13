#!/bin/bash -xv
# SPDX-FileCopyrightText: 2025 Yusaku Aka
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0


### NORMAL INSERT ###

input_data=$(printf "1.00\n1.02\n1.11\n1.23\n")
output_data=$(printf "1.0\n1.0\n1.11\n1.23\n")

output=$(echo "$input_data" | ./dzone)
test "$output" = "$output_data" || ng "$LINENO"

### STRANGE INSERT ###

#CASE1
input_str="あ\nい\nう\nえ\nお\n"
output=$(echo "$input_str" | ./dzone)

test "$?" = 1 || ng "$LINENO"
test "$output" = "" || ng "$LINENO"

#CASE2
input_emp="\n"
output=$(echo "$input_emp" | ./dzone)

test "$?" = 1 || ng "$LINENO"
test "$output" = "" || ng "$LINENO"

test "$res" = 0 && echo OK
exit $res
