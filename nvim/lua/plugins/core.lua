-- https://www.lazyvim.org/
-- https://github.com/LazyVim/starter/tree/main
-- all plugins: https://github.com/rockerBOO/awesome-neovim?tab=readme-ov-file#bars-and-lines

-- init lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

-- load lazy plugins
require("lazy").setup({
	{
		-- statusline
		{
			'nvim-lualine/lualine.nvim',
			dependencies = { 'nvim-tree/nvim-web-devicons' },
			config = function()
				require('plugins.lualine').setup()
			end
		},

		-- nord theme
		{
			"shaunsingh/nord.nvim"
		},

		-- telescope
		{
	    	'nvim-telescope/telescope.nvim', tag = '0.1.6',
      		dependencies = { 'nvim-lua/plenary.nvim' }
		},

		-- lspconfig (gopls)
		{
			"neovim/nvim-lspconfig",
			config = function()
				require('plugins.lspconfig').setup()
			end
		},

		-- autocomplete code
		{
			"hrsh7th/nvim-cmp",
			dependencies = {
				"hrsh7th/cmp-nvim-lsp",
				"hrsh7th/cmp-nvim-lua",
				"hrsh7th/cmp-buffer",
				"hrsh7th/cmp-path",
				"hrsh7th/cmp-cmdline",
				"saadparwaiz1/cmp_luasnip",
				"L3MON4D3/LuaSnip",
			},
			config = function()
				require('plugins.nvim-cmp').setup()
			end
		},

		-- terminal
		{
			'akinsho/toggleterm.nvim', version = "*", 
			config = function()
				require('plugins.toggleterm').setup()
			end
		},

		-- tree
		{
			"nvim-neo-tree/neo-tree.nvim",
			branch = "v3.x",
			dependencies = {
			  "nvim-lua/plenary.nvim",
			  "nvim-tree/nvim-web-devicons",
			  "MunifTanjim/nui.nvim",
			},
			config = function()
		    	require('plugins.neo-tree').setup()
			end
		},

		-- git changes highlighting
		{
    		"lewis6991/gitsigns.nvim",
    		config = function()
		    	require('plugins.gitsigns').setup()
			end
  		},

		-- delve debugger (for golang)
		{
			"mfussenegger/nvim-dap",
		},
		{
			"leoluz/nvim-dap-go",
			ft = "go",
			dependencies = "mfussenegger/nvim-dap",
			config = function(_, opts)
				require("dap-go").setup(opts)	
			end
		},

		-- delve debugger ui
		{
			"rcarriga/nvim-dap-ui",
			dependencies = {
				"mfussenegger/nvim-dap",
				"nvim-neotest/nvim-nio",
			},
			config = function()
				require("dapui").setup()
			end
		},

		-- gp (ai tool)
		{
			"robitx/gp.nvim",
			config = function()
				require("plugins.gp").setup()
			end
		},

		-- treesitter (code highlighting)
		{
			"nvim-treesitter/nvim-treesitter",
			build = ":TSUpdate",
			config = function () 
			local configs = require("nvim-treesitter.configs")
      		configs.setup({
				ensure_installed = { "markdown", "markdown_inline", "go", "javascript", "lua" },
          		sync_install = false,
          		highlight = { enable = true },
          		indent = { enable = true },  
        	})
    		end
		},

		-- headers (markdown style)
		{
			"lukas-reineke/headlines.nvim",
			dependencies = {
				"nvim-treesitter/nvim-treesitter",
			},
            config = function()
                 require("plugins.headlines").setup()
            end
		},


	}
})

-- load other plugins
require('plugins.clipboard-to-file')

-- additional settings
-- vim.g.nord_italic = false -- nord theme


