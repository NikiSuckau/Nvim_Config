-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
-- local map = vim.keymap.set
--
--
-- unnamedplus for clipboard
vim.o.clipboard = "unnamedplus"
-- Ensure LaTeX settings remain intact
vim.o.conceallevel = 2
vim.api.nvim_create_autocmd("FileType", {
  pattern = "tex",
  callback = function()
    vim.wo.wrap = true
    vim.wo.linebreak = true
    vim.wo.conceallevel = 2
    vim.wo.concealcursor = "n"
    vim.bo.textwidth = 140
    vim.bo.shiftwidth = 2
    vim.bo.expandtab = true
    vim.cmd "set list listchars=precedes:<,extends:>"
    vim.cmd "let g:tex_flavor = 'latex'"
  end,
})

local mappings = {
  n = {
    -- Use <Tab> for next buffer
    ["<Tab>"] = {
      function() require("astrocore.buffer").nav(vim.v.count1) end,
      desc = "Next buffer",
    },
    -- Use <S-Tab> (Shift+Tab) for previous buffer
    ["<S-Tab>"] = {
      function() require("astrocore.buffer").nav(-vim.v.count1) end,
      desc = "Previous buffer",
    },
    -- Optional: Disable ]b and [b
    ["]b"] = false,
    ["[b"] = false,
  },
}

return mappings -- ✅ This must be the last line
