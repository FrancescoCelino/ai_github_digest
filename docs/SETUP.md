# Manual Setup Guide

## Setup

1. Clone repository and create `.env`:
```bash
git clone https://github.com/FrancescoCelino/ai_github_digest.git
cd ai_github_digest
cp .env.example .env
nano .env
```

2. Get API keys (see [CREDENTIALS.md](CREDENTIALS.md)) and add to `.env`

3. Start n8n:
```bash
export $(cat .env | xargs)
n8n start
```

4. Import workflow:
   - Open http://localhost:5678
   - "Import from File" → select `workflows/AI_github_digest.json`

5. Configure credentials (see [CREDENTIALS.md](CREDENTIALS.md))

6. Test workflow: Click "Execute Workflow", verify email received, then activate

**For n8n Cloud:** Set environment variables in Settings → Environments → Variables, then import workflow.

## Troubleshooting

- **Missing credentials:** Ensure `.env` is loaded before starting n8n (`export $(cat .env | xargs)`)
- **GitHub auth failed:** Check token scopes include `public_repo`, verify token not expired
- **Gmail auth failed:** Ensure 2FA enabled, app password is 16 characters
- **No repositories found:** Check rate limits, verify query syntax