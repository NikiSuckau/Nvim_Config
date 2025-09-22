if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
---@type LazySpec
return {
  -- same plugin name as your main spec → lazy.nvim merges the opts
  "yetone/avante.nvim",
  -- mark optional when you’re only tweaking opts of an already-declared plugin
  optional = true,
  opts = {
    rag_service = {
      enabled = true,
      runner = "docker",
      host_mount = "/home/niki/master-thesis/",

      llm = {
        provider = "ollama",
        endpoint = "http://localhost:11434",
        model = "qwen2.5-coder:7b",
      },

      embed = {
        provider = "ollama",
        endpoint = "http://localhost:11434",
        model = "nomic-embed-text:latest",
      },
    },
  },
}
