local tree_status, tree = pcall(require, "nvim-tree")

if not tree_status then
	return
end

-- recommended settings from nvim-tree documentation
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

tree.setup({

	renderer = {
		icons = {
			glyphs = {
				folder = {
					arrow_closed = "", -- folder closed
					arrow_open = "",   -- folder open
				},
			},
		},
	},

	-- disable window_picker for explorer to work well with window splits
	actions = {
		open_file = {
			window_picker = {
				enable = false,
			},
		},
	},
	git = {
		ignore = false
	},
})
