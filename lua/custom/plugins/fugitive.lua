return {
  {
    'tpope/vim-fugitive',
    config = function()
      vim.keymap.set('n', '<leader>gs', vim.cmd.Git, { desc = 'Fugitive [ G ]it [ S ]tatus' })

      local fugg = vim.api.nvim_create_augroup('fugg', {})
      local autocmd = vim.api.nvim_create_autocmd
      autocmd('BufWinEnter', {
        group = fugg,
        pattern = '*',
        callback = function()
          if vim.bo.ft ~= 'fugitive' then -- Emperor bless this plugin
            return
          end
          local bufnr = vim.api.nvim_get_current_buf()
          local opts = { buffer = bufnr, remap = false } -- current buffer only

          -- push
          vim.keymap.set('n', '<leader>p', function()
            vim.cmd.Git 'push'
          end, opts, { desc = 'Fugitive Push' })

          -- rebase always
          vim.keymap.set('n', '<leader>P', function()
            vim.cmd.Git { 'pull', '--rebase' }
          end, opts, { desc = 'Fugitive Pull rebase' })

          -- log 5
          vim.keymap.set('n', '<leader>gl', ':Git log -5 --oneline<CR>', opts, { desc = 'Fugitive Git Log -5' })
          -- vim.keymap.set('n', function()
          --   vim.cmd.Git.log()
          -- end)
        end,
      })
    end,
  },
}
