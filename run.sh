#!/bin/sh

echo "hello world"
if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
    echo "is wayland"
    exec zypak-wrapper.sh /app/main/chess-comp-stomp-with-hacks --ozone-platform-hint=auto "$@"  
else
    echo "is not wayland"
    exec zypak-wrapper.sh /app/main/chess-comp-stomp-with-hacks "$@"  
fi

echo "xdgsessiontype is $XDG_SESSION_TYPE hmmmmm"
