#!/bin/bash

unset LD_PRELOAD
export GENTOO=/data/data/com.termux/gentoo
export EPREFIX=/data/gentoo64

proot --link2symlink -r $GENTOO -0 -w / \
    -b /dev -b /proc -b /sys \
    $EPREFIX/bin/sh -c \
    "HOME=$EPREFIX/root $EPREFIX/startprefix"
