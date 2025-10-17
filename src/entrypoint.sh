#!/usr/bin/bash

if [[ -z "${PB_NAME}" ]]; then
export PB_NAME="PBServer"
fi

if [[ -z "${PB_PORT}" ]]; then
export PB_PORT=64640
fi

if [[ -z "${PB_MAX_CLIENTS}" ]]; then
export PB_MAX_CLIENTS=64
fi

if [[ -z "${PB_MAX_ROOMS}" ]]; then
export PB_MAX_ROOMS=32
fi

if [[ -z "${PB_LATENCY_MODE}" ]]; then
export PB_LATENCY_MODE="low"
fi

cat > PBServerConfig.ini << EOF
[server]
name = ${PB_NAME}
port = ${PB_PORT}
maxClients = ${PB_MAX_CLIENTS}
maxRooms = ${PB_MAX_ROOMS}
latencyMode = ${PB_LATENCY_MODE}
EOF

tmux new-session -d -s pb-session "mono Server.exe"
exec /bin/bash -c "trap : TERM INT; sleep infinity & wait"
