return {
	"HampusHauffman/block.nvim",
	config = function()
		require("block").setup({
			automatic = true,
		})
		vim.keymap.set("n", "<leader>ub", ":Block <CR>", { desc = "[B]lock Toggle" })
	end,
}
