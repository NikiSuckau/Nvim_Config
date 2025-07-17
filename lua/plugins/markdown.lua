-- Remove or comment out the early return:
-- if true then return {} end -- REMOVE THIS LINE

---@type LazySpec
return {
  {
    "iamcco/markdown-preview.nvim", -- live preview markdown in browser
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
      vim.g.mkdp_auto_start = 0
      vim.g.mkdp_auto_close = 0
    end,
    ft = { "markdown" },
  },

  -- ###########################################################################

  {
    "preservim/vim-markdown", -- conceal markdown links
  },

  -- ###########################################################################

  {
    "tadmccorkle/markdown.nvim", -- follow links (C-Enter)
    ft = "markdown",
    opts = {
      mappings = { link_follow = "<C-Enter>" },
    },
  },

  -- ###########################################################################

  {
    "MeanderingProgrammer/render-markdown.nvim", -- another markdown beautifier
    main = "render-markdown",
    opts = {
      render_modes = { "n", "v", "i", "c", "t", "x" },
      anti_conceal = {
        enabled = true,
      },
      checkbox = {
        enabled = false,
      },
      win_options = {
        conceallevel = {
          default = 2,
          -- default = 0,
          rendered = 2,
          -- rendered = 0,
        },
      },
      bullet = {
        enabled = false,
        -- enabled = false,
        -- Replaces '-'|'+'|'*' of 'list_item'
        -- How deeply nested the list is determines the 'level'
        -- The 'level' is used to index into the array using a cycle
        -- If the item is a 'checkbox' a conceal is used to hide the bullet instead
        icons = { "●", "○", "◆", "◇" },
        -- Padding to add to the left of bullet point
        left_pad = 1,
        -- Padding to add to the right of bullet point
        right_pad = 0,
        -- Highlight for the bullet icon
        highlight = "RenderMarkdownBullet",
      },
      link = {
        enabled = true,
      },
      heading = {
        -- Turn on / off heading icon & background rendering
        enabled = true,
        -- Turn on / off any sign column related rendering
        sign = true,
        -- Replaces '#+' of 'atx_h._marker'
        -- The number of '#' in the heading determines the 'level'
        -- The 'level' is used to index into the array using a cycle
        -- The result is left padded with spaces to hide any additional '#'
        icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
        -- Added to the sign column if enabled
        -- The 'level' is used to index into the array using a cycle
        signs = { "󰫎 " },
        -- Width of the heading background:
        --  block: width of the heading text
        --  full: full width of the window
        width = "block",
        left_pad = 0,
        right_pad = 1,
        backgrounds = {
          "RenderMarkdownH1Bg",
          "RenderMarkdownH2Bg",
          "RenderMarkdownH3Bg",
          "RenderMarkdownH4Bg",
          "RenderMarkdownH5Bg",
          "RenderMarkdownH6Bg",
        },
        foregrounds = {
          "RenderMarkdownH1",
          "RenderMarkdownH2",
          "RenderMarkdownH3",
          "RenderMarkdownH4",
          "RenderMarkdownH5",
          "RenderMarkdownH6",
        },
      },

      code = {
        -- Turn on / off code block & inline code rendering
        enabled = true,
        -- Turn on / off any sign column related rendering
        sign = false,
        -- Determines how code blocks & inline code are rendered:
        --  none: disables all rendering
        --  normal: adds highlight group to code blocks & inline code, adds padding to code blocks
        --  language: adds language icon to sign column if enabled and icon + name above code blocks
        --  full: normal + language
        style = "full",
        -- Amount of padding to add to the left of code blocks
        left_pad = 1,
        -- Amount of padding to add to the right of code blocks when width is 'block'
        right_pad = 1,
        -- Width of the code block background:
        --  block: width of the code block
        --  full: full width of the window
        width = "block",
        -- Determins how the top / bottom of code block are rendered:
        --  thick: use the same highlight as the code body
        --  thin: when lines are empty overlay the above & below icons
        border = "thin",
        -- Used above code blocks for thin border
        -- above = '▄',
        above = "-",
        -- Used below code blocks for thin border
        -- below = '▀',
        below = "-",
        -- Highlight for code blocks & inline code
        highlight = "RenderMarkdownCode",
        highlight_inline = "RenderMarkdownCodeInline",
      },
      callout = {
        note = { raw = "[!NOTE]", rendered = "󰋽 Note", highlight = "RenderMarkdownInfo" },
        tip = { raw = "[!TIP]", rendered = "󰌶 Tip", highlight = "RenderMarkdownSuccess" },
        important = { raw = "[!IMPORTANT]", rendered = "󰅾 Important", highlight = "RenderMarkdownHint" },
        warning = { raw = "[!WARNING]", rendered = "󰀪 Warning", highlight = "RenderMarkdownWarn" },
        caution = { raw = "[!CAUTION]", rendered = "󰳦 Caution", highlight = "RenderMarkdownError" },
        -- Obsidian: https://help.a.md/Editing+and+formatting/Callouts
        abstract = { raw = "[!ABSTRACT]", rendered = "󰨸 Abstract", highlight = "RenderMarkdownInfo" },
        todo = { raw = "[!TODO]", rendered = "󰗡 Todo", highlight = "RenderMarkdownInfo" },
        success = { raw = "[!SUCCESS]", rendered = "󰄬 Success", highlight = "RenderMarkdownSuccess" },
        question = { raw = "[!QUESTION]", rendered = "󰘥 Question", highlight = "RenderMarkdownWarn" },
        failure = { raw = "[!FAILURE]", rendered = "󰅖 Failure", highlight = "RenderMarkdownError" },
        danger = { raw = "[!DANGER]", rendered = "󱐌 Danger", highlight = "RenderMarkdownError" },
        bug = { raw = "[!BUG]", rendered = "󰨰 Bug", highlight = "RenderMarkdownError" },
        example = { raw = "[!EXAMPLE]", rendered = "󰉹 Example", highlight = "RenderMarkdownHint" },
        quote = { raw = "[!QUOTE]", rendered = "󱆨 Quote", highlight = "RenderMarkdownQuote" },
      },
      latex = { enabled = false },
    },

    name = "render-markdown",
    dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" },
  },
  {
    "chrisgrieser/nvim-various-textobjs", -- additional text objects
    lazy = false,
    -- opts = { useDefaultKeymaps = true },
    opts = {
      keymaps = {
        useDefaults = true,
      },
    },
  },
  -- ###########################################################################
}
