# Docker Setup Guide

## Prerequisites

- Docker and Docker Compose
- GitHub Personal Access Token
- OpenAI API Key
- Gmail account

## Quick Start

1. Clone repository and create `.env` file:
```bash
git clone https://github.com/FrancescoCelino/ai_github_digest.git
cd ai_github_digest
cp env.example .env
nano .env
```

2. Start n8n:
```bash
docker compose up -d
```

3. Access n8n UI at http://localhost:5678 and login with credentials from `.env`

4. Import workflow: "Workflows" → "Import from File" → select `workflows/AI_github_digest.json`

5. Configure credentials (see [docs/CREDENTIALS.md](docs/CREDENTIALS.md))

6. Activate the workflow (runs weekly on Mondays at 11:00 AM)

**Note:** Run commands from project root. After updating `.env`, restart with `docker compose restart`.

## Environment Variables

Required variables in `.env`:

```bash
N8N_BASIC_AUTH_USER=admin
N8N_BASIC_AUTH_PASSWORD=your_strong_password_here
N8N_HOST=localhost
N8N_PROTOCOL=http
RECIPIENT_EMAIL=your-email@example.com
GITHUB_TOKEN=ghp_your_github_token_here
OPENAI_API_KEY=sk-your_openai_api_key_here
TIMEZONE=UTC
```

See [docs/CREDENTIALS.md](docs/CREDENTIALS.md) for API key setup instructions.

## Docker Commands

```bash
docker compose up -d      # Start
docker compose logs -f    # View logs
docker compose down       # Stop
docker compose down -v    # Stop and remove volumes
```

## Troubleshooting

- **Can't access UI:** Check port 5678, verify `N8N_HOST` setting
- **Workflow not running:** Verify workflow is activated and credentials configured
- **Email not sending:** Check Gmail OAuth2 and `RECIPIENT_EMAIL` setting

