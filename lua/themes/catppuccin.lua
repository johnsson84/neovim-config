return {
   {
      "catppuccin/nvim", 
      name = "catppuccin",
      lazy = false,
	   priority = 1000,
	   config = function()
         local theme = "catppuccin-mocha"

         -- Init setup
         require('catppuccin').setup({
            transparent_background = true,
         })
         vim.cmd("colorscheme " .. theme)

         -- Toggle transparency
         local bg_transparent = true
         local toggle_bg_transparent = function()
            bg_transparent = not bg_transparent
            require('catppuccin').setup({
               transparent_background = bg_transparent,
            })
            vim.cmd("colorscheme " .. theme)
         end
         vim.keymap.set('n', '<leader>bg', toggle_bg_transparent, {noremap = true, silent = true})
	end
   }
}
