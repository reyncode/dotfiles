-- leader key
vim.g.mapleader = " "

---------------------
-- General Keymaps
---------------------

-- exit from insert, visual & command
vim.keymap.set ("i", "jk", "<ESC>")
vim.keymap.set ("v", "jk", "<ESC>")
vim.keymap.set ("c", "jk", "<C-C>")

-- don't copy into register (blackhole register "_)
vim.keymap.set ("n", "x", '"_x')

-- don't exit visual after indent/outdent
vim.keymap.set ("v", ">", ">gv")
vim.keymap.set ("v", "<", "<gv")

-- window management
vim.keymap.set ("n", "<leader>sv", "<C-w>v") 	   -- split window vertically
vim.keymap.set ("n", "<leader>sh", "<C-w>s") 	 	 -- split window horizontally
vim.keymap.set ("n", "<leader>sx", ":close<CR>") -- close current split window

vim.keymap.set ("n", "<C-k>", "<C-W><C-K>") 	 -- focus top split
vim.keymap.set ("n", "<C-j>", "<C-W><C-J>") 	 -- focus bottom split
vim.keymap.set ("n", "<C-l>", "<C-W><C-L>") 	 -- focus right split
vim.keymap.set ("n", "<C-h>", "<C-W><C-H>") 	 -- focus left split

----------------------
-- Plugin Keybinds
----------------------

-- nvim-tree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")  -- toggle file explorer
vim.keymap.set("n", "<leader>f", ":NvimTreeFocus<CR>")   -- focus file explorer
vim.keymap.set("n", "<leader>r", ":NvimTreeRefresh<CR>") -- refresh file explorer 

-- telescope
vim.keymap.set("n", "<leader>t", ":Telescope<CR>")  -- toggle file explorer
