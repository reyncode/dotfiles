local treesitter_status, treesitter = pcall(require, 'nvim-treesitter.configs')
if not treesitter_status then
	return
end

treesitter.setup {

	ensure_installed = { "c", "cpp", "lua", "vim", "help", "query" },

	-- Install parsers synchronously (only applied to `ensure_installed`)
  	sync_install = false,

	-- List of parsers to ignore installing
	ignore_install = { "" },

	highlight = {
		enable = true,
		disable = { "" },
		additional_vim_regex_highlighting = false,
	},

	indent = {
		enable = true
	}
}
