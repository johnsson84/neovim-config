-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { noremap = true, silent = true }
local options = function(description)
  return { noremap = true, silent = true, desc = description }
end

-- Disable arrow keys in normal mode
keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

-- x does not save to register
keymap.set("n", "x", '"_x', opts)

-- Move to the next buffer
keymap.set("n", "<Tab>", ":bnext<CR>", options("[TAB] Next buffer"))

-- Move to the previous buffer
keymap.set("n", "<S-Tab>", ":bprevious<CR>", options("[S-TAB] Previous buffer"))

-- Resize
keymap.set("n", "<Up>", "<C-w>+", opts)
keymap.set("n", "<Down>", "<C-w>-", opts)
keymap.set("n", "<Left>", "<C-w><", opts)
keymap.set("n", "<Right>", "<C-w>>", opts)

-- Tabs
keymap.set("n", "te", ":tabedit", opts)
keymap.set("n", "tn", ":tabnext<CR>", opts)
keymap.set("n", "tp", ":tabprev<CR>", opts)
