#!/bin/bash
# Sync all Biodoia ecosystem repos
# Usage: ./sync_ecosystem.sh

set -e

REPOS_DIR="/home/lisergico25/repos"
AUTOSCHEI="$REPOS_DIR/autoschei"

echo "🔄 Syncing Biodoia Ecosystem..."

# Sync main autoschei repo
cd "$AUTOSCHEI"
git pull --rebase origin main 2>/dev/null || true

# Sync all submodules
echo "📦 Syncing submodules..."
git submodule update --init --recursive

# Check status of all repos
echo ""
echo "📊 Repository Status:"
echo "===================="

for repo in "$REPOS_DIR"/*; do
    if [ -d "$repo/.git" ]; then
        name=$(basename "$repo")
        cd "$repo"
        
        # Check for uncommitted changes
        if [ -n "$(git status --porcelain 2>/dev/null)" ]; then
            status="⚠️  DIRTY"
        else
            status="✅ CLEAN"
        fi
        
        # Check if ahead/behind
        ahead=$(git rev-list --count @{u}..HEAD 2>/dev/null || echo "0")
        behind=$(git rev-list --count HEAD..@{u} 2>/dev/null || echo "0")
        
        if [ "$ahead" -gt 0 ]; then
            status="$status [↑$ahead]"
        fi
        if [ "$behind" -gt 0 ]; then
            status="$status [↓$behind]"
        fi
        
        printf "%-20s %s\n" "$name" "$status"
    fi
done

echo ""
echo "✅ Sync complete!"
