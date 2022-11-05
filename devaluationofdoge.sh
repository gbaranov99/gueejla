#!/usr/bin/env zsh
set -euo pipefail
IFS=$'\n\t'

(trap 'kill 0' SIGINT; \
 bash -c 'cd frawnt; trunk serve --proxy-backend=http://[::1]:8081/api/' & \
 bash -c 'cargo watch -- cargo run --bin bawk -- --port 8081')