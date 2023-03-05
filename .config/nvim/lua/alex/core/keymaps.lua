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

-- window management
vim.keymap.set ("n", "<leader>sv", "<C-w>v") 	 -- split window vertically
vim.keymap.set ("n", "<leader>sh", "<C-w>s") 	 -- split window horizontally
vim.keymap.set ("n", "<leader>sx", ":close<CR>") -- close current split window

----------------------
-- Plugin Keybinds
----------------------

-- nvim-tree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")  -- toggle file explorer
vim.keymap.set("n", "<leader>r", ":NvimTreeRefresh<CR>") -- refresh file explorer 
