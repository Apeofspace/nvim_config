return {
  'kevinhwang91/rnvimr',
  config = function()
    -- vim.cmd([[let g:rnvimr_vanilla = 1]])
    vim.api.nvim_set_keymap('n', '<leader><leader>', '', {
      noremap = true,
      callback = function()
        vim.cmd [[RnvimrToggle]]
      end,
      desc = 'Open Ranger',
    })
  end,
}
