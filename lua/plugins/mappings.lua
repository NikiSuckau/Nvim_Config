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
        },
      },
    },
  },
}
