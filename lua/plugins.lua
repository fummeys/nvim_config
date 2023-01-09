local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	-- My plugins here
	use 'shaunsingh/moonlight.nvim'
	use 'folke/tokyonight.nvim' -- colorscheme
	use 'Abstract-IDE/Abstract-cs'
	use "nvim-lua/plenary.nvim"
	-- commenting with gc
	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons', -- optional, for file icons
		}
	}
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use({
		'noib3/nvim-cokeline',
		requires = 'kyazdani42/nvim-web-devicons', -- If you want devicons
		config = function()
			require('cokeline').setup()
		end
	})

	use {
		"folke/which-key.nvim",
		config = function()
			require("which-key").setup {
			}
		end
	}

	use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP

	use { 'nvim-treesitter/nvim-treesitter'	}
	use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
	use {
		'nvim-telescope/telescope.nvim', branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use 'BurntSushi/ripgrep'
	use 'sharkdp/fd'
	use "kdheepak/lazygit.nvim"

	use("hrsh7th/nvim-cmp") -- completion plugin
	use("hrsh7th/cmp-buffer") -- source for text in buffer
	use("hrsh7th/cmp-path") -- source for file system paths 
	use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
	use "hrsh7th/cmp-nvim-lua"
	use("L3MON4D3/LuaSnip") -- snippet engine
	use("saadparwaiz1/cmp_luasnip") -- for autocompletion
	use("rafamadriz/friendly-snippets") -- useful snippets 
	use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion


	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}
	use {
		"windwp/nvim-ts-autotag",
		config = function() require("nvim-autopairs").setup {} end
	}

	use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'} -- fold plugin
	use 'JoosepAlviste/nvim-ts-context-commentstring' -- better commenting




	use("williamboman/mason.nvim") -- in charge of managing lsp servers, linters & formatters
	use("williamboman/mason-lspconfig.nvim") -- bridges gap b/w mason & lspconfig
	use({
		"glepnir/lspsaga.nvim",
		branch = "main",
	})
	use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls
	use({
		"jose-elias-alvarez/null-ls.nvim",
		config = function()
			require("null-ls").setup()
		end,
		requires = { "nvim-lua/plenary.nvim" },
	})



	use {
		'lewis6991/gitsigns.nvim',
		config = function()
			require('gitsigns').setup()
		end
	}
	use "airblade/vim-gitgutter"
	use "jwalton512/vim-blade"
	use {
		"rest-nvim/rest.nvim",
		requires = { "nvim-lua/plenary.nvim" }
	}
	-- use "/home/remmy/Documents/GitHub/plugins/blade_snip"

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require('packer').sync()
	end
end)
