#!/bin/bash

xsetroot -cursor_name left_ptr

trayer --edge top --align right --SetDockType true --SetPartialStrut true \
        --expand true --width 10 --transparent true --alpha 0 \
        --tint black --height 12 &

xmonad
