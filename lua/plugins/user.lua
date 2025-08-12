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

  {
    "zbirenbaum/copilot.lua",
    event = "InsertEnter", -- 🚀 only start Copilot when you enter Insert mode
    opts = {
      filetypes = {
        markdown = true, -- ✅ allow Copilot in markdown
        tex = true, -- ✅ enable for LaTeX
      },
    },
  },

  -- New Plugins

  -- Customizing Alpha Plugin
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      opts.section.header.val = {
        " 🌌 Niki's Cosmic Nexus 🌠 ",
        " ",
        " ███╗   ██╗██╗   ██╗██╗███╗   ██╗██╗  ██╗",
        " ████╗  ██║██║   ██║██║████╗  ██║██║ ██╔╝",
        " ██╔██╗ ██║██║   ██║██║██╔██╗ ██║█████╔╝ ",
        " ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╗██║██╔═██╗ ",
        " ██║ ╚████║ ╚████╔╝ ██║██║ ╚████║██║  ██╗",
        " ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝",
        " ",
        "  🌟 Crafting Code in the Cosmic Forge 🚀 ",
      }
      return opts
    end,
  },

  -- Example of Disabling a Plugin
  -- { "max397574/better-escape.nvim", enabled = false },
}
