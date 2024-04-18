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
    end, { desc = 'Harpoon add' })
    vim.keymap.set('n', '<leader>h', function()
      harpoon.ui:toggle_quick_menu(require('harpoon'):list())
    end, { desc = 'Harpoon list' })
    vim.keymap.set('n', '<leader>q', function()
      harpoon:list():select(1)
    end, { desc = 'Harpoon file 1' })
    vim.keymap.set('n', '<leader>w', function()
      harpoon:list():select(2)
    end, { desc = 'Harpoon file 2' })
    vim.keymap.set('n', '<leader>e', function()
      harpoon:list():select(3)
    end, { desc = 'Harpoon file 3' })
    vim.keymap.set('n', '<leader>r', function()
      harpoon:list():select(4)
    end, { desc = 'Harpoon file 4' })
    vim.keymap.set('n', '<leader>t', function()
      harpoon:list():select(5)
    end, { desc = 'Harpoon file 5' })
  end,
}
