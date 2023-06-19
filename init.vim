lua require('basic')
lua require('keybindings')
lua require('plugins')
lua require('plugin-config/nvim-tree')
lua require('plugin-config/bufferline')
lua require('plugin-config/mason')
lua require('plugin-config/nvim-cmp')
lua require('plugin-config/dap/mason-nvim-dap')
lua require('plugin-config/dap/nvim-dap')
lua require('plugin-config/dap/nvim-dap-ui')
lua require('plugin-config/glow')
lua require('plugin-config/nvim-treesitter')
lua require('plugin-config/telescope')
lua require('plugin-config/dashboard')
lua require('plugin-config/formatter')
lua require('plugin-config/toggleterm')
lua require('plugin-config/navigator')


colorscheme gruvbox


augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost * FormatWrite
augroup END
