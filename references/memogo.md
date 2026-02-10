# Memogo - Dual Memory System

System 1 (fast/intuitive) + System 2 (slow/analytical) memory with MCP integration.

## Location
`/home/lisergico25/repos/memogo`

## Dual Memory Architecture

### System 1 (Fast)
- Immediate recall
- Pattern matching
- Intuitive responses
- Low latency (<10ms)

### System 2 (Slow)
- Deep analysis
- Reasoning chains
- Complex queries
- Higher accuracy

## Cipher Integration

Cipher provides:
- MCP (Model Context Protocol) integration
- Encryption for sensitive data
- Multi-model connections
- Free model registry

## Usage

```bash
# Store in System 1 (fast)
memogo store --system1 "API key is XYZ"

# Store in System 2 (analytical)
memogo store --system2 "Analysis: The architecture should..."

# Semantic search
memogo search "API authentication"

# Encrypt sensitive data
memogo cipher encrypt --key $KEY "sensitive data"

# MCP tool call
memogo mcp call --tool read_file --args '{"path": "main.go"}'
```

## API

```go
// Store memory
mem.Store(ctx, Memory{
    Content: "fact",
    System: System1, // or System2
    Tags: []string{"api", "auth"},
})

// Search
results := mem.Search(ctx, "query", SearchOpts{
    System: Both,
    Limit: 10,
})

// MCP integration
cipher.CallTool(ctx, "read_file", map[string]any{
    "path": "main.go",
})
```

## Free Models Registry

Memogo's cipher maintains a registry of free models:

| Model | Provider | Type | Cost |
|-------|----------|------|------|
| glm-4.5-air:free | OpenRouter | General | $0.00 |
| qwen3-4b:free | OpenRouter | Reasoning | $0.00 |
| gemma-3-27b:free | OpenRouter | General | $0.00 |
| minimax-m2.1 | OpenCode | General | $0.00 |
