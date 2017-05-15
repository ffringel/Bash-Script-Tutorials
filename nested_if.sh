#!/usr/bin/env bash
# Nested if statements

if [ $1 -gt 100 ]
then
    echo Hey that is a large number.

    if [ $1 % 2 == 0 ]
    then
        echo And is also an even number
    fi
fi