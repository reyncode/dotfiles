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
vim.opt.iskeyword:append ("-")

-- appearance
vim.opt.termguicolors = false
vim.opt.background = "dark"

-- backspace
vim.opt.backspace = "indent,eol,start"

-- clipboard
vim.opt.clipboard:append ("unnamedplus")

-- split windows
vim.opt.splitright = true
vim.opt.splitbelow = true
