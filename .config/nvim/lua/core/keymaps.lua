vim.g.mapleader = " "

local keymap = vim.keymap

local utils = require("core.utils")

keymap.set("i", "jk", "<ESC>")
keymap.set("i", "<C-s>", "<ESC>:w<CR>", { silent = true })
keymap.set("i", "<C-a>", "<ESC>A")
keymap.set("i", "<C-i>", "<ESC>I")

-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true })

-- 窗口
keymap.set("n", "<leader>wv", "<C-w>v") -- 水平新增窗口
keymap.set("n", "<leader>wh", "<C-w>s") -- 垂直新增窗口
keymap.set("n", "<leader>wq", "<C-w>q") -- 删除窗口

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "no highlight", silent = true, noremap = true })

-- 切换buffer
keymap.set({ "n", "i" }, "<C-l>", "<cmd>bnext<CR>", { desc = "next buffer", silent = true, noremap = true })
keymap.set({ "n", "i" }, "<C-h>", "<cmd>bprevious<CR>", { desc = "prev buffer", silent = true, noremap = true })
-- 保存buffer
keymap.set("n", "<leader>bw", ":w<CR>", { desc = "save buffer", silent = true, noremap = true })

-- 导航
keymap.set("n", "zk", "H", { desc = "viewport top", noremap = true })
keymap.set("n", "zj", "L", { desc = "viewport bottom", noremap = true })
keymap.set({ "n", "v" }, "H", "0", { desc = "line head", noremap = true })
keymap.set({ "n", "v" }, "L", "$", { desc = "line tail", noremap = true })

-- 触发 diagnostic 可见性
keymap.set("n", "<leader>nd", function()
	utils.toggle_diagnostic(0)
end, utils.opts("toggle diagnostic"))
-- 清除 diagnostic 缓存
keymap.set("n", "<leader>nc", function()
	vim.diagnostic.reset()
end, utils.opts("reset diagnostic cache"))
-- 禁用/触发折行
keymap.set("n", "<leader>nw", function()
	vim.opt.wrap = not vim.opt.wrap
end, utils.opts("wrap/breakline"))

-- 导航
keymap.set("n", "zk", "H", { desc = "viewport top", noremap = true })
keymap.set("n", "zj", "L", { desc = "viewport bottom", noremap = true })
keymap.set({ "n", "v" }, "H", "0", { desc = "line head", noremap = true })
keymap.set({ "n", "v" }, "L", "$", { desc = "line tail", noremap = true })

-- diagnostic 相关
keymap.set("n", "<leader>bd", function()
	utils.toggle_diagnostic(0)
end, utils.opts("toggle diagnostic"))
