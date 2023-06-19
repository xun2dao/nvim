vim.g.mapleader = ","
vim.g.maplocalleader = ","

local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

-- 分屏

map("n", "sv", ":vsplit<CR>", opt)
map("n", "sh", ":split<CR>", opt)
map("n", "sc", "<C-w>c", opt)
map("n", "so", "<C-w>o", opt)

map("n", "<C-h>", "<C-w>h", opt)
map("n", "<C-k>", "<C-w>k", opt)
map("n", "<C-j>", "<C-w>j", opt)
map("n", "<C-l>", "<C-w>l", opt)

--移动
map("v", "J", ":m '>+1<CR>gv=gv", opt)
map("v", "K", ":m '<-2<CR>gv=gv", opt)
-- compile
map("n", "<leader>b", ":!cmake --build build<CR>", opt)

-- nvim-tree
map("n", "<leader>t", ":NvimTreeToggle<CR>", opt)

-- bufferline
map("n", "<leader>a", ":BufferLineCyclePrev<CR>", opt)
map("n", "<leader>f", ":BufferLineCycleNext<CR>", opt)
map("n", "<leader>c", ":bp | bd #<CR>", opt)

-- markdown
map("n", "mk", ":Glow<CR>", opt)

-- translate
map("n", "<leader>d", "<Plug>TranslateW", opt)
map("v", "<leader>w", "<Plug>TranslateWV", opt)
map("n", "to", ":FTermOpen<CR>", opt)
map("n", "te", ":FTermExit<CR>", opt)
map("n", "tc", ":FTermClose<CR>", opt)
map("n", "tt", ":FTermToggle<CR>", opt)

-- 取消高亮
map("n", ",nh", ":nohl<CR>", opt)

-- nvim terminal
map("n", "tm", ":ToggleTerm<CR>", opt)

-- dap
map("n", "<F9>", ":DapStepOver<CR>", opt)
map("n", "<F8>", ":DapToggleBreakpoint<CR>", opt)
map("n", "<F10>", ":DapStepInto<CR>", opt)
map("n", "<F5>", ":DapContinue<CR>", opt)
map("n", "T", "<cmd>lua require'dapui'.eval()<cr>", opt)
