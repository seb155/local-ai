#!/bin/bash

echo "?? Restarting all Docker stacks..."

cd /root/local-ai/local-ai-ollama && docker-compose down && docker-compose up -d
cd /root/local-ai/local-ai-n8n-rag && docker-compose down && docker-compose up -d

echo "? All stacks have been restarted!"
