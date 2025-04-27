return {
	-- Themes
	'fcpg/vim-farout',
	'projekt0n/github-nvim-theme',
	'AlexvZyl/nordic.nvim',
	'catppuccin/nvim',
	'rose-pine/neovim',
	'rebelot/kanagawa.nvim',
	'navarasu/onedark.nvim',
	'olimorris/onedarkpro.nvim',
	'sainnhe/sonokai',
	'cpea2506/one_monokai.nvim',
	'sainnhe/gruvbox-material',

	-- Misc
	'hrsh7th/nvim-cmp',
	'lewis6991/gitsigns.nvim',
	'jacoborus/tender.vim',
	'lukas-reineke/indent-blankline.nvim',
	'nvim-treesitter/nvim-treesitter',
	'theprimeagen/harpoon',
	'mbbill/undotree',
	'ggandor/leap.nvim',
	'preservim/nerdcommenter',
	'zchee/deoplete-jedi',
	'tpope/vim-fugitive',

	-- Requiring setup
	{ 
		'cameron-wags/rainbow_csv.nvim', config = true,
		ft = { 'csv', 'tsv', 'csv_semicolon', 'csv_whitespace', 'csv_pipe', 'rfc_csv', 'rfc_semicolon' },
		cmd = { 'RainbowDelim', 'RainbowDelimSimple', 'RainbowDelimQuoted', 'RainbowMultiDelim' }
	},
	{
		'nvim-telescope/telescope.nvim', dependencies = { {'nvim-lua/plenary.nvim'} } 
	},
	{
		"princejoogie/dir-telescope.nvim", dependencies = { {"nvim-telescope/telescope.nvim"} }
	},
	{
		'folke/trouble.nvim',
		dependencies = { { 'nvim-tree/nvim-web-devicons' } }
	},
	{
		'numToStr/Comment.nvim', opt = {}
	},
	{
		'folke/todo-comments.nvim',
		dependencies = { {'nvim-lua/plenary.nvim'} }
	},
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { {'nvim-tree/nvim-web-devicons'} }
	},
	{
		'nvim-tree/nvim-tree.lua', dependencies = { {'nvim-tree/nvim-web-devicons'} }
	},
	{ 
		-- Very high priority is required, luarocks.nvim should run as the first plugin in your config.
		"vhyrro/luarocks.nvim", priority = 1000, config = true,
	},

	-- Autocompletion
	{
		'VonHeikemen/lsp-zero.nvim', branch = 'v4.x', lazy = true, config = false,
	},
	{
		'williamboman/mason.nvim', lazy = false, config = true,
	},
	{
		'hrsh7th/nvim-cmp', event = 'InsertEnter', dependencies = { {'L3MON4D3/LuaSnip'} },
		config = function()
			local cmp = require('cmp')
			cmp.setup({
				sources = {
				  {name = 'nvim_lsp'},
				},
				mapping = cmp.mapping.preset.insert({
				  ['<C-Space>'] = cmp.mapping.complete(),
				  ['<C-u>'] = cmp.mapping.scroll_docs(-4),
				  ['<C-d>'] = cmp.mapping.scroll_docs(4),
				}),
				snippet = {
					expand = function(args)
					vim.snippet.expand(args.body)
				  end,
				},
			})
		end
	},

	-- LSP
	{
		'neovim/nvim-lspconfig', cmd = {'LspInfo', 'LspInstall', 'LspStart'}, event = {'BufReadPre', 'BufNewFile'},
		dependencies = { {'hrsh7th/cmp-nvim-lsp'}, {'williamboman/mason.nvim'}, {'williamboman/mason-lspconfig.nvim'} },
		config = function()
			local lsp_zero = require('lsp-zero')
			-- lsp_attach is where you enable features that only work
			-- if there is a language server active in the file
			local lsp_attach = function(client, bufnr)
				local opts = {buffer = bufnr}
				vim.keymap.set('n', '<leader>ws', function() vim.lsp.buf.workspace_symbol() end, opts)
				vim.keymap.set('n', '<leader>vd', function() vim.diagnostic.open_float() end, opts)
				vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
				vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
				vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
				vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
				vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
				vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts) 
				vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
				vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
				vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
				vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
				vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
				vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
				vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
				vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
				vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
				vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
			end

			lsp_zero.extend_lspconfig({
				sign_text = true,
				lsp_attach = lsp_attach,
				capabilities = require('cmp_nvim_lsp').default_capabilities()
			})

			require('mason-lspconfig').setup({
				ensure_installed = {},
				handlers = {
					-- this first function is the "default handler"
					-- it applies to every language server without a "custom handler"
					function(server_name)
						require('lspconfig')[server_name].setup({})
					end,
					pylsp = function()
					require'lspconfig'.pylsp.setup{
						settings = {
							pylsp = {
								plugins = {
									pycodestyle = {
										ignore = {'E501', 'E301', 'E221', 'E225', 'E226', 'E227', 'E127', 'W503'},
										maxLineLength = 88
										}
									}
								}
							}
						}
					end,
				}
			})
		end
	}
}
