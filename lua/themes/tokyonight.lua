return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	opts = {},
	config = function()
		local bg_transparent = false

		local SetupTheme = function(isTransparent)
			require("tokyonight").setup({
				style = "night",
				transparent = isTransparent,
			})
			vim.cmd([[colorscheme tokyonight]])
		end

		SetupTheme(bg_transparent)

		local ToggleTransparency = function()
			bg_transparent = not bg_transparent
			SetupTheme(bg_transparent)
		end

		vim.keymap.set("n", "<leader>ut", ToggleTransparency, { noremap = true, silent = true })
	end,
}
