return {
	"HampusHauffman/block.nvim",
	config = function()
		require("block").setup({
			vim.keymap.set("n", "<leader>tb", ":Block <CR>", { desc = "[T]Block Toggle" }),
		})
	end,
}
