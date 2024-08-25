
return {
	'projekt0n/github-nvim-theme',
	'AlexvZyl/nordic.nvim',
	{
		'nvim-telescope/telescope.nvim',
		dependencies = { {'nvim-lua/plenary.nvim'} }
	},
	{
		'folke/trouble.nvim',
		dependencies = { {'nvim-tree/nvim-web-devicons'} }
	},
	{
		'numToStr/Comment.nvim', opt = {}
	},
	{
		'folke/todo-comments.nvim',
		dependencies = { {'nvim-lua/plenary.nvim'} }
	},
	'lewis6991/gitsigns.nvim',
	"AlexvZyl/nordic.nvim",
	"jacoborus/tender.vim",
	"catppuccin/nvim",
	"lukas-reineke/indent-blankline.nvim",
	'rose-pine/neovim',
	'nvim-treesitter/nvim-treesitter',
	'theprimeagen/harpoon',
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { {'nvim-tree/nvim-web-devicons'} }
	},
	"rebelot/kanagawa.nvim",
	'mbbill/undotree',
	'navarasu/onedark.nvim',
	'ggandor/leap.nvim',
	'preservim/nerdcommenter',
	'zchee/deoplete-jedi',
	'tpope/vim-fugitive',
	{
		'VonHeikemen/lsp-zero.nvim',
		dependencies = { {
			-- LSP support
			'neovim/nvim-lspconfig',
			'williamboman/mason.nvim',
			'williamboman/mason-lspconfig.nvim',
			-- Autocompletion
			'hrsh7th/nvim-cmp',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'saadparwaiz1/cmp_luasnip',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-nvim-lua',
			-- Snippets
			'L3MON4D3/LuaSnip',
			'rafamadriz/friendly-snippets',
		}}
	},
	{
		'nvim-tree/nvim-tree.lua',
		dependencies = { {'nvim-tree/nvim-web-devicons'} }
	},
	{
	'cameron-wags/rainbow_csv.nvim',
	},
	{
		"vhyrro/luarocks.nvim",
		priority = 1000, -- Very high priority is required, luarocks.nvim should run as the first plugin in your config.
		config = true,
	}
}

-- local opts = {}

-- require("lazy").setup(plugins, opts)
