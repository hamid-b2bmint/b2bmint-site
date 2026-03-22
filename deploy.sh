#!/bin/bash
cd ~/Desktop/b2bmint-site
export PATH="$HOME/bin:$PATH"
git add -A
MSG=${1:-"Update: $(date '+%Y-%m-%d %H:%M')"}
git commit -m "$MSG"
git push
echo ""
echo "Deployed. Live at dev.b2bmint.com in ~30 seconds."
echo "   (or at $(gh api repos/hamid-b2bmint/b2bmint-site/pages --jq '.html_url' 2>/dev/null))"
