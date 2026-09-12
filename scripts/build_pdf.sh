#!/usr/bin/env bash
# Build the Hella language specification PDF.
set -ex
cd "$(dirname "$0")/.."
make pdf
