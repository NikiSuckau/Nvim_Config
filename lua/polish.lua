-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
-- local map = vim.keymap.set
--
--
-- unnamedplus for clipboard
vim.o.clipboard = "unnamedplus"

vim.wo.wrap = true
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

vim.cmd "highlight Folded guibg=#1a1b32"

-- hide Markdown links
vim.opt.conceallevel = 2
vim.opt.foldlevel = 2
vim.cmd "highlight RenderMarkdownH1Bg guifg=#f7768e guibg=#1a1b26"
vim.cmd "highlight RenderMarkdownH2Bg guifg=#ff9e64 guibg=#1a1b26"
vim.cmd "highlight RenderMarkdownH3Bg guifg=#9ece6a guibg=#1a1b26"
vim.cmd "highlight RenderMarkdownH4Bg guifg=#7aa2f7 guibg=#1a1b26"
vim.cmd "highlight RenderMarkdownH5Bg guifg=#bb9af7 guibg=#1a1b26"
vim.cmd "highlight RenderMarkdownH6Bg guifg=#2ac3de guibg=#1a1b26"
vim.cmd "highlight RenderMarkdownCode guibg=#1a1b40"
vim.cmd "highlight RenderMarkdownCodeInline guibg=#1a1b40" -- guifg=#ffffff"
local NS = { noremap = true, silent = true }
vim.keymap.set("n", "<leader>mh", "<cmd>MoltenHideOutput<cr>", NS)
vim.keymap.set("n", "<leader>mo", "<cmd>noautocmd MoltenEnterOutput<cr>", NS)
vim.keymap.set("n", "<leader>ma", "<cmd>MoltenReevaluateAll<cr>", NS)
vim.keymap.set("n", "<leader>mn", "<cmd>MoltenNext<cr>", NS)
vim.keymap.set("n", "<leader>mp", "<cmd>MoltenPrev<cr>", NS)
vim.keymap.set({ "x" }, "<S-Enter>", ":<C-u>MoltenEvaluateVisual<cr>gv", NS)
-- vim.keymap.set({ "n" }, "<C-S-h>", "<cmd>MoltenHideOutput<cr>", NS)
-- vim.keymap.set({ "n" }, "<C-S-s>", "<cmd>noautocmd MoltenEnterOutput<cr>", NS)
-- vim.keymap.set({ "n" }, "<Alt-S-Enter>", "<cmd>MoltenReevaluateAll<cr>", NS)
-- vim.keymap.set({ "n" }, "<C-S-j>", "<cmd>MoltenNext<cr>", NS)
-- vim.keymap.set({ "n" }, "<C-S-k>", "<cmd>MoltenPrev<cr>", NS)
vim.keymap.set({ "n" }, "<S-Enter>", function()
  require("various-textobjs").mdFencedCodeBlock "inner"
  vim.cmd "MoltenEvaluateOperator"
end, NS)
vim.keymap.set({ "i" }, "<S-Enter>", function()
  vim.cmd "stopinsert"
  require("various-textobjs").mdFencedCodeBlock "inner"
  vim.cmd "MoltenEvaluateOperator"
end, NS)

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
