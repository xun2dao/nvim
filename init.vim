lua require('basic')
lua require('keybindings')
lua require('plugins')
lua require('plugin-config/nvim-tree')
lua require('plugin-config/mason')
lua require('plugin-config/bufferline')
lua require('plugin-config/nvim-cmp')
lua require('plugin-config/glow')
lua require('plugin-config/nvim-treesitter')
lua require('plugin-config/telescope')
lua require('plugin-config/dashboard')
lua require('plugin-config/formatter')


colorscheme gruvbox


augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost * FormatWrite
augroup END
