return {
	"goolord/alpha-nvim",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")
		dashboard.section.header.val = {
			--	[[                               __                ]],
			--	[[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
			--	[[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
			--	[[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
			--	[[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
			--	[[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
			--"                                   ",
			--"                                   ",
			--"                                   ",
			--"   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ",
			--"    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ",
			--"          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ",
			--"           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ",
			--"          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ",
			--"   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ",
			--"  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ",
			--" ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ",
			--" ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ",
			--"      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ",
			--"       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ",
			--"                                   ",
			"  ██████╗ ███████╗███╗   ██╗████████╗ ██████╗  ██████╗  ",
			" ██╔════╝ ██╔════╝████╗  ██║╚══██╔══╝██╔═══██╗██╔═══██╗ ",
			" ██║  ███╗█████╗  ██╔██╗ ██║   ██║   ██║   ██║██║   ██║ ",
			" ██║   ██║██╔══╝  ██║╚██╗██║   ██║   ██║   ██║██║   ██║ ",
			" ╚██████╔╝███████╗██║ ╚████║   ██║   ╚██████╔╝╚██████╔╝ ",
			"  ╚═════╝ ╚══════╝╚═╝  ╚═══╝   ╚═╝    ╚═════╝  ╚═════╝  ",
		}
		dashboard.section.buttons.val = {
			dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
			dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
			dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
			dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
			dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua<CR>"),
			dashboard.button("q", "󰅚  Quit NVIM", ":qa<CR>"),
		}
		dashboard.section.footer.val =
			"I’m not saying I hate you, what I’m saying is that you are literally the Monday of my life."

		dashboard.config.opts.noautocmd = true

		vim.cmd([[autocmd User AlphaReady echo 'ready']])

		alpha.setup(dashboard.config)
	end,
}
