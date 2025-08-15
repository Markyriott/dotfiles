local vim = vim
local Plug = vim.fn['plug#']

vim.call("plug#begin")

Plug('nvim-tree/nvim-tree.lua')
Plug('Mofiqul/dracula.nvim')
Plug('folke/which-key.nvim')
Plug('nvim-lualine/lualine.nvim')

vim.call("plug#end")

require("config.options")
require("config.keymaps")

require("plugins.nvim-tree")
require("plugins.dracula")
require("plugins.lualine")

vim.cmd("colorscheme dracula")
