vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.showmode = false
-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.opt.clipboard = 'unnamedplus'
vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.undodir = os.getenv 'HOME' .. '/.vim/undodir'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.signcolumn = 'yes'
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'
vim.opt.cursorline = true
vim.opt.scrolloff = 40
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.opt.colorcolumn = '80'
vim.opt.wrap = false
vim.opt.termguicolors = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.lsp.inlay_hint.enable()

-- don't continue comment when hitting newline
vim.api.nvim_create_autocmd('FileType', {
  pattern = '*',
  callback = function()
    vim.opt_local.formatoptions:remove { 'r', 'o' }
  end,
})

vim.keymap.set('n', '<leader>ov', vim.cmd.Ex, { desc = 'Open Netrw' })

-- move selected lines up/down
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { noremap = true })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { noremap = true })

-- paste by default doesnt copy to buffer (p and P are flipped for visual mode)
vim.keymap.set({ 'v' }, 'p', [["_dP]], { noremap = true })
vim.keymap.set({ 'v' }, 'P', [["_dp]], { noremap = true })

-- vim.keymap.set('v', '<leader>pp', [["_dp]], { noremap = true, desc = 'Replace with buffer' })
vim.keymap.set('n', '<leader>pp', [[viw"_dP]], { noremap = true, desc = 'Replace word under cursor with buffer' })

vim.keymap.set('v', '<leader>po', [["+P]], { noremap = true, desc = 'Paste from system buffer' })
vim.keymap.set('n', '<leader>po', [[viw"_d+P]], { noremap = true, desc = 'Replace word under cursor with system buffer' })
vim.keymap.set('v', '<leader>Po', [["+p]], { noremap = true, desc = 'Paste from system buffer' })

-- yank to system buffer
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]], { noremap = true })
vim.keymap.set({ 'n', 'v' }, '<A-v>', [["+p]])
vim.keymap.set({ 'n', 'v' }, '<A-p>', [["+p]])

vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]], { noremap = true, desc = 'Delete to void' })

vim.keymap.set({ 'n', 'v' }, '<C-s>', ':w<CR>')

-- moving splits with Ctrl
vim.keymap.set({ 'n', 'v' }, '<C-H>', '<C-w>H', { noremap = true })
vim.keymap.set({ 'n', 'v' }, '<C-J>', '<C-w>J', { noremap = true })
vim.keymap.set({ 'n', 'v' }, '<C-K>', '<C-w>K', { noremap = true })
vim.keymap.set({ 'n', 'v' }, '<C-L>', '<C-w>L', { noremap = true })
-- redundant use <C-w>v
-- vim.keymap.set('n', '<leader>vs', ':vsplit<CR>', { desc = 'Make a Vertical Split' })

vim.keymap.set({ 'n', 'v' }, '<leader>cd', ':cd %:h <CR>', { desc = "Move cwd to open file's dir" })

-- remap q to nothing (fuck macros)
vim.keymap.set({ 'n', 'v' }, 'q', '<nop>', { desc = 'fucking nothing' })
-- remap ctrl-u to nothing (to avoid undoing while trying to yank or paste)
vim.keymap.set({ 'n', 'v', 'i' }, '<C-u>', '<nop>', { desc = 'fucking nothing' })

-- use JQ to format json file
vim.keymap.set({ 'n' }, '<leader>gj', [[:%!jq '.'<CR>]], { desc = 'Format file with jq' })
vim.keymap.set({ 'v' }, '<leader>gj', [[:'<,'>!jq '.'<CR>]], { desc = 'Format selection with jq' })

-- center of screen on halfpage movements
vim.keymap.set({ 'n', 'v' }, '<C-d>', '<C-d>zz', { noremap = true })
vim.keymap.set({ 'n', 'v' }, '<C-u>', '<C-u>zz', { noremap = true })
