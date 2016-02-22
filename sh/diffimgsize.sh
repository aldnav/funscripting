#!/bin/bash
echo $1 # source 1 dir
echo $2 # source 2 dir

for i in $( comm -12 <(ls -F $1) <(ls -F $1) ); do
    printf "%30s %14s %14s" $i $(identify -format '%wx%h' $1/$i) $(identify -format '%wx%h' $2/$i)
    echo
done
