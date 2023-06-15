return require("packer").startup(function()
	use("wbthomason/packer.nvim")

	-- gruvbox scheme
	use({
		"ellisonleao/gruvbox.nvim",
		requires = { "rktjmp/lush.nvim" },
	})

	-- formatter.nvim
	use({
		require("packer").use({ "mhartington/formatter.nvim" }),
	})

	-- nord scheme
	use("shaunsingh/nord.nvim")

	-- zephyr
	use("glepnir/zephyr-nvim")

	-- nvim-tree
	use({
		"kyazdani42/nvim-tree.lua",
		requires = "kyazdani42/nvim-web-devicons",
	})

	-- bufferline
	use({ "akinsho/bufferline.nvim", requires = "kyazdani42/nvim-web-devicons" })

	-- statusline : galaxyline
	use({
		"NTBBloodbath/galaxyline.nvim",
		-- your statusline
		config = function()
			require("galaxyline.themes.eviline")
		end,
		-- some optional icons
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})

	-- LSP
	use({
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		"williamboman/mason.nvim",
	})

	-- DAP
	use({
		"jay-babu/mason-nvim-dap.nvim",
		"williamboman/mason.nvim",
		"mfussenegger/nvim-dap",
	})

	-- DAP-UI
	use({ "rcarriga/nvim-dap-ui", requires = { "mfussenegger/nvim-dap" } })
	-- completion
	use("hrsh7th/nvim-cmp") -- Autocompletion plugin
	use("hrsh7th/cmp-nvim-lsp") -- LSP source for nvim-cmp
	use("saadparwaiz1/cmp_luasnip") -- Snippets source for nvim-cmp
	use("L3MON4D3/LuaSnip") -- Snippets plugin
	use("hrsh7th/cmp-path") -- { name = 'path' }

	-- markdown
	use({ "ellisonleao/glow.nvim" })

	-- nvim-treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})

	-- vimtex
	use({
		"lervag/vimtex",
		opt = true,
		config = function()
			vim.g.vimtex_view_general_viewer = "okular"
			vim.g.vimtex_compiler_latexmk_engines = {
				_ = "-xelatex",
			}
			vim.g.tex_comment_nospell = 1
			vim.g.vimtex_compiler_progname = "nvr"
			vim.g.vimtex_view_general_options = [[--unique file:@pdf\#src:@line@tex]]
			vim.g.vimtex_view_general_options_latexmk = "--unique"
		end,
		ft = "tex",
	})

	-- toggle terminal
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()
			require("toggleterm").setup()
		end,
	})

	-- translate
	use("voldikss/vim-translate-me")

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.1",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use({
		"glepnir/dashboard-nvim",
		event = "VimEnter",
		config = function()
			require("dashboard").setup({
				-- config
				theme = "hyper",
				config = {
					week_header = {
						enable = true,
					},
					shortcut = {
						{ desc = " Update", group = "@property", action = "Lazy update", key = "u" },
						{
							icon = " ",
							icon_hl = "@variable",
							desc = "Files",
							group = "Label",
							action = "Telescope find_files",
							key = "f",
						},
						{
							desc = " Apps",
							group = "DiagnosticHint",
							action = "Telescope app",
							key = "a",
						},
						{
							desc = " dotfiles",
							group = "Number",
							action = "Telescope dotfiles",
							key = "d",
						},
					},
				},
			})
		end,
		requires = { "nvim-tree/nvim-web-devicons" },
	})

	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()
			require("toggleterm").setup()
		end,
	})
end)
