-- nvim-lint
local mason_ls = require("configures.mason-ls")
-- 自动配置
require("mason-nvim-lint").setup({
	-- A list of linters to automatically install if they're not already installed. Example: { "eslint_d", "revive" }
	-- This setting has no relation with the `automatic_installation` setting.
	-- Names of linters should be taken from the mason's registry.
	---@type string[]
	ensure_installed = mason_ls.linter,

	-- Whether linters that are set up (via nvim-lint) should be automatically installed if they're not already installed.
	-- It tries to find the specified linters in the mason's registry to proceed with installation.
	-- This setting has no relation with the `ensure_installed` setting.
	---@type boolean
	automatic_installation = mason_ls.auto_install,

	-- Disables warning notifications about misconfigurations such as invalid linter entries and incorrect plugin load order.
	quiet_mode = true,
})
-- 手动配置
require('lint').linters_by_ft = {
  markdown = {'alex',}
}
-- autocmd 写入buffer后自动触发lint
vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	callback = function()
		require("lint").try_lint()
	end,
})
