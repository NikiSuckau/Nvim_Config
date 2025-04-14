-- Remove or comment out the early return:
-- if true then return {} end -- REMOVE THIS LINE

--@type LazySpec
return {
  "benlubas/molten-nvim",
  -- Optionally, you could add a key for lazy-loading if needed
  -- event = "VeryLazy",
  config = function()
    -- -- Adjust virtual text to show just below the cell delimiter
    vim.g.molten_virt_lines_off_by_1 = true
    -- -- You can set other molten options here if desired.
    vim.g.molten_auto_open_output = false

    -- this guide will be using image.nvim
    -- Don't forget to setup and install the plugin if you want to view image outputs
    vim.g.molten_image_provider = "image.nvim"

    -- optional, I like wrapping. works for virt text and the output window
    vim.g.molten_wrap_output = true

    -- Output as virtual text. Allows outputs to always be shown, works with images, but can
    -- be buggy with longer images
    vim.g.molten_virt_text_output = true

    -- this will make it so the output shows up below the \`\`\` cell delimiter
    vim.g.molten_virt_lines_off_by_1 = true
    vim.g.molten_image_location = "both"
  end,
}
