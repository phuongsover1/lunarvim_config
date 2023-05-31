-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

lvim.plugins = {
  { "shaunsingh/nord.nvim" },
  { 'akinsho/git-conflict.nvim', version = "*",     config = true },
  { 'rose-pine/neovim',          name = 'rose-pine' },
  { "ellisonleao/gruvbox.nvim",  priority = 1000 },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup(
        { "css", "scss", "html", "javascript", "javascriptreact", "typescriptreact", "typescript" }, {
          RGB = true,      -- #RGB hex codes
          RRGGBB = true,   -- #RRGGBB hex codes
          RRGGBBAA = true, -- #RRGGBBAA hex codes
          rgb_fn = true,   -- CSS rgb() and rgba() functions
          hsl_fn = true,   -- CSS hsl() and hsla() functions
          css = true,      -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
          css_fn = true,   -- Enable all CSS *functions*: rgb_fn, hsl_fn
        })
    end,
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = true
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require "lsp_signature".on_attach() end,
  },
}

-- Null-ls Config
local null_ls = require("null-ls")
null_ls.setup({
  sources = {
    null_ls.builtins.formatting.prettierd.with({
      env = {
        PRETTIERD_DEFAULT_CONFIG = vim.fn.expand("~/.config/bspwm/.prettierrc"),
      },
    }),
  }
})

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup({
  { name = "beautysh" }
})


local code_actions = require "lvim.lsp.null-ls.code_actions"
code_actions.setup({
  { name = "eslint_d" }
})


local linters = require "lvim.lsp.null-ls.linters"
linters.setup({
  { name = "eslint_d" }
})


-- My Config
lvim.builtin.theme.tokyonight.options.transparent = true
lvim.transparent_window = true
lvim.colorscheme = "gruvbox"
lvim.format_on_save.enabled = true
vim.opt.relativenumber = true




-- Keymap
-- Map jk to <Esc>
lvim.keys.insert_mode["jk"] = "<Esc>"
