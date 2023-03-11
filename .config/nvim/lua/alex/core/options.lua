-- numbering
vim.opt.number = true
vim.opt.relativenumber = true

-- tabs & spacing
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true

-- line wrap
vim.opt.wrap = false

-- search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.iskeyword:append("-")
vim.opt.iskeyword:append("_")

-- appearance
vim.opt.termguicolors = false
vim.opt.background = "dark"

-- backspace
vim.opt.backspace = "indent,eol,start"

-- clipboard
vim.opt.clipboard = "unnamedplus"
if vim.fn.has('wsl') == 1 then
	vim.api.nvim_create_autocmd('TextYankPost', {
		group = vim.api.nvim_create_augroup('Yank', { clear = true }),
		callback = function()
			vim.fn.system('clip.exe', vim.fn.getreg('"'))
		end,
	})
end

-- split windows
vim.opt.splitright = true
vim.opt.splitbelow = true
