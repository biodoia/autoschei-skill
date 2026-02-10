# GoBro - Distributed Brain

Go wrapper for OpenClaw with consciousness, multi-agent orchestration, and tunnel support.

## Location
`/home/lisergico25/repos/gobro`

## Features

### Consciousness Layer
- Inner Council: 6 personalities dialogue
- Self-reflection and meta-cognition
- Emotional state tracking

### Multi-Agent Orchestration
- Spawn parallel agents
- Task distribution
- Result aggregation

### Tunnel Support
- QUIC tunneling
- gRPC over tunnels
- Cloudflare integration

## Usage

```bash
# Start GoBro daemon
gobro serve

# Spawn agent
gobro agent spawn --model glm-4.5-air:free

# Check consciousness state
gobro consciousness status

# Tunnel operations
gobro tunnel create --provider cloudflare
```

## API Endpoints

| Endpoint | Method | Description |
|----------|--------|-------------|
| /api/agents | GET | List agents |
| /api/agents | POST | Spawn agent |
| /api/consciousness | GET | Get state |
| /api/tunnel | POST | Create tunnel |

## Configuration

```yaml
# gobro.yaml
consciousness:
  enabled: true
  council_size: 6
  
agents:
  max_parallel: 10
  default_model: "glm-4.5-air:free"
  
tunnel:
  provider: cloudflare
  auto_connect: true
```
