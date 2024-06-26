local M = {}

function M.setup()
	require('gitsigns').setup{
		signs = {
			add          = { text = '┃' },
			change       = { text = '┃' },
			delete       = { text = '┗' },
			topdelete    = { text = '┏' },
			changedelete = { text = '┗' }, -- '•' ┗
			untracked    = { text = '┇' },
		}
	}
end

return M
