-- setup example: https://github.com/nvim-lualine/lualine.nvim
-- https://github.com/nvim-lualine/lualine.nvim/blob/master/lua/lualine/themes/nord.lua

local M = {}

local colors = {
  -- original lualine nord colors
  nord1  = '#3B4252',
  nord3  = '#4C566A',
  nord5  = '#E5E9F0',
  nord6  = '#ECEFF4',
  nord7  = '#8FBCBB',
  nord8  = '#88C0D0',
  nord13 = '#EBCB8B',
  -- nordtheme.com
  red	 = '#BF616A',
  orange = '#D08770',
  yellow = '#EBCB8B',
  green	 = '#A3BE8C',
  pink	 = '#B48EAD',
}

function M.setup()
	require('lualine').setup {
		options = {
			icons_enabled = true,
			theme = {
				normal = {
					a = { fg = colors.nord1, bg = colors.nord8, gui = 'bold' },
					b = { fg = colors.nord5, bg = colors.nord1 },
					c = { fg = colors.nord5, bg = colors.nord3 },
				},
				insert = { a = { fg = colors.nord1, bg = colors.yellow, gui = 'bold' } },
				visual = { a = { fg = colors.nord1, bg = colors.nord7, gui = 'bold' } },
				replace = { a = { fg = colors.nord1, bg = colors.nord13, gui = 'bold' } },
				inactive = {
					a = { fg = colors.nord1, bg = colors.nord8, gui = 'bold' },
					b = { fg = colors.nord5, bg = colors.nord1 },
					c = { fg = colors.nord5, bg = colors.nord1 },
				},
				command = {
					a = { fg = colors.nord1, bg = colors.pink, gui = 'bold' },
				}
			},
			component_separators = { left = '|', right = '|'},
			section_separators = { left = '', right = '' },
		},
		sections = {
			lualine_a = {'mode'},
			lualine_b = {'branch', 'diff', 'diagnostics'},
			lualine_c = {'filename'},
			lualine_x = {'encoding', 'filetype'},
			lualine_y = {'progress'},
			lualine_z = {'location'}
		},	
	}
end

return M
