-- leader
vim.g.mapleader = ' '

-- nav
vim.api.nvim_set_keymap('n', '<C-l>', '20zl', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-l>', '20zl', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-h>', '20zh', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-h>', '20zh', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '20j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-j>', '20j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '20k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-k>', '20k', { noremap = true, silent = true })

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

-- gp
vim.api.nvim_set_keymap('n', '<C-a>', '<Cmd>GpChatToggle vsplit<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-a>', '<Cmd>GpChatToggle vsplit<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-a>', '<Cmd>GpChatToggle vsplit<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>ap', ":GpChatPaste<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>ap', ":'<,'>GpChatPaste<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>af', ":GpChatFinder<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>ar', ":'<Cmd>GpRewrite<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>ar', ":'<,'>GpRewrite<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>aa', ":'<Cmd>GpAppend<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>aa', ":'<,'>GpAppend<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ab', ":'<Cmd>GpPrepend<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>ab', ":'<,'>GpPrepend<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ai', ":'<Cmd>GpImplement<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>ai', ":'<,'>GpImplement<CR>", { noremap = true, silent = true })

