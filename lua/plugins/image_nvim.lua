if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE
-- @type LazySpec
return {
  {
    "3rd/image.nvim",
    version = "1.3.0",
    opts = {
      backend = "kitty", -- whatever backend you would like to use
      processor = "magick_rock", -- or "magick_cli"
      max_width = 100,
      max_height = 12,
      max_height_window_percentage = math.huge,
      max_width_window_percentage = math.huge,
      -- window_overlap_clear_enabled = true, -- toggles images when windows are overlapped
      window_overlap_clear_enabled = true,
      window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
      -- integrations = {
      --   markdown = {
      --     enabled = true,
      --     clear_in_insert_mode = false,
      --     download_remote_images = true,
      --     only_render_image_at_cursor = false,
      --   },
    },
  },
  -- {
  --   "3rd/image.nvim", -- display images in kitty terminal
  --   version = "1.1.0",
  --   dependencies = {
  --     "vhyrro/luarocks.nvim",
  --     priority = 1001,
  --     opts = {
  --       rocks = { "magick" },
  --     },
  --   },
  --   opts = {
  --     backend = "kitty",
  --     processor = "magick_cli", -- or "magick_cli"
  --
  --     integrations = {
  --       markdown = {
  --         enabled = true,
  --         clear_in_insert_mode = false,
  --         download_remote_images = true,
  --         only_render_image_at_cursor = false,
  --       },
  --     },
  --     max_width = 500,
  --     max_height = 500,
  --     max_height_window_percentage = math.huge,
  --     max_width_window_percentage = math.huge,
  --     window_overlap_clear_enabled = false, -- toggles images when windows are overlapped
  --     -- window_overlap_clear_enabled = true,
  --     window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "noice", "" },
  --   },
  -- },
}
