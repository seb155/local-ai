#!/bin/bash

echo "?? Stopping all Docker stacks..."

cd /root/local-ai/local-ai-ollama && docker compose down
cd /root/local-ai/local-ai-n8n-rag && docker compose down

echo "? All stacks are now stopped!"
