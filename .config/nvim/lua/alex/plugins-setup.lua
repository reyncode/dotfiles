-- bootstrap packer
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

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})


-- load these plugins when called
return require('packer').startup(function(use)

	use('wbthomason/packer.nvim')

	-- lsp
	use("neovim/nvim-lspconfig")
 	use("williamboman/mason.nvim") 		  	 -- bridges the gap between nvim and the server
 	use("williamboman/mason-lspconfig.nvim") -- simple to use language server installer

  -- completions
  use {
    "hrsh7th/nvim-cmp",
    requires = {
      "hrsh7th/cmp-vsnip",
      "hrsh7th/vim-vsnip",
      "hrsh7th/cmp-buffer",
	    "hrsh7th/cmp-path",
      "hrsh7th/cmp-nvim-lsp",
    }
  }

	-- appearance
	use("nvim-tree/nvim-web-devicons") -- icon kit
	use("navarasu/onedark.nvim")	   -- colorscheme

	-- status bar
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	-- file explorer
	use("nvim-tree/nvim-tree.lua")

	-- terminal
  use {
    "akinsho/toggleterm.nvim",
    tag = '*',
  }

	-- fuzzy finder
	use("nvim-lua/plenary.nvim") -- telescope dep
	use("nvim-telescope/telescope.nvim")
	use('nvim-telescope/telescope-media-files.nvim')

	-- syntax highlighting
	use {
		'nvim-treesitter/nvim-treesitter',
		run = function()
			local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
			ts_update()
		end,
	}

	-- pairing brackets, braces, tags, etc
	use("windwp/nvim-autopairs")
	use {
		"windwp/nvim-ts-autotag",
		config = function()
			require("alex.plugins.treesitter")
		end,
	}

	-- commenting with gc
	use("numToStr/Comment.nvim")

	if packer_bootstrap then
		require('packer').sync()
	end
end)
