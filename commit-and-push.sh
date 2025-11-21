#!/bin/bash

# Navigate to your bazzite-custom-image directory
cd ~/workspace/bazzite-custom-image

# Check git status
echo "=== Git Status ==="
git status

# Stage the recipe.yml changes
echo -e "\n=== Staging changes ==="
git add recipes/recipe.yml

# Commit with descriptive message
echo -e "\n=== Committing changes ==="
git commit -m "Add apps and GNOME extensions

Applications added:
- neovim, vlc, ffmpeg, speedtest-cli
- Google Antigravity IDE
- Teams for Linux
- Gradia (screenshot tool)
- Reqable (HTTP debugging)
- Logseq Desktop
- Standard Notes
- Field Monitor (remote desktop)
- NetPeek (network scanner)
- Podman Desktop

GNOME Extensions added:
- Dash to Dock
- Dash to Panel
- Clipboard Indicator
- Desktop Icons NG
- Extension List
- Just Perfection
- Quick Close in Overview
- Tiling Shell
- Vitals
- Weather O'Clock
- Weather or Not"

# Push to remote
echo -e "\n=== Pushing to remote ==="
git push

echo -e "\n=== Done! ==="
