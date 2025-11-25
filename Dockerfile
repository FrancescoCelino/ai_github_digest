# Optional Dockerfile - Only needed if you want to customize the n8n image
# For most users, docker-compose.yml is sufficient as it uses the official n8n image

FROM n8nio/n8n:latest

# Example: Install additional system packages if needed
# RUN apk add --no-cache your-package-here

# Example: Copy custom configuration files
# COPY custom-config/ /custom-config/

# The official n8n image already includes everything needed
# Only use this Dockerfile if you need to add custom dependencies or configurations

