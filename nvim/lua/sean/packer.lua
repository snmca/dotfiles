-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
   'nvim-telescope/telescope.nvim', tag = '0.1.5',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {'folke/trouble.nvim',
      requires = {'nvim-tree/nvim-web-devicons'}
  }
  use {
      'numToStr/Comment.nvim',
      config = function()
          require('Comment').setup()
      end
  }
  use { 'folke/todo-comments.nvim', requires = {'nvim-lua/plenary.nvim' }  }
  use { 'lewis6991/gitsigns.nvim' }
  use { "ellisonleao/gruvbox.nvim", as = "gruvbox" }
  use { "AlexvZyl/nordic.nvim", as = "nordic" }
  use { "jacoborus/tender.vim", as = "tender" }
  use { "catppuccin/nvim", as = "catppuccin" }
  use { "lukas-reineke/indent-blankline.nvim" }
  use({ 'rose-pine/neovim', as = 'rose-pine' })
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use ('theprimeagen/harpoon')
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use { "rebelot/kanagawa.nvim" }
  use ('mbbill/undotree')
  use ('navarasu/onedark.nvim')
  use ('ggandor/leap.nvim')
  use ('preservim/nerdcommenter')
  use ('zchee/deoplete-jedi')
  use ('tpope/vim-fugitive')
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
	-- LSP Support
	{'neovim/nvim-lspconfig'},
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},
	-- Autocompletion
	{'hrsh7th/nvim-cmp'},
	{'hrsh7th/cmp-buffer'},
	{'hrsh7th/cmp-path'},
	{'saadparwaiz1/cmp_luasnip'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/cmp-nvim-lua'},
	-- Snippets
	{'L3MON4D3/LuaSnip'},
	{'rafamadriz/friendly-snippets'},
    }
  }
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
    config = function()
      require("nvim-tree").setup {}
    end
  }
  use {
    'cameron-wags/rainbow_csv.nvim',
    config = function()
        require 'rainbow_csv'.setup()
    end,
    -- optional lazy-loading below
    module = {
        'rainbow_csv',
        'rainbow_csv.fns'
    },
    ft = {
        'csv',
        'tsv',
        'csv_semicolon',
        'csv_whitespace',
        'csv_pipe',
        'rfc_csv',
        'rfc_semicolon'
    }
  }
end)

