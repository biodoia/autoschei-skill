#!/bin/bash
# Build all Biodoia ecosystem modules
# Usage: ./build_all.sh

set -e

REPOS_DIR="/home/lisergico25/repos"
FAILED=()
PASSED=()

echo "🔨 Building Biodoia Ecosystem..."
echo ""

# List of Go modules to build
MODULES=(
    "autoschei"
    "auto-claude-go"
    "framegotui"
    "gobro"
    "goclit-ai"
    "golem"
    "gommander"
    "memogo"
    "progotti"
    "cligolist"
)

for module in "${MODULES[@]}"; do
    path="$REPOS_DIR/$module"
    if [ -d "$path" ] && [ -f "$path/go.mod" ]; then
        echo "📦 Building $module..."
        cd "$path"
        
        if go build ./... 2>/dev/null; then
            PASSED+=("$module")
            echo "   ✅ OK"
        else
            FAILED+=("$module")
            echo "   ❌ FAILED"
        fi
    fi
done

echo ""
echo "===================="
echo "Build Summary:"
echo "✅ Passed: ${#PASSED[@]}"
echo "❌ Failed: ${#FAILED[@]}"

if [ ${#FAILED[@]} -gt 0 ]; then
    echo ""
    echo "Failed modules:"
    for f in "${FAILED[@]}"; do
        echo "  - $f"
    done
    exit 1
fi

echo ""
echo "🎉 All builds passed!"
