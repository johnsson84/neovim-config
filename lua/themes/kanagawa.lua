return {
   {
	"rebelot/kanagawa.nvim",
      lazy = false,
	   priority = 1000,
	   config = function()
         -- Set theme
         local variant = "kanagawa-dragon" -- kanagawa(-dragon, -wave, -lotus) 
         -- Initial setup
         require('kanagawa').setup({
            transparent = true,
         })
         vim.cmd("colorscheme " .. variant)
      
         -- Toggle background transparency
         local bg_t = true
         local toggle_t = function()
            bg_t = not bg_t
            require('kanagawa').setup({
               transparent = bg_t,
            })
            vim.cmd("colorscheme " .. variant) 
         end
         
         vim.keymap.set('n', '<leader>bg', toggle_t, {noremap = true, silent = true})
      end
   }
}
