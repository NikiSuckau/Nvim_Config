-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

---@type LazySpec
return {
  -- Remote SSHFS Plugin Configuration
  {
    "nosduco/remote-sshfs.nvim",
    opts = {
      connections = {
        sshfs_args = {
          "-o follow_symlinks", -- Allows SSHFS to follow symlinks outside the mounted directory
          "-o reconnect",
          "-o ConnectTimeout=5",
        },
      },
    },
  },

  -- New Plugins
  {
    "Thiago4532/mdmath.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {
      filetypes = { "markdown" },
      foreground = "Normal",
      anticonceal = true,
      hide_on_insert = true,
      dynamic = true,
      dynamic_scale = 1.0,
      update_interval = 400,
      internal_scale = 1.0,
    },
  },

  -- Customizing Alpha Plugin
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      opts.section.header.val = {
        " 🌌 Niki's Cosmic Nexus 🌠 ",
        " ",
        " ███╗   ██╗██╗ ██╗ ██╗    ███╗   ██╗██╗  ██╗",
        " ████╗  ██║██║ ██║ ██║    ████╗  ██║██║  ██║",
        " ██╔██╗ ██║██║ ██║ ██║    ██╔██╗ ██║██║  ██║",
        " ██║╚██╗██║██║ ██║ ██║    ██║╚██╗██║██║  ██║",
        " ██║ ╚████║╚█████╔╝██████╗██║ ╚████║███████║",
        " ╚═╝  ╚═══╝ ╚════╝ ╚═════╝╚═╝  ╚═══╝╚══════╝",
        " ",
        "  🚀 Exploring the Quantum Horizon of Code 💫 ",
      }
      return opts
    end,
  },

  -- Example of Disabling a Plugin
  -- { "max397574/better-escape.nvim", enabled = false },
}
