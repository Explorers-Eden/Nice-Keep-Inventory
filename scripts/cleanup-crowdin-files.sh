#!/usr/bin/env bash
set -euo pipefail

rm -f .crowdin-temp.yml
rm -f assets/keepinv/lang/en_US.json
rm -f assets/keepinv/lang/en_MY.json
cp "$RUNNER_TEMP/crowdin-backup/en_us.json" assets/keepinv/lang/en_us.json
