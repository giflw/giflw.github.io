#!/usr/bin/env bash
set -euo pipefail

if [ -z "$1" ]; then
    echo "Commit message MUST be supplied"
else
    echo "Publishing '$1'"
fi

mvn clean jbake:generate
git add public
git commit -a -m "$1"
git push