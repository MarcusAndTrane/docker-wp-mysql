#!/usr/bin/env bash
#

SOURCE_ENV=${1:-".env"}

$(cat "$SOURCE_ENV" | sed '/^#/d' | sed '/^$/d' | sed 's/^/export /')
