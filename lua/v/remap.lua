vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set("n", "<leader>pp", [[viw"_dP]])
-- vim.keymap.set("x", "<leader>pl", [[viw"_dP]])

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set({"n", "v"}, "<C-s>", ":w<CR>")

-- moving splits with Ctrl
vim.keymap.set({"n", "v"}, "<C-h>", "<C-w>H")
vim.keymap.set({"n", "v"}, "<C-j>", "<C-w>J")
vim.keymap.set({"n", "v"}, "<C-k>", "<C-w>K")
vim.keymap.set({"n", "v"}, "<C-l>", "<C-w>L")

-- moving cwd to open files dir
vim.keymap.set({"n", "v"}, "<leader>cd", ":cd %:h <CR>")

vim.keymap.set({"n", "v"}, "<leader>fc", ":let @/ = \"\"<CR>")
vim.keymap.set({"n", "v"}, "<leader>ft", function() 
        if not vim.o.hlsearch then vim.o.hlsearch = true else vim.o.hlsearch = false end 
    end)
