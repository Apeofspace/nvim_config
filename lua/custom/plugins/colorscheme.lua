local colorschemes = {
  'sonokai',
  'monokai-pro',
  'tokyonight-night',
  'eldritch',
  'cyberdream',
  'catppuccin',
  'melange',
  'monet',
  'hybrid',
}

-- Path to the file where the colorscheme will be saved
local colorscheme_file = vim.fn.stdpath 'config' .. '/lua/custom/colorscheme.txt'
local colorschemeindex = 1

function read_colorscheme()
  local f = io.open(colorscheme_file, 'r')
  if f then
    local colorscheme = f:read '*n'
    f:close()
    return colorscheme
  end
  return nil
end

local function write_colorscheme(colorscheme)
  local f = io.open(colorscheme_file, 'w')
  if f then
    f:write(colorscheme)
    f:close()
  end
end

local function setColorscheme(index)
  vim.cmd('colorscheme ' .. colorschemes[index])
  vim.notify('Colorscheme: ' .. colorschemes[index])
  write_colorscheme(index)
end

local function NextColorScheme()
  colorschemeindex = colorschemeindex + 1
  if colorschemeindex <= 0 or colorschemeindex > #colorschemes then
    colorschemeindex = 1
  end
  setColorscheme(colorschemeindex)
end

local function PrevColorScheme()
  colorschemeindex = colorschemeindex - 1
  if colorschemeindex <= 0 or colorschemeindex > #colorschemes then
    colorschemeindex = #colorschemes
  end
  setColorscheme(colorschemeindex)
end

vim.keymap.set('n', '<leader>cn', NextColorScheme, { desc = '[N]ext [C]olorscheme' })
vim.keymap.set('n', '<leader>cp', PrevColorScheme, { desc = '[P]rev [C]olorscheme' })

-- -- Defer loading the colorscheme until VimEnter
-- vim.api.nvim_create_autocmd('vimEnter', {
--   callback = function()
--     local saved_index = read_colorscheme()
--     if saved_index and saved_index >= 1 and saved_index <= #colorschemes then
--       colorschemeindex = saved_index
--     else
--       colorschemeindex = 1
--     end
--     setColorscheme(colorschemeindex)
--   end,
-- })

return {
  {
    'sainnhe/sonokai',
    name = 'sonokai',
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.sonokai_style = 'shusia'
      vim.g.sonokai_enable_italic = true
      vim.cmd.colorscheme 'sonokai'
    end,
  },
  {
    'folke/tokyonight.nvim',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- vim.cmd.colorscheme 'tokyonight-night'
    end,
  },
  {
    'eldritch-theme/eldritch.nvim',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- vim.cmd.colorscheme 'eldritch'
    end,
  },
  {
    'scottmckendry/cyberdream.nvim',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require('cyberdream').setup {
        italic_comments = true,
      }
      -- vim.cmd.colorscheme 'cyberdream'
    end,
  },
  {
    'loctvl842/monokai-pro.nvim',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require('monokai-pro').setup {
        filter = 'pro',
      }
      -- vim.cmd.colorscheme 'monokai-pro'
    end,
  },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
      -- vim.cmd.colorscheme 'catppuccin-macchiato'
    end,
  },
  {
    'savq/melange-nvim',
    name = 'melange',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
      -- vim.cmd.colorscheme 'melange'
    end,
  },
  {
    'fynnfluegge/monet.nvim',
    name = 'monet',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require('monet').setup {
        transparent_background = false,
        semantic_tokens = true,
        dark_mode = true,
        highlight_overrides = {},
        color_overrides = {},
        styles = {
          strings = { 'italic' },
          comments = { 'italic' },
        },
      }
      -- vim.cmd.colorscheme 'monet'
    end,
  },
  {
    'HoNamDuong/hybrid.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('hybrid').setup {
        italic = {
          strings = true,
          emphasis = true,
          comments = true,
          folds = true,
        },
      }
      -- vim.cmd.colorscheme 'hybrid'
    end,
  },
}
