return require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    -- gruvbox scheme
    use {
        "ellisonleao/gruvbox.nvim",
        requires = {"rktjmp/lush.nvim"}
    }

    -- nord scheme
    use 'shaunsingh/nord.nvim'

    -- zephyr
    use 'glepnir/zephyr-nvim'


    -- nvim-tree
    use {
            'kyazdani42/nvim-tree.lua',
            requires = 'kyazdani42/nvim-web-devicons'
        }

    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'} 


    -- LSP
    use {
        "williamboman/mason-lspconfig.nvim",
        requires = {
        "neovim/nvim-lspconfig",
        "williamboman/mason.nvim",
        }
    }

    -- completion
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin 
    use 'hrsh7th/cmp-path'     -- { name = 'path' }


    -- markdown
    use {"ellisonleao/glow.nvim"}

    -- nvim-treesitter 
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }


    -- navigator
    use({
        'ray-x/navigator.lua',
        requires = {
            { 'ray-x/guihua.lua', run = 'cd lua/fzy && make' },
            { 'neovim/nvim-lspconfig' },
        },
    })

    -- vimtex
    use ({ 
    'lervag/vimtex',
    opt = true,
    config = function ()
        vim.g.vimtex_view_general_viewer = 'okular'
        vim.g.vimtex_compiler_latexmk_engines = {
            _ = '-xelatex'
        }
        vim.g.tex_comment_nospell = 1
        vim.g.vimtex_compiler_progname = 'nvr'
        vim.g.vimtex_view_general_options = [[--unique file:@pdf\#src:@line@tex]]
        vim.g.vimtex_view_general_options_latexmk = '--unique'
    end,
    ft = 'tex'
    })

    -- translate
    use 'voldikss/vim-translate-me'
end)
