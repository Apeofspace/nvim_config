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

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    { 'sainnhe/sonokai',
        name = 'sonokai',
        lazy=false,
        config = function()
            vim.cmd([[let g:sonokai_style ='shusia']])
            -- vim.cmd([[set termguicolors]])
            vim.cmd([[colorscheme sonokai]])
        end,
    },
    -- {"folke/tokyonight.nvim",
    --     -- lazy = false,
    --     config = function()
    --         require("tokyonight").setup({
    --             -- use the night style
    --             style = "night",
    --             -- disable italic for functions
    --             -- styles = {
    --             --     functions = {}
    --             -- },
    --             sidebars = { "qf", "vista_kind", "terminal", "packer" },
    --             -- Change the "hint" color to the "orange" color, and make the "error" color bright red
    --             on_colors = function(colors)
    --                 colors.hint = colors.orange
    --                 colors.error = "#ff0000"
    --             end
    --         })
    --         -- vim.cmd([[colorscheme tokyonight]])
    --     end,},
    {"nvim-lua/plenary.nvim"},
    {'nvim-telescope/telescope.nvim', tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'mbbill/undotree'},
    {'hrsh7th/cmp-nvim-lua'},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig'},
    { "L3MON4D3/LuaSnip",
        dependencies = { "rafamadriz/friendly-snippets" },
    },
    { 'numToStr/Comment.nvim',
        opts = {},
        lazy = false,
    },
    {'habamax/vim-rst',
        lazy = true,
    },
    {"ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    {"p00f/clangd_extensions.nvim"},
    {"kevinhwang91/rnvimr",
        config = function()
            vim.cmd([[let g:rnvimr_vanilla = 1]])
            vim.api.nvim_set_keymap("n", "<leader>po", "", {
                noremap = true,
                callback = function()
                    vim.cmd([[RnvimrToggle]])
                end,
            })
        end
    }
})

