#!/bin/sh

# Discord RPC
for i in {0..9}; do
    test -S $XDG_RUNTIME_DIR/discord-ipc-$i || ln -sf {app/com.discordapp.Discord,$XDG_RUNTIME_DIR}/discord-ipc-$i;
done

cd /app/lib/an-anime-game-launcher
exec ./an-anime-game-launcher "$@"
