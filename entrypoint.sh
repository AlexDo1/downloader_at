#!/bin/bash
set -e

umask 002

chmod g+s /data /logs 2>/dev/null || true

exec python src/sync.py "$@"

