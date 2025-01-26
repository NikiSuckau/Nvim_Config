-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- colorschemes:
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  { import = "astrocommunity.colorscheme.tokyodark-nvim" },
  { import = "astrocommunity.colorscheme.nord-nvim" },
  -- plugins
  { import = "astrocommunity.markdown-and-latex.vimtex" },
  { import = "astrocommunity.completion.copilot-lua" },
  { import = "astrocommunity.note-taking.obsidian-nvim" },
  -- language packages:
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.markdown" },
  -- import/override with your plugins folder
}
