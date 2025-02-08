-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- colorschemes:
  { import = "astrocommunity.recipes.cache-colorscheme" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  { import = "astrocommunity.colorscheme.tokyodark-nvim" },
  { import = "astrocommunity.colorscheme.nord-nvim" },
  -- writing plugins
  { import = "astrocommunity.markdown-and-latex.vimtex" },
  { import = "astrocommunity.completion.cmp-spell" },
  { import = "astrocommunity.completion.cmp-latex-symbols" },
  -- code plugins
  -- { import = "astrocommunity.completion.copilot-lua" },
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.code-runner.compiler-nvim" },
  { import = "astrocommunity.code-runner.executor-nvim" },
  -- language packages:
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.remote-development.remote-sshfs-nvim" },
  -- import/override with your plugins folder
}
