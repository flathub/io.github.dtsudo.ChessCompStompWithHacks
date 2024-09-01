#!/bin/sh

WAYLAND_SOCKET = ${WAYLAND_DISPLAY:-"wayland-0"}

if [[ -e "$XDG_RUNTIME_DIR/${WAYLAND_SOCKET}" ]]; then
    exec zypak-wrapper.sh /app/main/chess-comp-stomp-with-hacks --ozone-platform-hint=auto "$@"  
else
    exec zypak-wrapper.sh /app/main/chess-comp-stomp-with-hacks "$@"  
fi
