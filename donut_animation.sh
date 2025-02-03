#!/bin/bash

draw_frame() {
    local number_frame=$1
    sleep .2
    clear
    cat ./frames/frame$number_frame
}

counter=2
inc=1

while true; do
    if [ $counter -eq 8 ] || [ $counter -eq 1 ]; then
        ((inc *= -1))
    fi
    ((counter += inc))
    draw_frame $counter
done