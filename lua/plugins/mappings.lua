return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- Normal mode mappings
        n = {
          -- Change buffer navigation mappings
          ["<S-Tab>"] = {
            function() require("astrocore.buffer").nav(-vim.v.count1) end,
            desc = "Previous buffer",
          },
          ["<Tab>"] = {
            function() require("astrocore.buffer").nav(vim.v.count1) end,
            desc = "Next buffer",
          },
          -- Add Vimtex compile mapping
          ["<leader>Lc"] = {
            function() vim.cmd "VimtexCompile" end,
            desc = "Compile LaTeX file",
          },
          -- New chat for Avante by cmd AvanteChatNew
          ["<leader>An"] = {
            function() vim.cmd "AvanteChatNew" end,
            desc = "New Avante chat",
          },
          ["<leader>rp"] = {
            function()
              local buf_name = vim.api.nvim_buf_get_name(0)
              if buf_name == "" then
                vim.notify("No file name for current buffer", vim.log.levels.ERROR)
                return
              end
              local term_cmd = "python " .. buf_name
              require("toggleterm.terminal").Terminal
                :new({
                  direction = "vertical",
                  size = vim.o.columns / 2,
                  cmd = term_cmd,
                  close_on_exit = false,
                  on_open = function(term) term:send(term_cmd, true) end,
                })
                :toggle()
            end,
            desc = "Run Python file in vertical ToggleTerm",
          },
        },
      },
    },
  },
}
