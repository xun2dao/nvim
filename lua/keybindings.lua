vim.g.mapleader = ","
vim.g.maplocalleader = ","

local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}


-- 分屏

map("n", "sv", ":vsplit<CR>", opt)
map("n", "sh", ":split<CR>", opt)
map("n", "sc", "<C-w>c", opt)
map("n", "so", "<C-w>o", opt)

map("n", "<C-h>", "<C-w>h", opt)
map("n", "<C-k>", "<C-w>k", opt)
map("n", "<C-j>", "<C-w>j", opt)
map("n", "<C-l>", "<C-w>l", opt)


-- nvim-tree
map("n", "<leader>t", ":NvimTreeToggle<CR>", opt)

-- bufferline
map("n", "<leader>a", ":BufferLineCyclePrev<CR>", opt)
map("n", "<leader>f", ":BufferLineCycleNext<CR>", opt)
map("n", "<leader>c", ":bp | bd #<CR>", opt)

-- markdown
map("n", "mk", ":Glow<CR>", opt)
