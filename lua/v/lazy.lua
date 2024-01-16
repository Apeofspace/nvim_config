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
	{ 'rose-pine/neovim', 
	name = 'rose-pine', 
	lazy=false,
	config = function()
		vim.cmd([[colorscheme rose-pine]])
	end,},
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
--    {"rcarriga/nvim-dap-ui", dependencies = {"mfussenegger/nvim-dap"}},

})

--local plugins = {
--	{"nvim-lua/plenary.nvim"},
--	{
--		'nvim-telescope/telescope.nvim', tag = '0.1.5',
--		-- or                              , branch = '0.1.x',
--		dependencies = { 'nvim-lua/plenary.nvim' }
--	}
--}
