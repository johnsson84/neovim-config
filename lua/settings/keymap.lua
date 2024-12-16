-- Option variable
local options = { noremap = true, silent = true }

local option = function(description)
	return { noremap = true, silent = true, desc = description }
end

-- Set map leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Set to true if you have nerd fonts
vim.g.have_nerd_font = true

-- Neotree toggle
--vim.api.nvim_set_keymap('n', '<leader>e', ':Neotree toggle <CR>', { noremap = true, silent = true, desc = '[E] Open filetree' })
vim.api.nvim_set_keymap("n", "<leader>e", ":Neotree toggle <CR>", option("[E] Open filetree"))

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- x does not save to register
vim.keymap.set("n", "x", '"_x', options)

-- Move to the next buffer
vim.api.nvim_set_keymap("n", "<Tab>", ":bnext<CR>", option("[TAB] Next buffer"))

-- Move to the previous buffer
vim.api.nvim_set_keymap("n", "<S-Tab>", ":bprevious<CR>", option("[S-TAB] Previous buffer"))

-- Close the current buffer
vim.api.nvim_set_keymap("n", "<leader>bx", ":bdelete<CR>", option("[X] Close buffer"))

-- Resize
vim.keymap.set("n", "<Up>", "<C-w>+", options)
vim.keymap.set("n", "<Down>", "<C-w>-", options)
vim.keymap.set("n", "<Left>", "<C-w><", options)
vim.keymap.set("n", "<Right>", "<C-w>>", options)
