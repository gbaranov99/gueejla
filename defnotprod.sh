#!/usr/bin/env zsh
set -euo pipefail
IFS=$'\n\t'

pushd frawnt
trunk build --public-url /assets/
popd

pushd bawk
cargo run --release -- --port 8080
popd