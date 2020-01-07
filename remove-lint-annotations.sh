#!/usr/bin/env bash
find $1 -type f -name '*.java' -exec sed -i'.bak' -e '/@TargetApi/d' -e '/@SuppressLint.*NewApi/d' {} \+
find . -name '*.bak' -exec rm -f {} \+
