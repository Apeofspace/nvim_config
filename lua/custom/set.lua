vim.opt.colorcolumn = '80'
vim.opt.wrap = false
vim.opt.termguicolors = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

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

-- paste by default doesnt copy to buffer
vim.keymap.set({ 'v' }, 'p', [["_dp]], { noremap = true })
vim.keymap.set({ 'v' }, 'P', [["_dP]], { noremap = true })

vim.keymap.set('v', '<leader>pp', [["_dp]], { noremap = true, desc = 'Replace with buffer' })
vim.keymap.set('n', '<leader>pp', [[viw"_dp]], { noremap = true, desc = 'Replace word under cursor with buffer' })

vim.keymap.set('v', '<leader>po', [["+p]], { noremap = true, desc = 'Paste from system buffer' })
vim.keymap.set('n', '<leader>po', [[viw"_dp]], { noremap = true, desc = 'Replace word under cursor with system buffer' })
vim.keymap.set('v', '<leader>Po', [["+P]], { noremap = true, desc = 'Paste from system buffer' })

-- yank to system buffer
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]], { noremap = true })
vim.keymap.set({ 'n', 'v' }, '<A-v>', [["+p]])

vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]], { noremap = true, desc = 'Delete to void' })

vim.keymap.set({ 'n', 'v' }, '<C-s>', ':w<CR>')

-- moving splits with Ctrl
vim.keymap.set({ 'n', 'v' }, '<C-H>', '<C-w>H', { noremap = true })
vim.keymap.set({ 'n', 'v' }, '<C-J>', '<C-w>J', { noremap = true })
vim.keymap.set({ 'n', 'v' }, '<C-K>', '<C-w>K', { noremap = true })
vim.keymap.set({ 'n', 'v' }, '<C-L>', '<C-w>L', { noremap = true })
vim.keymap.set('n', '<leader>vs', ':vsplit<CR>', { desc = 'Make a Vertical Split' })

vim.keymap.set({ 'n', 'v' }, '<leader>cd', ':cd %:h <CR>', { desc = "Move cwd to open file's dir" })

-- remap q to nothing (fuck macros)
vim.keymap.set({ 'n', 'v' }, 'q', '<nop>', { desc = 'fucking nothing' })

-- use JQ to format json file
vim.keymap.set({ 'n' }, '<leader>gj', [[:%!jq '.'<CR>]], { desc = 'Format file with jq' })
vim.keymap.set({ 'v' }, '<leader>gj', [[:'<,'>!jq '.'<CR>]], { desc = 'Format selection with jq' })
