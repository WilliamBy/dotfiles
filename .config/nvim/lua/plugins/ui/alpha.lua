-- alpha-config.lua

local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local theme = require("alpha.themes.dashboard")
theme.section.header.val = {

	-- [[          ▀████▀▄▄              ▄█ ]],
	-- [[            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ]],
	-- [[    ▄        █          ▀▀▀▀▄  ▄▀  ]],
	-- [[   ▄▀ ▀▄      ▀▄              ▀▄▀  ]],
	-- [[  ▄▀    █     █▀   ▄█▀▄      ▄█    ]],
	-- [[  ▀▄     ▀▄  █     ▀██▀     ██▄█   ]],
	-- [[   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ]],
	-- [[    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ]],
	-- [[   █   █  █      ▄▄           ▄▀   ]],
	[[                                                                     ]],
	[[                                                                     ]],
	[[       ▒▒▓▓▓            ▒▓▓▒▒                                        ]],
	[[    ▒▓██████▓          ▒███████▒                                     ]],
	[[ ▒   ▓███████▓         ████████                                      ]],
	[[ ▒▒   ▓███████▓       ▓███████▒               ▒▒▒                    ]],
	[[  ▒▒   ▓███████▒     ▓███████▓               ▒██████                 ]],
	[[   ▒▒   ▓███████▒   ▒███████▓   ▓▓▓▓▓▓       ▓███████        ▓██▓▓▓▒ ]],
	[[    ▒▒   ████████  ▒████████    ▓▓▓▓▓▓▒      ████████▓     ▓███████▒ ]],
	[[     ▒▒   ████████▒████████▒    ▒▓▓▓▓▓▒      █████████▓  ▓█████████  ]],
	[[      ▒▒   ███████████████▒      ▓▓▓▓▓▓     ▒█████ ████▓████▓█████▒  ]],
	[[       ▒    █████████████▓       ▓▓▓▓▓▓▒    ▓████▓ ▒███████▒▒█████   ]],
	[[        ▓    ███████████▒        ▒▓▓▓▓▓▒    █████▓  ▓████▓  █████▓   ]],
	[[         ▓    █████████▒          ▓▓▓▓▓▓    █████▒   ▒▓▓▒  ▓█████    ]],
	[[          ▓    ▓▓▓▓▓▓▒            ▓▓▓▓▓▓   ▒█████▒         █████▓    ]],
	[[                                  ▒▓▓▓▓▓▒                 ▓█████     ]],
	[[                                  ▒▒▒▒▒▒▒                   ▒▒▒▒     ]],
	[[                                                                     ]],
	[[                                                                     ]],
}

local opts = { silent = true }

theme.section.buttons.val = {
	theme.button("p", "  Recent Projects", ":Telescope projects <CR>", opts),
	theme.button("f", "󰱼  Find file", ":Telescope find_files <CR>", opts),
	theme.button("e", "  New file", ":ene <BAR> startinsert <CR>", opts),
	theme.button("r", "  Recently used files", ":Telescope oldfiles <CR>", opts),
	theme.button("t", "󱘣  Find text", ":Telescope live_grep <CR>", opts),
	theme.button("c", "  Configuration", ":e ~/.config/nvim/init.lua<CR>", opts),
	theme.button("q", "  Quit Neovim", ":qa<CR>", opts),
}

local function footer()
	return "Coding and Have Fun (*^_^*)"
end

theme.section.footer.val = footer()

theme.section.footer.opts.hl = "Type"
theme.section.header.opts.hl = "Include"
theme.section.buttons.opts.hl = "Keyword"

theme.opts.opts.noautocmd = true
alpha.setup(theme.opts)
