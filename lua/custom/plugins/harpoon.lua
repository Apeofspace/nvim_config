-- local M = {
--   'ThePrimeagen/harpoon',
--   branch = 'harpoon2',
--   dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope.nvim' },
--   lazy = false,
--
--   config = function()
--     local harpoon = require 'harpoon'
--     local conf = require('telescope.config').values
--     local action_state = require 'telescope.actions.state'
--     local action_utils = require 'telescope.actions.utils'
--     local entry_display = require 'telescope.pickers.entry_display'
--     local finders = require 'telescope.finders'
--     local pickers = require 'telescope.pickers'
--     harpoon:setup()
--
--     local generate_new_finder = function()
--       return finders.new_table {
--         results = harpoon:list().items,
--         -- results = filter_empty_string(harpoon:list().items),
--         entry_maker = function(entry)
--           local line = entry.value
--           -- local line = entry.value .. ':' .. entry.context.row .. ':' .. entry.context.col
--           local displayer = entry_display.create {
--             separator = ' - ',
--             items = {
--               -- { width = 2 },
--               { width = 50 },
--               { remaining = true },
--             },
--           }
--           local make_display = function()
--             return displayer {
--               -- tostring(entry.index),
--               line,
--             }
--           end
--           return {
--             value = entry,
--             ordinal = line,
--             display = make_display,
--             lnum = entry.row,
--             col = entry.col,
--             filename = entry.value,
--           }
--         end,
--       }
--     end
--
--     local delete_harpoon_mark = function(prompt_bufnr)
--       local selection = action_state.get_selected_entry()
--       harpoon:list():remove(selection.value)
--       local function get_selections()
--         local results = {}
--         action_utils.map_selections(prompt_bufnr, function(entry)
--           table.insert(results, entry)
--         end)
--         return results
--       end
--       local selections = get_selections()
--       for _, current_selection in ipairs(selections) do
--         harpoon:list():remove(current_selection.value)
--       end
--       local current_picker = action_state.get_current_picker(prompt_bufnr)
--       current_picker:refresh(generate_new_finder(), { reset_prompt = true })
--     end
--
--     local toggle_telescope = function()
--       require('telescope.pickers')
--         .new({}, {
--           prompt_title = 'Harpoon',
--           finder = generate_new_finder(),
--           previewer = conf.file_previewer {},
--           sorter = conf.generic_sorter {},
--           attach_mappings = function(prompt_buffer_number, map)
--             map('i', '<C-d>', function()
--               delete_harpoon_mark(prompt_buffer_number)
--             end)
--             return true
--           end,
--         })
--         :find()
--     end
--
--     -- KEYMAPS
--     vim.keymap.set('n', '<leader>a', function()
--       harpoon:list():add()
--     end, { desc = 'Harpoon add' })
--     vim.keymap.set('n', '<leader>h', function()
--       toggle_telescope()
--       -- harpoon.ui:toggle_quick_menu(require('harpoon'):list())
--     end, { desc = 'Harpoon list' })
--     vim.keymap.set('n', '<leader>q', function()
--       harpoon:list():select(1)
--     end, { desc = 'Harpoon file 1' })
--     vim.keymap.set('n', '<leader>w', function()
--       harpoon:list():select(2)
--     end, { desc = 'Harpoon file 2' })
--     vim.keymap.set('n', '<leader>e', function()
--       harpoon:list():select(3)
--     end, { desc = 'Harpoon file 3' })
--     vim.keymap.set('n', '<leader>r', function()
--       harpoon:list():select(4)
--     end, { desc = 'Harpoon file 4' })
--     vim.keymap.set('n', '<leader>t', function()
--       harpoon:list():select(5)
--     end, { desc = 'Harpoon file 5' })
--   end,
-- }
--
-- return M

-- OLDE TELESCOPELESS CONFIG
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
