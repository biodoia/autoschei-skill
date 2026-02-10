#!/bin/bash
# Check Biodoia ecosystem status
# Usage: ./ecosystem_status.sh

REPOS_DIR="/home/lisergico25/repos"

echo "🦾 Biodoia Ecosystem Status"
echo "=========================="
echo ""

# Check systemd services
echo "📡 Backend Services:"
for svc in goaiaiai gociccidai ghrego progotti memogo govai; do
    if systemctl is-active --quiet "autoschei-$svc" 2>/dev/null; then
        echo "  ✅ $svc (port 5005${svc: -1})"
    else
        echo "  ⭕ $svc (not running)"
    fi
done

echo ""
echo "📊 Repository Stats:"
total=0
dirty=0
ahead=0

for repo in "$REPOS_DIR"/*; do
    if [ -d "$repo/.git" ]; then
        ((total++))
        cd "$repo"
        [ -n "$(git status --porcelain 2>/dev/null)" ] && ((dirty++))
        [ "$(git rev-list --count @{u}..HEAD 2>/dev/null || echo 0)" -gt 0 ] && ((ahead++))
    fi
done

echo "  Total repos: $total"
echo "  Dirty repos: $dirty"
echo "  Ahead of remote: $ahead"

echo ""
echo "💾 Disk Usage:"
du -sh "$REPOS_DIR" 2>/dev/null | awk '{print "  Repos: " $1}'
du -sh "$REPOS_DIR/autoschei/bin" 2>/dev/null | awk '{print "  Binaries: " $1}'

echo ""
echo "🧠 Memory (memogo):"
if [ -d "$REPOS_DIR/memogo" ]; then
    cd "$REPOS_DIR/memogo"
    count=$(find . -name "*.md" | wc -l)
    echo "  Memory files: $count"
fi

echo ""
echo "✅ Status check complete!"
