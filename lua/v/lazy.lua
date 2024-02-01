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
vim.cmd([[let g:vimspector_enable_mappings = 'HUMAN']])

require("lazy").setup({
    -- {"kelly-lin/ranger.nvim",
    --     config = function()
    --         require("ranger-nvim").setup({ replace_netrw = true, enable_cmds = true })
    --         vim.api.nvim_set_keymap("n", "<leader>pr", "",{
    --             noremap = true,
    --             callback = function()
    --                 require("ranger-nvim").open(true)
    --             end,
    --         })
    --     end,
    -- },
    { 'sainnhe/sonokai',
        opts = {sonokai_style = 'atlantis'},
        name = 'sonokai',
        lazy=false,
        config = function()
            vim.cmd([[set termguicolors]])
            vim.cmd([[colorscheme sonokai]])
        end,
    },
    {"nvim-lua/plenary.nvim"},
    { 'nvim-telescope/telescope.nvim', tag = '0.1.5',
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
})
