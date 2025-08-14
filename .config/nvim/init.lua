local vim = vim
local Plug = vim.fn['plug#']

vim.call("plug#begin")

Plug('nvim-tree/nvim-tree.lua')
Plug('Mofiqul/dracula.nvim')

vim.call("plug#end")

require("config.options")
require("config.keymaps")

require("plugins.nvim-tree")
require("plugins.dracula")

vim.cmd("colorscheme dracula")
