vim.g.mapleader = " "

local kmap = vim.keymap

-- Panes and tabs
kmap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically"})
kmap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window Horizontally"})
kmap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size"})
kmap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split"})

kmap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab"})
kmap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab"})
kmap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab"})
kmap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab"})
kmap.set("n", "<leader>tf", "<cmd>tabnew<CR>", { desc = "Open current buffer in new tab"})

