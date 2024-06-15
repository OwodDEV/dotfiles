local M = {}

function M.setup()
	require("neo-tree").setup({	
		popup_border_style = "rounded",
		enable_git_status = true,
		enable_diagnostics = true,
		window = {
			position = "float",
		}
	})
end

return M
