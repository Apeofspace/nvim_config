return {
  {
    'stevearc/oil.nvim',
    opts = { show_hidden = true },
    -- Optional dependencies
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    vim.keymap.set('n', '<leader>oi', '<CMD>Oil<CR>', { desc = 'Open parent directory' }),
  },
}
