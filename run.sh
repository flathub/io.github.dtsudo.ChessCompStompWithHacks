#!/bin/sh

if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
    exec zypak-wrapper.sh /app/main/chess-comp-stomp-with-hacks --ozone-platform-hint=auto "$@"  
else
    exec zypak-wrapper.sh /app/main/chess-comp-stomp-with-hacks "$@"  
fi
