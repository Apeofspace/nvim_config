return {
  'kevinhwang91/rnvimr',
  config = function()
    -- local rnvimr = require 'rnvimr'
    -- vim.cmd [[let g:rnvimr_vanilla = 1]]
    vim.cmd [[let g:rnvimr_enable_picker = 1]]
    -- vim.cmd [[let g:rnvimr_draw_border = both]]
    -- vim.cmd [[let g:rnvimr_edit_cmd = 'drop']] -- wtf is this
    vim.api.nvim_set_keymap('n', '<leader>oo', '', {
      noremap = true,
      callback = function()
        vim.cmd [[RnvimrToggle]]
        -- rnvimr.RnvimrToggle()
      end,
      desc = 'Open Ranger',
    })
  end,
}
