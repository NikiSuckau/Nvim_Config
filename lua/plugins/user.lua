-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {
  -- New plugins:
  {
    "Thiago4532/mdmath.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {
      -- Filetypes that the plugin will be enabled by default.
      filetypes = { "markdown" },
      -- Color of the equation, can be a highlight group or a hex color.
      -- Examples: 'Normal', '#ff0000'
      foreground = "Normal",
      -- Hide the text when the equation is under the cursor.
      anticonceal = true,
      -- Hide the text when in the Insert Mode.
      hide_on_insert = true,
      -- Enable dynamic size for non-inline equations.
      dynamic = true,
      -- Configure the scale of dynamic-rendered equations.
      dynamic_scale = 1.0,
      -- Interval between updates (milliseconds).
      update_interval = 400,

      -- Internal scale of the equation images, increase to prevent blurry images when increasing terminal
      -- font, high values may produce aliased images.
      -- WARNING: This do not affect how the images are displayed, only how many pixels are used to render them.
      --          See `dynamic_scale` to modify the displayed size.
      internal_scale = 1.0,
    },

    -- The build is already done by default in lazy.nvim, so you don't need
    -- the next line, but you can use the command `:MdMath build` to rebuild
    -- if the build fails for some reason.
    -- build = ':MdMath build'
  },
  -- == Examples of Overriding Plugins ==

  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        " █████  ███████ ████████ ██████   ██████",
        "██   ██ ██         ██    ██   ██ ██    ██",
        "███████ ███████    ██    ██████  ██    ██",
        "██   ██      ██    ██    ██   ██ ██    ██",
        "██   ██ ███████    ██    ██   ██  ██████",
        " ",
        "    ███    ██ ██    ██ ██ ███    ███",
        "    ████   ██ ██    ██ ██ ████  ████",
        "    ██ ██  ██ ██    ██ ██ ██ ████ ██",
        "    ██  ██ ██  ██  ██  ██ ██  ██  ██",
        "    ██   ████   ████   ██ ██      ██",
      }
      return opts
    end,
  },

  -- You can disable default plugins as follows:
  -- { "max397574/better-escape.nvim", enabled = false },

  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  -- {
  --   "L3MON4D3/LuaSnip",
  --   config = function(plugin, opts)
  --     require "astronvim.plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- add more custom luasnip configuration such as filetype extend or custom snippets
  --     local luasnip = require "luasnip"
  --     luasnip.filetype_extend("javascript", { "javascriptreact" })
  --   end,
  -- },
}
