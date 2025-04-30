-- Remove or comment out the early return:
-- if true then return {} end -- REMOVE THIS LINE

---@type LazySpec
return {
  {
    "k-lar/dynomark.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = {
      remap_arrows = false,
      results_view_location = "vertical",
      auto_download = false, -- Set to true to auto-download dynomark if not found
    },
    keys = {
      { "<leader>Dr", "<cmd>Dynomark run<CR>", desc = "Run Dynomark query" },
      { "<leader>Dt", "<cmd>Dynomark toggle<CR>", desc = "Toggle Dynomark output" },
    },
  },
}
