-- numbering
vim.opt.number = true
vim.opt.relativenumber = true

-- tabs & spacing
vim.opt.tabstop = 2 -- length of a <TAB>
vim.opt.shiftwidth = 0 -- length to use when shifting text (0 for tabstop)
vim.opt.softtabstop = 0 -- length to use when editing text

vim.opt.expandtab = true -- use spaces
vim.opt.autoindent = true -- reproduce the indentation of the previous line
vim.opt.smartindent = true -- indent appropriately before/after {} for c-like languages

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
vim.opt.clipboard:append("unnamedplus")
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
