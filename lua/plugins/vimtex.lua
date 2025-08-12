-- FileType setup including auto-save on InsertLeave
vim.api.nvim_create_autocmd("FileType", {
  pattern = "tex",
  callback = function()
    vim.wo.wrap = true
    vim.wo.linebreak = true
    vim.wo.conceallevel = 2
    vim.wo.concealcursor = "n"

    vim.api.nvim_create_autocmd("VimResized", {
      callback = function()
        if vim.bo.filetype == "tex" then vim.bo.textwidth = math.floor(vim.api.nvim_win_get_width(0) * 0.9) end
      end,
    })
    vim.bo.shiftwidth = 2
    vim.bo.expandtab = true
    vim.cmd "set list listchars=precedes:<,extends:>"
    vim.cmd "let g:tex_flavor = 'latex'"
    vim.cmd "let g:tex_conceal = 'abdmg'"
    vim.cmd "TSBufDisable highlight"
    vim.cmd "setlocal spell spelllang=en_us"
    -- Format a whole document with vim.bo.textwidth = math.floor(vim.api.nvim_win_get_width(0) / 2) on command
    vim.api.nvim_buf_set_keymap(
      0,
      "n",
      "<localleader>lü",
      [[:lua vim.cmd("normal! ggVGgq"); print("LaTeX buffer formatted")<CR>]],
      { noremap = true, silent = true }
    )

    -- Auto-save on leaving insert mode (*only in this .tex buffer*)
    local timer = nil
    vim.api.nvim_create_autocmd("InsertLeave", {
      buffer = 0,
      callback = function()
        if timer ~= nil and not timer:is_closing() then
          timer:stop()
          timer:close()
        end
        timer = vim.defer_fn(function() vim.cmd "silent! write" end, 1500) -- 1000 ms debounce time
      end,
    })

    -- Define global toggle
    _G.pdf_sync_enabled = false

    -- Continuous sync: update PDF view on cursor hold
    vim.api.nvim_create_autocmd("CursorHold", {
      buffer = 0,
      callback = function()
        if _G.pdf_sync_enabled then vim.cmd "silent! VimtexView" end
      end,
    })

    -- Toggle PDF sync on or off using <localleader>lö
    vim.api.nvim_buf_set_keymap(
      0,
      "n",
      "<localleader>lö",
      ":lua _G.pdf_sync_enabled = not _G.pdf_sync_enabled; print('PDF Sync:', _G.pdf_sync_enabled and 'Enabled' or 'Disabled')<CR>",
      { noremap = true, silent = false }
    )
  end,
})

-- VimTeX plugin configuration
return {
  "lervag/vimtex",
  init = function()
    -- PDF viewer setup
    vim.g.vimtex_view_method = "zathura"
    vim.g.vimtex_view_forward_search_on_start = true
    vim.g.vimtex_view_general_options = "--unique file:@pdf\\#src:@line@tex"
    -- vim.g.vimtex_compiler_method = "latexrun"
    -- Control quickfix behavior: suppress warnings and only open on errors
    vim.g.vimtex_quickfix_open_on_warning = false
    vim.g.vimtex_quickfix_mode = 1 -- open on errors and focus
    -- Optional: filter out warning messages entirely
    -- vim.g.vimtex_quickfix_ignore_filters = { "warning", "LaTeX Warning" }

    -- Setup automatic forward-sync to PDF on successful compile
    vim.api.nvim_create_augroup("vimtex_events", { clear = true })
    vim.api.nvim_create_autocmd("User", {
      group = "vimtex_events",
      pattern = "VimtexEventCompileSuccess",
      callback = function()
        vim.cmd "VimtexView" -- triggers forward search jump
      end,
    })
  end,
}
