return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'
    -- REQUIRED
    harpoon:setup()
    -- REQUIRED
    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():append()
    end)
    vim.keymap.set('n', '<leader>h', function()
      harpoon.ui:toggle_quick_menu(require('harpoon'):list())
    end)
    vim.keymap.set('n', '<leader>q', function()
      harpoon:list():select(1)
    end)
    vim.keymap.set('n', '<leader>w', function()
      harpoon:list():select(2)
    end)
    vim.keymap.set('n', '<leader>e', function()
      harpoon:list():select(3)
    end)
    vim.keymap.set('n', '<leader>r', function()
      harpoon:list():select(4)
    end)
    vim.keymap.set('n', '<leader>t', function()
      harpoon:list():select(5)
    end)
  end,

  -- Toggle previous & next buffers stored within Harpoon list
  -- vim.keymap.set("n", "<C-b>", function() harpoon:list():prev({ui_nav_wrap = true}) end)
  -- vim.keymap.set("n", "<C-n>", function() harpoon:list():next({ui_nav_wrap = true}) end)
}
