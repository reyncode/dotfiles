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

-- load these plugins when called
return require('packer').startup(function(use)

	use('wbthomason/packer.nvim')

	-- My plugins here

	-- lsp
	use("neovim/nvim-lspconfig") 			 -- enable LSP
  	use("williamboman/mason.nvim") 		  	 -- bridges the gap between nvim and the server
  	use("williamboman/mason-lspconfig.nvim") -- simple to use language server installer

	-- pairing brackets, braces, etc
	use("windwp/nvim-autopairs")

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

	-- syntax highlighting
	use {
		'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
		end,
	}

	if packer_bootstrap then
		require('packer').sync()
	end
end)
