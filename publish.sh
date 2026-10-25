#!/bin/bash
# publish.sh — commit and push all changes to inprocess.garden

cd "$(dirname "$0")"

MSG="${1:-Update content}"

git add .
git commit -m "$MSG" 2>/dev/null || echo "Nothing new to commit."
git push origin v5

echo "Done. Site will update at https://inprocess.garden in ~1 minute."
