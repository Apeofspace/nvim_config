local builtin = require('telescope.builtin')
local utils = require('telescope.utils')

vim.keymap.set('n', '<leader>pf', function()
    builtin.find_files({
        show_untracked = false, 
        -- cwd=utils.buffer_dir()
    })
end)
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>pg', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>ps', function()
    builtin.live_grep({
        -- cwd=utils.buffer_dir()
    })
end)
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>gl', builtin.git_commits, {})
vim.keymap.set('n', '<leader>gs', builtin.git_status, {})
vim.keymap.set('n', '<leader>gt', builtin.git_stash, {})
vim.keymap.set('n', '<leader>ff', builtin.current_buffer_fuzzy_find, {})
