if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
---@type LazySpec
return {
  "yetone/avante.nvim",
  opts = {
    rag_service = { -- RAG Service configuration
      enabled = true, -- Enables the RAG service
      host_mount = os.getenv "HOME", -- Host mount path for the rag service (Docker will mount this path)
      runner = "docker", -- Runner for the RAG service (can use docker or nix)
      llm = { -- Language Model (LLM) configuration specifically for RAG service
        -- provider = "ollama", -- Using Ollama for RAG LLM
        provider = "deepseek", -- Using deepseek for RAG LLM
        endpoint = "https://api.deepseek.com/v1",
        api_key = "DEEPSEEK_API", -- environment variable for DeepSeek API key
        model = "deepseek-chat", -- Selected LLM for RAG
        --   extra = { -- Additional LLM configuration options
        --     temperature = 0.7,
        --     max_tokens = 512,
        --   },
      }, -- Closing llm table
      embed = { -- Embedding model configuration specifically for RAG service
        provider = "ollama", -- Using Ollama for RAG embedding
        endpoint = "http://localhost:11434", -- Ollama Endpoint
        api_key = "", -- Ollama typically does not require an API key
        model = "nomic-embed-text", -- Selected embedding model for RAG
        extra = { -- Additional embedding configuration options
          embed_batch_size = 10,
        },
      },
    },
  },
}
