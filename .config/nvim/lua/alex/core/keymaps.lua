---------------------
-- Leader Key
---------------------
vim.g.mapleader = " "

---------------------
-- Reminders
---------------------
-- :new [open new window horizontally]
-- :vne [open new window vertically]
-- :sp {file} [open file path in window horizontally]
-- :vs {file} [open file path in window vertically]
-- :qa [quits all windows, saved]
-- :!qa [quits all windows, unsaved]
-- :find {file}

---------------------
-- General Keymaps
---------------------

-- exit from insert, visual & command
vim.keymap.set ("i", "jk", "<ESC>")
vim.keymap.set ("v", "jk", "<ESC>")
vim.keymap.set ("c", "jk", "<C-C>")

-- move the current line up or down
vim.keymap.set ("n", "<A-k>", ":m .-2<CR>==") -- up
vim.keymap.set ("n", "<A-j>", ":m .+1<CR>==") -- down

vim.keymap.set ("v", "<A-k>", ":m '<-2<CR>gv=gv") -- up
vim.keymap.set ("v", "<A-j>", ":m '>+1<CR>gv=gv") -- down

vim.keymap.set ("i", "<A-k>", ":m .-2<CR>") -- up
vim.keymap.set ("i", "<A-j>", ":m .+1<CR>") -- down

-- don't copy into register (blackhole register "_)
vim.keymap.set ("n", "x", '"_x')

-- don't exit visual after indent/outdent
vim.keymap.set ("v", ">", ">gv")
vim.keymap.set ("v", "<", "<gv")

-- window navigation
vim.keymap.set ("n", "<C-k>", "<C-W><C-K>") 	 -- focus top split
vim.keymap.set ("n", "<C-j>", "<C-W><C-J>") 	 -- focus bottom split
vim.keymap.set ("n", "<C-l>", "<C-W><C-L>") 	 -- focus right split
vim.keymap.set ("n", "<C-h>", "<C-W><C-H>") 	 -- focus left split
vim.keymap.set("n", "<leader>b", ":b#<CR>")    -- return to the previous buffer

-- window resize
vim.keymap.set ("n", "-", ":res -2<CR>")       -- decrease height
vim.keymap.set ("n", "=", ":res +2<CR>")       -- increase height
vim.keymap.set ("n", "_", ":vert res -2<CR>")  -- decrease width
vim.keymap.set ("n", "+", ":vert res +2<CR>")  -- increase width

-- diagnostics
vim.keymap.set("n", "gl", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist)

-- buffer
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
vim.keymap.set("n", "gh", vim.lsp.buf.hover)
vim.keymap.set("n", "gi", vim.lsp.buf.implementation)
vim.keymap.set("n", "gr", vim.lsp.buf.references)

----------------------
-- Plugin Keybinds
----------------------

-- nvim-tree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")  -- toggle file explorer
vim.keymap.set("n", "<leader>f", ":NvimTreeFocus<CR>")   -- focus file explorer

-- telescope
vim.keymap.set("n", "<leader>t", ":Telescope<CR>")  -- toggle file explorer

--nvim-cmp
vim.keymap.set("n", "<leader>c", "<cmd>lua vim.g.cmp_toggle = not vim.g.cmp_toggle<CR>") -- toggle completions
