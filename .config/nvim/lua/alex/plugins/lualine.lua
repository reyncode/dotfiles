local lualine_status, lualine = pcall(require, "lualine")
if not lualine_status then
	return
end

-- pick the theme you want
-- https://github.com/nvim-lualine/lualine.nvim/blob/master/THEMES.md
local lualine_theme = require("lualine.themes.onedark")

lualine.setup({
	options = {
		theme = lualine_theme
	}
})
