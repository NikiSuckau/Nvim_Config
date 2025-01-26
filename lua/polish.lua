-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- General settings
vim.o.conceallevel = 2 -- Hide some characters for LaTeX

vim.api.nvim_create_autocmd("FileType", {
  pattern = "tex",
  callback = function()
    -- Enable line wrapping
    vim.wo.wrap = true
    vim.wo.linebreak = true -- Break lines at word boundaries, not in the middle of words

    -- Adjust conceallevel for better readability
    vim.wo.conceallevel = 2
    vim.wo.concealcursor = "n" -- Show concealed text normally in insert mode

    -- Set spell checking for LaTeX
    -- vim.wo.spell = true -- Fixed: Use vim.wo instead of vim.bo
    -- vim.bo.spelllang = "en_us,de" -- This remains valid for buffer-local

    -- Configure indentation
    vim.bo.textwidth = 140 -- Hard wrap at 80 characters (for formatting)
    vim.bo.shiftwidth = 2 -- Indentation size
    vim.bo.expandtab = true -- Use spaces instead of tabs

    -- Optional: Use softwrap indicators (visual) for better readability
    vim.cmd "set list listchars=precedes:<,extends:>"

    -- Optional: Enable LaTeX-specific syntax plugins or LSP servers (if configured)
    vim.cmd "let g:tex_flavor = 'latex'"
  end,
})
