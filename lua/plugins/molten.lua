-- Remove or comment out the early return:
-- if true then return {} end -- REMOVE THIS LINE

---@type LazySpec
return {
  "benlubas/molten-nvim",
  -- Optionally, you could add a key for lazy-loading if needed
  -- event = "VeryLazy",
  config = function()
    vim.g.molten_image_provider = "image.nvim"
    vim.g.molten_auto_init_behavior = "init"
    vim.g.molten_enter_output_behavior = "open_and_enter"
    vim.g.molten_auto_image_popup = false
    vim.g.molten_auto_open_output = false
    vim.g.molten_output_crop_border = false
    vim.g.molten_output_virt_lines = true
    vim.g.molten_output_win_max_height = 50
    vim.g.molten_output_win_style = "minimal"
    vim.g.molten_output_win_hide_on_leave = false
    vim.g.molten_virt_text_output = true
    vim.g.molten_virt_lines_off_by_1 = true
    vim.g.molten_virt_text_max_lines = 10000
    vim.g.molten_cover_empty_lines = false
    vim.g.molten_copy_output = true
    vim.g.molten_output_show_exec_time = false
    -- -- I find auto open annoying, keep in mind setting this option will require setting
    -- -- a keybind for `:noautocmd MoltenEnterOutput` to open the output again
    -- vim.g.molten_auto_open_output = false
    --
    -- -- this guide will be using image.nvim
    -- -- Don't forget to setup and install the plugin if you want to view image outputs
    -- vim.g.molten_image_provider = "image.nvim"
    --
    -- -- optional, I like wrapping. works for virt text and the output window
    -- vim.g.molten_wrap_output = true
    --
    -- -- Output as virtual text. Allows outputs to always be shown, works with images, but can
    -- -- be buggy with longer images
    -- vim.g.molten_virt_text_output = true
    --
    -- -- this will make it so the output shows up below the \`\`\` cell delimiter
    -- -- vim.g.molten_virt_lines_off_by_1 = true
    -- -- this one was bad for images
    -- vim.g.molten_virt_lines_off_by_1 = false
    --
    -- vim.g.molten_cover_empty_lines = true
    -- -- vim.g.molten_image_location = "virt" -- "virt", "float", "both"
    -- -- lets see if this works
    -- vim.g.molten_output_virt_lines = true
    --
    -- vim.g.molten_output_win_hide_on_leave = false
  end,
}
-- return {
--   -- "dubrayn/molten-nvim", -- fork of "benlubas/molten-nvim" - REPL
--   version = "^1.0.0",
--   "benlubas/molten-nvim",
--   dependencies = { "3rd/image.nvim" },
--   build = ":UpdateRemotePlugins",
--   init = function()
--     vim.g.molten_image_provider = "image.nvim"
--     vim.g.molten_auto_init_behavior = "init"
--     vim.g.molten_enter_output_behavior = "open_and_enter"
--     vim.g.molten_auto_image_popup = false
--     vim.g.molten_auto_open_output = false
--     vim.g.molten_output_crop_border = false
--     vim.g.molten_output_virt_lines = true
--     vim.g.molten_output_win_max_height = 50
--     vim.g.molten_output_win_style = "minimal"
--     vim.g.molten_output_win_hide_on_leave = false
--     vim.g.molten_virt_text_output = true
--     vim.g.molten_virt_lines_off_by_1 = true
--     vim.g.molten_virt_text_max_lines = 10000
--     vim.g.molten_cover_empty_lines = false
--     vim.g.molten_copy_output = true
--     vim.g.molten_output_show_exec_time = false
--   end,
-- }
