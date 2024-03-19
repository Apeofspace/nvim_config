-- return {
--   'ThePrimeagen/harpoon',
--   branch = 'harpoon2',
--   dependencies = { 'nvim-lua/plenary.nvim' },
--   lazy = false,
--   config = function()
--     local harpoon = require 'harpoon'
--     -- REQUIRED
--     harpoon:setup()
--     -- REQUIRED
--     vim.keymap.set('n', '<leader>a', function()
--       harpoon:list():append()
--     end)
--     vim.keymap.set('n', '<leader>h', function()
--       harpoon.ui:toggle_quick_menu(require('harpoon'):list())
--     end)
--     vim.keymap.set('n', '<leader>q', function()
--       harpoon:list():select(1)
--     end)
--     vim.keymap.set('n', '<leader>w', function()
--       harpoon:list():select(2)
--     end)
--     vim.keymap.set('n', '<leader>e', function()
--       harpoon:list():select(3)
--     end)
--     vim.keymap.set('n', '<leader>r', function()
--       harpoon:list():select(4)
--     end)
--     vim.keymap.set('n', '<leader>t', function()
--       harpoon:list():select(5)
--     end)
--   end,
-- }

return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  lazy = false,
  config = function()
    local harpoon = require 'harpoon'
    -- REQUIRED
    harpoon:setup()
    -- REQUIRED
    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():append()
    end)
    -- vim.keymap.set('n', '<leader>hd', harpoon.mark.rm_file)
    vim.keymap.set('n', '<leader>hh', function()
      harpoon.ui:toggle_quick_menu(require('harpoon'):list())
    end)
    vim.keymap.set('n', '<leader>hq', function()
      harpoon:list():select(1)
    end)
    vim.keymap.set('n', '<leader>hw', function()
      harpoon:list():select(2)
    end)
    vim.keymap.set('n', '<leader>he', function()
      harpoon:list():select(3)
    end)
    vim.keymap.set('n', '<leader>hr', function()
      harpoon:list():select(4)
    end)
    vim.keymap.set('n', '<leader>ha', function()
      harpoon:list():select(5)
    end)
    vim.keymap.set('n', '<leader>hs', function()
      harpoon:list():select(6)
    end)
    vim.keymap.set('n', '<leader>hd', function()
      harpoon:list():select(7)
    end)
    vim.keymap.set('n', '<leader>hf', function()
      harpoon:list():select(8)
    end)
  end,
}

-- return {
--   'ThePrimeagen/harpoon',
--   branch = 'harpoon2',
--   dependencies = { 'nvim-lua/plenary.nvim' },
--   lazy = false,
--   config = function()
--     local harpoon = require 'harpoon'
--
--     vim.keymap.set('n', '<leader>h', function()
--       harpoon.ui:toggle_quick_menu(require('harpoon'):list())
--     end)
--
--     local poongroup = vim.api.nvim_create_augroup('poongroup', {})
--     -- local autocmd = vim.api.nvim_create_autocmd
--     -- autocmd('BufWinEnter', {
--     --   group = poongroup,
--     --   pattern = '*',
--     --   callback = function()
--     --     local bufnr = vim.api.nvim_get_current_buf()
--     --     -- print(vim.api.nvim_win_get_option(0, 'number'))
--     --     local win = vim.api.nvim_get_current_win()
--     --     print(win.title)
--     --     local opts = { buffer = bufnr, remap = false }
--     --     if vim.bo.filetype ~= 'harpoon' then
--     --       -- if bufname(bufnr)g
--     --       -- if vim.api.nvim_buf_get_name(bufnr) ~= 'harpoon-menu' then
--     --       -- print 'bad'
--     --       return
--     --     end
--     --     -- print 'good'
--     --     vim.keymap.set('n', '<leader>q', function()
--     --       harpoon:list():select(1)
--     --     end, opts)
--     --   end,
--     -- })
--
--     -- local autocmd = vim.api.nvim_create_autocmd
--     -- autocmd('BufWinEnter', {
--     --   group = poongroup,
--     --   pattern = '*',
--     --   callback = function()
--     --     local win_info = vim.api.nvim_win_get_config(0)
--     --     if win_info.title ~= nil then
--     --       print(win_info.title)
--     --     end
--     --   end,
--     -- })
--   end,
-- }
