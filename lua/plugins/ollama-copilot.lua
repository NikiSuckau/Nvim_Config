-- Remove or comment out the early return:
if true then return {} end -- REMOVE THIS LINE

---@type LazySpec
return {
  {
    "jacob411/Ollama-Copilot",
    opts = {
      model_name = "deepseek-coder:base",
      stream_suggestion = false,
      python_command = "python3",
      filetypes = { "python", "lua", "vim", "markdown" },
      ollama_model_opts = {
        num_predict = 40,
        temperature = 0.1,
      },
      keymaps = {
        suggestion = "<leader>os",
        reject = "<leader>or",
        insert_accept = "<Tab>",
      },
    },
  },
}
