return {
	"HampusHauffman/block.nvim",
	config = function()
		require("block").setup({
			automatic = false,
			bg = "#191a25",
		})
		vim.keymap.set("n", "<leader>ub", ":Block <CR>", { desc = "[B]lock Toggle" })
	end,
}
