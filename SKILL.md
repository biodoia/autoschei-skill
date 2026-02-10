---
name: autoschei
description: Biodoia Autoschei Ecosystem - Autonomous AI-powered development platform with 25+ Go modules. Use when working with multi-agent orchestration (GoBro, GOLEM), code generation/review (gociccidai, goaiaiai), project management (progotti, ideaeater), memory systems (memogo, cipher), Git operations (ghrego), deploy pipelines (govai), CLI tools (gommander, cligolist), or TUI dashboards (framegotui, auto-claude-go). Triggers on autoschei, biodoia, go modules, multi-agent, autonomous development, code review pipeline.
license: Apache-2.0
compatibility: Requires Go 1.21+, git, and access to /home/lisergico25/repos/
metadata:
  author: biodoia
  version: "1.0.0"
---

# Autoschei Ecosystem

Autonomous revenue generation platform with 25+ interconnected Go modules.

## Architecture Overview

```
┌─────────────────────────────────────────────────────────────┐
│                    ORCHESTRATION LAYER                       │
│  ┌─────────┐  ┌──────────┐  ┌──────────┐  ┌─────────────┐  │
│  │ GoBro   │  │  GOLEM   │  │ Progotti │  │  Ideaeater  │  │
│  │(Brain)  │  │(GLM CLI) │  │(Projects)│  │  (Ideas)    │  │
│  └────┬────┘  └────┬─────┘  └────┬─────┘  └──────┬──────┘  │
└───────┼────────────┼─────────────┼───────────────┼──────────┘
        │            │             │               │
┌───────┴────────────┴─────────────┴───────────────┴──────────┐
│                     EXECUTION LAYER                          │
│  ┌──────────┐  ┌──────────┐  ┌──────────┐  ┌─────────────┐  │
│  │gociccidai│  │ goaiaiai │  │  ghrego  │  │   govai     │  │
│  │(CodeGen) │  │(Review)  │  │  (Git)   │  │  (Deploy)   │  │
│  └──────────┘  └──────────┘  └──────────┘  └─────────────┘  │
└─────────────────────────────────────────────────────────────┘
        │            │             │               │
┌───────┴────────────┴─────────────┴───────────────┴──────────┐
│                     MEMORY LAYER                             │
│  ┌──────────┐  ┌──────────┐  ┌──────────┐  ┌─────────────┐  │
│  │  memogo  │  │  cipher  │  │spegoplain│  │  gommander  │  │
│  │(Dual Mem)│  │(MCP+Mem) │  │  (Specs) │  │ (Commands)  │  │
│  └──────────┘  └──────────┘  └──────────┘  └─────────────┘  │
└─────────────────────────────────────────────────────────────┘
```

## Quick Start

### Check ecosystem status
```bash
cd /home/lisergico25/repos/autoschei
autoschei sync          # Check all 25 repos sync status
go build ./...          # Build all modules
```

### Run individual modules
```bash
# Code generation
gociccidai generate --prompt "Create REST API handler"

# Code review
goaiaiai review --file main.go --models gemini,claude,gpt

# Git operations
ghrego status --all     # All repos status
ghrego sync             # Sync all submodules

# Deploy
govai deploy --target production
```

## Core Modules

### GoBro (Brain)
Multi-agent orchestrator with consciousness layer.
- Location: `/home/lisergico25/repos/gobro`
- Features: Agent coordination, tunnel support, voice integration
- See: [references/gobro.md](references/gobro.md)

### GOLEM (GLM-Powered CLI)
Claude Code + OpenCode + Crush + Harmonica + Z.AI native.
- Location: `/home/lisergico25/repos/golem`
- Models: GLM-4-32B, GLM-Z1-32B, GLM-Z1-Rumination
- See: [references/golem.md](references/golem.md)

### Memogo (Dual Memory)
System 1 (fast/intuitive) + System 2 (slow/analytical) memory.
- Location: `/home/lisergico25/repos/memogo`
- Features: MCP integration, cipher encryption, semantic search
- See: [references/memogo.md](references/memogo.md)

### goaiaiai (Multi-Model Review)
Aggregated code review from multiple AI models.
- Location: `/home/lisergico25/repos/autoschei/goaiaiai`
- Workflow: `ghrego(scan) → gociccidai → goaiaiai → govai(deploy)`

## gRPC Ports

| Module     | Port  |
|------------|-------|
| goaiaiai   | 50051 |
| gociccidai | 50052 |
| ghrego     | 50053 |
| progotti   | 50054 |
| memogo     | 50055 |
| govai      | 50056 |

## Free Models Available

### OpenRouter (17 FREE models)
- `z-ai/glm-4.5-air:free` - General, 131K context
- `tngtech/tng-r1t-chimera:free` - Reasoning, 163K context
- `qwen/qwen3-4b:free` - Reasoning, 40K context
- `mistralai/mistral-small-3.1-24b-instruct:free` - Coding, 128K
- `google/gemma-3-27b-it:free` - General, 131K
- `meta-llama/llama-3.3-70b-instruct:free` - General, 128K
- `nvidia/nemotron-3-nano-30b-a3b:free` - General, 65K
- `openai/gpt-oss-120b:free` - General, 65K

### Ultra-Cheap (<$0.000001/1M tokens)
- `z-ai/glm-4.7-flash` - $0.00000006/1M 🔥
- `minimax/minimax-01` - $0.0000002/1M

## Scripts

Run ecosystem operations:
```bash
# Sync all repos
scripts/sync_ecosystem.sh

# Build and test all
scripts/build_all.sh

# Deploy to production
scripts/deploy.sh
```

## Common Workflows

### 1. New Feature Development
```
ideaeater add "Feature idea"    # Capture idea
progotti create-task            # Create project task
gociccidai generate             # Generate code
goaiaiai review                 # Multi-model review
ghrego commit && push           # Git operations
govai deploy                    # Deploy
```

### 2. Code Review Pipeline
```
ghrego diff HEAD~1              # Get changes
goaiaiai review --consensus     # Aggregate reviews
spegoplain generate             # Generate improvement plan
gociccidai apply                # Apply fixes
```

### 3. Memory Operations
```
memogo store --system1 "quick fact"    # Fast memory
memogo store --system2 "deep analysis" # Analytical memory
memogo search "query"                   # Semantic search
cipher encrypt --key KEY                # Encrypt sensitive
```

## Best Practices

1. **Always use free models first** - OpenRouter has 17 free models
2. **Check sync status** - Run `autoschei sync` before starting work
3. **Multi-model consensus** - Use goaiaiai with 3+ models for reviews
4. **Dual memory** - System 1 for speed, System 2 for depth
5. **Parallel agents** - Spawn multiple instances for parallel work

## Troubleshooting

### Build failures
```bash
go mod tidy          # Fix dependencies
go build ./...       # Rebuild
```

### Port conflicts
```bash
lsof -i :50051       # Check port usage
systemctl status autoschei-*  # Check services
```

### Submodule issues
```bash
git submodule update --init --recursive
```
