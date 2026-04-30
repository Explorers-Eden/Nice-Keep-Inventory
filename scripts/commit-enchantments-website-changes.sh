#!/usr/bin/env bash
set -euo pipefail

git config user.name "github-actions[bot]"
git config user.email "41898282+github-actions[bot]@users.noreply.github.com"

git add data/enchantments.json

if git diff --cached --quiet; then
  echo "No changes to commit"
  exit 0
fi

git commit -m "Sync Nice Keep Inventory data"

git remote set-url origin "https://x-access-token:${WEBSITE_REPO_TOKEN}@github.com/Explorers-Eden/enchantments.explorerseden.eu.git"
git push origin HEAD:main
