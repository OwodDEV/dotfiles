local M = {}

function M.setup()
	require("toggleterm").setup{
		size = 8,
		open_mapping = [[<c-\>]],
		shade_filetypes = {},
		shade_terminals = true,
		shading_factor = '1',
		start_in_insert = true,
		insert_mappings = true,
		persist_size = true,
		direction = 'horizontal', 
	}
end
return M
