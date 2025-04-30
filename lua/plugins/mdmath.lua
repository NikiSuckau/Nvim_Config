-- Remove or comment out the early return:
-- if true then return {} end -- REMOVE THIS LINE

---@type LazySpec
return {
  "Thiago4532/mdmath.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    filetypes = { "markdown" },
    foreground = "Normal",
    -- foreground = "#ff0000",
    anticonceal = true,
    hide_on_insert = false,
    dynamic = true,
    dynamic_scale = 0.65,
    update_interval = 2000,
    internal_scale = 1.0,
  },
}
