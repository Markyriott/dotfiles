local vim = vim
local Plug = vim.fn['plug#']

vim.call("plug#begin")

Plug('nvim-tree/nvim-tree.lua')
Plug('Mofiqul/dracula.nvim')
Plug('folke/which-key.nvim')
Plug('nvim-lualine/lualine.nvim')
Plug('mfussenegger/nvim-lint')

vim.call("plug#end")

require("config.options")
require("config.keymaps")
--require("config.autocmd")

--require("plugins.nvim-lint")
require("plugins.nvim-tree")
require("plugins.dracula")
require("plugins.lualine")

vim.cmd("colorscheme dracula")
vim.cmd(":hi statusline guibg=NONE")
