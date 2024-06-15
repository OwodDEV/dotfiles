-- leader
vim.g.mapleader = ' '

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- lsp
vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition({timeout = 1000})<CR>', { noremap = true, silent = true })

-- toggleterm
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })

-- neotree
vim.api.nvim_set_keymap('n', '<C-b>', '<cmd>Neotree toggle<CR>', {noremap = true, silent = true })

-- dap (delve)
vim.api.nvim_set_keymap('n', '<leader>dui', '<Cmd>lua require("dapui").toggle()<CR>', { noremap = true, silent = true }) -- full interface
vim.api.nvim_set_keymap('n', '<leader>ds', '<Cmd>lua local widgets=require("dap.ui.widgets");widgets.centered_float(widgets.scopes)<CR>', { noremap = true, silent = true }) -- floating window

vim.api.nvim_set_keymap('n', '<leader>dc', '<Cmd>lua require("dap.ui.widgets").close_float(widgets.scopes)<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>db', '<Cmd>lua require("dap").toggle_breakpoint()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>dr', '<Cmd>lua require("dap").continue()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>di', '<Cmd>lua require("dap").step_over()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ds', '<Cmd>lua require("dap").step_into()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>do', '<Cmd>lua require("dap").step_out()<CR>', { noremap = true, silent = true })

