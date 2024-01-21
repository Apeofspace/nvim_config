local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- { 'rose-pine/neovim', 
    -- name = 'rose-pine', 
    -- lazy=false,
    -- config = function()
        -- 	vim.cmd([[colorscheme rose-pine]])
        -- end,
        --    },
        -- { 'sainnhe/sonokai', 
        --    opts = {sonokai_style = 'atlantis'},
        -- name = 'sonokai', 
        -- lazy=false,
        -- config = function()
            -- 	vim.cmd([[colorscheme sonokai]])
            -- end,},
        --     { 'sainnhe/everforest', 
        --     name = 'everforest', 
        --     lazy=false,
        --     config = function()
        --         vim.cmd([[let g:everforest_background = 'hard']])
        --         vim.cmd([[colorscheme everforest]])
        --     end,
        -- },
        -- {"rebelot/kanagawa.nvim",
        --     name = 'kanagawa',
        --     lazy = false,
        --     config = function()
            --         vim.cmd([[colorscheme kanagawa-dragon]])
            --     end,
            -- },
        -- {
        --     "HoNamDuong/hybrid.nvim",
        --     lazy = false,
        --     priority = 1000,
        --     opts = {},
        --     config = function()
        --         vim.cmd([[colorscheme hybrid]])
        --     end,
        -- },
        {
            "santos-gabriel-dario/darcula-solid.nvim",
            dependencies = {'rktjmp/lush.nvim'},
            lazy = false,
            config = function()
                vim.cmd([[set termguicolors]])
                vim.cmd([[colorscheme darcula-solid]])
            end,
        },
            {"nvim-lua/plenary.nvim"},
            {
                'nvim-telescope/telescope.nvim', tag = '0.1.5',
                -- or                              , branch = '0.1.x',
                dependencies = { 'nvim-lua/plenary.nvim' }
            },
            {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
            {'mbbill/undotree'},
            {'hrsh7th/cmp-nvim-lua'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
            {'neovim/nvim-lspconfig'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/nvim-cmp'},
            { "rafamadriz/friendly-snippets" },
            {
                "L3MON4D3/LuaSnip",
                dependencies = { "rafamadriz/friendly-snippets" },
            },
            {
                'numToStr/Comment.nvim',
                opts = {
                    -- add any options here
                },
                lazy = false,
            },
            {'habamax/vim-rst',
            lazy = true,
        },
        {
            "ThePrimeagen/harpoon",
            branch = "harpoon2",
            dependencies = { "nvim-lua/plenary.nvim" }
        },
    --     {"karb94/neoscroll.nvim",
    --     config = function ()
    --         require('neoscroll').setup({
    --             -- All these keys will be mapped to their corresponding default scrolling animation
    --             mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>',
    --             '<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
    --             hide_cursor = true,          -- Hide cursor while scrolling
    --             stop_eof = true,             -- Stop at <EOF> when scrolling downwards
    --             respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
    --             cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
    --             easing_function = nil,       -- Default easing function
    --             pre_hook = nil,              -- Function to run before the scrolling animation starts
    --             post_hook = nil,             -- Function to run after the scrolling animation ends
    --             performance_mode = false,    -- Disable "Performance Mode" on all buffers.
    --         })
    --     end,
    --     }
})
