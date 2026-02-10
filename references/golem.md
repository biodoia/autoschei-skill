# GOLEM - GLM-Powered CLI

Claude Code + OpenCode + Crush + Harmonica + Z.AI native integration.

## Location
`/home/lisergico25/repos/golem`

## Z.AI Models

| Model | Use Case | Speed |
|-------|----------|-------|
| GLM-4-32B | Coding, General | Fast |
| GLM-Z1-32B | Deep reasoning | Medium |
| GLM-Z1-Rumination | Complex analysis | Slow |
| GLM-Z1-9B | Quick tasks | Very fast |
| GLM-4.1V-Thinking | Vision + reasoning | Medium |
| CodeGeeX-4 | Code completion | Fast |

## 6 Specialized Agents

| Agent | Model | Role |
|-------|-------|------|
| Architect | GLM-Z1-32B | System design |
| Coder | GLM-4-32B | Implementation |
| Reviewer | GLM-Z1-32B | Code review |
| Debugger | GLM-Z1-32B | Bug hunting |
| Tester | GLM-4-32B | Test generation |
| Docs | GLM-4-32B | Documentation |

## Usage

```bash
# Start GOLEM
golem

# Use specific agent
golem --agent architect "Design a microservice"

# Use specific model
golem --model glm-z1-32b "Complex reasoning task"

# Multi-agent collaboration
golem collab "Build REST API" --agents architect,coder,tester
```

## Features

### Harmonica Animations
- Spring physics (ω=8.0, ζ=0.5)
- 60fps smooth rendering
- Fly-in effects

### Crush Integration
- Efficient context compression
- Token optimization
- Large codebase support

### MCP Support
- Tool calling
- File operations
- Shell execution
