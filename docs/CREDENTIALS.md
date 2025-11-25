# Credentials Setup

## OpenAI API Key

1. Ensure `OPENAI_API_KEY` is set in `.env`
2. Open "Message a model" node → "Select Credential" → "Create New"
3. Choose "OpenAI API"
4. Enter API Key: `{{$env.OPENAI_API_KEY}}` (or enter key directly)
5. Save

## GitHub Token

Automatically used from `GITHUB_TOKEN` environment variable. No credential setup needed.

## Gmail OAuth2

1. Open "Send a message" node → "Select Credential" → "Create New"
2. Choose "Gmail OAuth2"
3. Click "Connect Gmail" and authorize