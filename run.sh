#!/bin/sh

exec zypak-wrapper.sh /app/main/chess-comp-stomp-with-hacks --enable-features=UseOzonePlatform,WaylandWindowDecorations --ozone-platform-hint=auto "$@"  
