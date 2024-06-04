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
}
