#!/bin/bash

echo "?? Starting all Docker stacks..."

cd /root/local-ai/local-ai-ollama && docker-compose up -d
cd /root/local-ai/local-ai-n8n-rag && docker-compose up -d

echo "? All stacks are now running!"
