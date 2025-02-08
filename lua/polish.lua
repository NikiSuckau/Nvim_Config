-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

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
