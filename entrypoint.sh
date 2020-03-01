#!/bin/sh
set -eu

if [ -z "$GOLANGCI_LINT_WORKSPACE" ];
then
    cd "$GITHUB_WORKSPACE"
else
    cd "$GOLANGCI_LINT_WORKSPACE"
fi

golangci-lint "$@"
