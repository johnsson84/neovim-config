-- Option variable
local options = { noremap = true, silent = true }

-- Set map leader
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have nerd fonts
vim.g.have_nerd_font = true

-- Neotree toggle
vim.api.nvim_set_keymap('n', '<leader>e', ':Neotree toggle <CR>', options)
