local M = {}

function M.setup()
	vim.g.db_ui_icons = {
		expanded = {
			db = '',
			schema = '',
			table = '',
		},
		collapsed = {
			db = '',
			schema = '',
			table = '',
		},
		new_query = '',
		tables = '',
    }

	vim.g.db_ui_use_nerd_fonts = 1
end

return M

