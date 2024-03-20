vim.g.mapleader = " "

local keymap = vim.keymap

local utils = require("core.utils")

-- ---------- 插入模式 ---------- ---
keymap.set("i", "jk", "<ESC>")
keymap.set("i", "<C-S>", "<ESC>:w<CR>", { silent = true })
keymap.set("i", "<C-A>", "<ESC>A")

-- ---------- 视觉模式 ---------- ---
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true })

-- ---------- 正常模式 ---------- ---
-- 窗口
keymap.set("n", "<leader>wv", "<C-w>v") -- 水平新增窗口
keymap.set("n", "<leader>wh", "<C-w>s") -- 垂直新增窗口
keymap.set("n", "<leader>wq", "<C-w>q") -- 删除窗口
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")
keymap.set("n", "<C-h>", "<C-w>h")

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "no highlight", silent = true, noremap = true })

-- 切换buffer
keymap.set("n", "<C-x>", ":bnext<CR>", { desc = "next buffer", silent = true, noremap = true })
keymap.set("n", "<C-z>", ":bprevious<CR>", { desc = "prev buffer", silent = true, noremap = true })
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
-- 禁用/触发折行
keymap.set("n", "<leader>nw", function()
	vim.opt.wrap = not vim.opt.wrap
end, utils.opts("wrap/breakline"))

-- 切换buffer
keymap.set("n", "<C-x>", ":bnext<CR>", { desc = "next buffer", silent = true, noremap = true })
keymap.set("n", "<C-z>", ":bprevious<CR>", { desc = "prev buffer", silent = true, noremap = true })
-- 保存buffer
keymap.set("n", "<leader>bw", ":w<CR>", { desc = "save buffer", silent = true, noremap = true })

-- 导航
keymap.set("n", "zk", "H", { desc = "viewport top", noremap = true })
keymap.set("n", "zj", "L", { desc = "viewport bottom", noremap = true })
keymap.set({ "n", "v" }, "H", "0", { desc = "line head", noremap = true })
keymap.set({ "n", "v" }, "L", "$", { desc = "line tail", noremap = true })

-- diagnostic 相关
keymap.set("n", "<leader>bd", function()
	utils.toggle_diagnostic(0)
end, utils.opts("toggle diagnostic"))
-- 切换buffer
keymap.set("n", "<C-x>", ":bnext<CR>", { desc = "next buffer", silent = true, noremap = true })
keymap.set("n", "<C-z>", ":bprevious<CR>", { desc = "prev buffer", silent = true, noremap = true })
-- 保存buffer
keymap.set("n", "<leader>bw", ":w<CR>", { desc = "save buffer", silent = true, noremap = true })

-- 导航
keymap.set("n", "zk", "H", { desc = "viewport top", noremap = true })
keymap.set("n", "zj", "L", { desc = "viewport bottom", noremap = true })
keymap.set({ "n", "v" }, "H", "0", { desc = "line head", noremap = true })
keymap.set({ "n", "v" }, "L", "$", { desc = "line tail", noremap = true })

-- diagnostic 相关
keymap.set("n", "<leader>bd", function()
	utils.toggle_diagnostic(0)
end, utils.opts("toggle diagnostic"))
