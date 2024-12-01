return {
   { 
      "rose-pine/neovim", 
      name = "rose-pine",
      lazy = false,
      priority = 1000,
      config = function()
         local theme = "rose-pine"

         -- Init setup
         require("rose-pine").setup({
            enable = {
               terminal = true
            },
            styles = {
               transparency = true,
            },
            palette = {
               -- Override the builtin palette per variant
               moon = {
                  base = '#54487A',
                  overlay = '#54487A', --'#363738'
               },
             },
         })
         vim.cmd("colorscheme " .. theme)

         local bg_transparent = true
         local bg_toggle_transparent = function()
            bg_transparent = not bg_transparent
            require("rose-pine").setup({
               styles = {
               transparency = bg_transparent,
            },
         })
         vim.cmd("colorscheme " .. theme)
         end
         vim.keymap.set('n', '<leader>bg', bg_toggle_transparent, {noremap = true, silent = true})
      end
   }
}
