vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set({"n", "v"}, "<C-s>", ":w<CR>")
vim.keymap.set({"n", "v"}, "<leader>fc", ":let @/ = \"\"<CR>")

-- moving splits with Ctrl
vim.keymap.set({"n", "v"}, "<C-h>", "<C-w>H")
vim.keymap.set({"n", "v"}, "<C-j>", "<C-w>J")
vim.keymap.set({"n", "v"}, "<C-k>", "<C-w>K")
vim.keymap.set({"n", "v"}, "<C-l>", "<C-w>L")

-- moving cwd to open files dir
vim.keymap.set({"n", "v"}, "<leader>cd", ":cd %:h <CR>")

