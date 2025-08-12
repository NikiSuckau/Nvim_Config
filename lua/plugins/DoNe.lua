-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
---@type LazySpec
return {
  "monkoose/DoNe",
  lazy = true,
  -- optional configuration
  config = function()
    -- as example adding some keybindings
    vim.keymap.set("n", "<F5>", "<Cmd>DoNe build<CR>")
    --- ...
  end,
}
