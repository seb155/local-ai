# Local AI Project

## Overview
Local AI is a self-hosted AI ecosystem designed by **Sebastien Gagnon** to run AI models efficiently using Docker. It integrates multiple AI-powered services, including Ollama for model inference and N8N for automation, providing a robust infrastructure for AI workflows.

## Project Structure
```
/root/local-ai/
├── local-ai-ollama/      # Ollama-based AI models and Open WebUI
├── local-ai-n8n-rag/     # N8N automation and Flowise integration
```

### Services and Their Roles
#### 1. **local-ai-ollama**
- **Ollama**: Runs AI models for inference.
- **Open WebUI**: A web-based interface to interact with AI models.
- **Shared Network**: Connects with `local-ai-n8n-rag` stack.

#### 2. **local-ai-n8n-rag**
- **N8N**: Workflow automation tool for AI pipelines.
- **Flowise**: LLM-based visual programming interface.
- **Qdrant**: Vector database for embedding storage.
- **Postgres**: Database backend for N8N.

## AI Models
The following models are stored in **`/mnt/nvme-ai/ollama_models`**:
- **Phi-4** (phi4:latest) → Efficient & lightweight.
- **Llava-7B** (llava:latest) → Supports vision tasks.
- **Gemma** (gemma:latest) → Fast & optimized.
- **Mixtral** (mixtral:latest) → MoE-based high-performance model.
- **Llama 3.2** (llama3.2:latest) → Balanced for VRAM usage.
- **Qwen2.5 14B** (qwen2.5:14b) → Powerful text model.
- **Mistral** (mistral:latest) → Extremely fast in 8-bit mode.

## How to Start and Stop the Stacks
To manage the Docker stacks, navigate to their respective directories:

### Start the Stacks
```bash
cd /root/local-ai/local-ai-ollama && docker-compose up -d
cd /root/local-ai/local-ai-n8n-rag && docker-compose up -d
```

### Stop the Stacks
```bash
cd /root/local-ai/local-ai-ollama && docker-compose down
cd /root/local-ai/local-ai-n8n-rag && docker-compose down
```

## Networking
Both stacks share the same Docker network: `local-ai-net`. This ensures that N8N can communicate with Ollama and other AI components seamlessly.

## Contribution & Future Work
This project is evolving to integrate more models and features such as:
- Improved vector search with Qdrant.
- Automated AI workflows with N8N.
- Custom model fine-tuning capabilities.

## Author
**Sebastien Gagnon**

This README provides a structured overview of Local AI, including how to deploy and manage AI models efficiently within a Dockerized environment.

