-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

lvim.plugins = {
  { "shaunsingh/nord.nvim" }
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


-- My Config
lvim.builtin.theme.tokyonight.options.transparent = true
lvim.transparent_window = true
lvim.colorscheme = "nord"
lvim.format_on_save.enabled = true





-- Keymap
-- Map jk to <Esc>
lvim.keys.insert_mode["jk"] = "<Esc>"
lvim.keys.insert_mode["<TAB>"] = false
