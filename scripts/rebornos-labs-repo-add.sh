#! /usr/bin/env sh

USER="$(whoami)"
PWD="$(pwd)"
SCRIPT_DIRECTORY="$(dirname -- "$(readlink -f -- "$0")")"
PROJECT_DIRECTORY="$(dirname -- "$SCRIPT_DIRECTORY")"

REPO_PATH="repositories/rebornos-labs/os/x86_64/rebornos-labs.db.tar.xz"

"$SCRIPT_DIRECTORY"/repo-add.sh "$REPO_PATH" "$@"

