-- Tools installed and managed by Mason
M = {}
local lsp = {
	"lua_ls", -- lua
	"clangd", -- c/c++
	"bashls", -- shell
	"spectral", -- json & yaml
	"pylsp", -- python
	"jdtls", -- java
	"gopls", -- golang
	"marksman", -- markdown
    "denols", -- deno (js, ts, json...)
    "sqls", -- sql
}
local dap = {
	"codelldb",
	"java-debug-adapter",
	"delve",
	"js-debug-adapter",
}
local linter = {
	"jsonlint",
	"shellcheck",
	"alex",
    "eslint_d",
    "commitlint"
}
local formatter = {
	"clang-format",
	"shfmt",
	"stylua",
	"prettier",
	"pyment",
	"xmlformatter",
	"gofumpt",
	"golines",
}
M.lsp = lsp
M.dap = dap
M.linter = linter
M.formatter = formatter
M.all = vim.tbl_extend("keep", lsp, dap, linter, formatter)
M.auto_install = false -- 自动安装Mason工具
return M
