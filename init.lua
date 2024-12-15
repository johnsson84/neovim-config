require("settings.global")
require("settings.keymap")

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

require("lazy").setup({
	{
		-- PLUGINS
		require("plugins.neotree"),
		require("plugins.lualine"),
		require("plugins.telescope"),
		require("plugins.wich-key"),
		require("plugins.lazydev"),
		require("plugins.luvit"),
		require("plugins.lsp"),
		require("plugins.conform"),
		require("plugins.nvim-cmp"),
		require("plugins.todo-comments"),
		require("plugins.autopairs"),
		require("plugins.gitsigns"),
		require("plugins.lint"),
		require("plugins.indent_line"),
		require("plugins.debug"),
		require("plugins.bufferline"),
		require("plugins.alpha"),
		require("plugins.block"),
		require("plugins.trouble"),
		require("plugins.mini-notify"),
	},
	{
		-- THEMES
		require("themes.tokyonight"),
		--require("themes.everforest"),
		--require("themes.rose-pine"),
	},
})

--vim.cmd(":Neotree toggle <CR>")
