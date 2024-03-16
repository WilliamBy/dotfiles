-- alpha-config.lua

local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {

	[[          ▀████▀▄▄              ▄█ ]],
	[[            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ]],
	[[    ▄        █          ▀▀▀▀▄  ▄▀  ]],
	[[   ▄▀ ▀▄      ▀▄              ▀▄▀  ]],
	[[  ▄▀    █     █▀   ▄█▀▄      ▄█    ]],
	[[  ▀▄     ▀▄  █     ▀██▀     ██▄█   ]],
	[[   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ]],
	[[    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ]],
	[[   █   █  █      ▄▄           ▄▀   ]],
}

local opts = { silent = true }

dashboard.section.buttons.val = {
	dashboard.button("p", "  Recent Projects", ":Telescope projects <CR>", opts),
	dashboard.button("f", "󰱼  Find file", ":Telescope find_files <CR>", opts),
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>", opts),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>", opts),
	dashboard.button("t", "󱘣  Find text", ":Telescope live_grep <CR>", opts),
	dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua<CR>", opts),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>", opts),
}

local function footer()
	return "Coding and Have Fun (*^_^*)"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
