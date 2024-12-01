require("core.options")
require("core.keymaps")
require("themes.nightfox")

-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end
vim.opt.rtp:prepend(lazypath)

-- NOTE: Here is where you install your plugins.
require("lazy").setup({
	{
		-- THEMES --
		--require 'themes.nightfox',
		--require 'themes.kanagawa',
		--require 'themes.catppuccin',
		require("themes.rosepine"),
		-- UTILS --
		require("plugins.neotree"),
		require("plugins.bufferline"),
		require("plugins.lualine"),
		require("plugins.treesitter"),
		require("plugins.telescope"),
		require("plugins.lsp"),
		require("plugins.autocompletion"),
		require("plugins.autoformatting"),
		require("plugins.gitsigns"),
	},
})
