#! /usr/bin/env sh

SCRIPT_DIRECTORY="$(dirname -- "$(readlink -f -- "$0")")"
PROJECT_DIRECTORY="$(dirname -- "$SCRIPT_DIRECTORY")"

REPO_NAME="rebornos-labs"
ARCHITECTURE="x86_64"
COMPRESSION="xz"

LOCAL_REPO_DIRECTORY="$PROJECT_DIRECTORY/repositories/$REPO_NAME/os/$ARCHITECTURE"

(
    set -o xtrace
    cd "$LOCAL_REPO_DIRECTORY" \
    && rm -f "$REPO_NAME".db* \
    && rm -f "$REPO_NAME".files* \
    && repo-add "$REPO_NAME".db.tar."$COMPRESSION" *.pkg.tar.* \
    && rm -f "$REPO_NAME".db \
    && rm -f "$REPO_NAME".files \
    && cp "$REPO_NAME".db.tar."$COMPRESSION" "$REPO_NAME".db \
    && cp "$REPO_NAME".files.tar."$COMPRESSION" "$REPO_NAME".files
    set +o xtrace
)
