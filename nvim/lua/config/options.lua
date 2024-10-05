local opt = vim.opt

opt.number = true -- Print line number
opt.tabstop = 4 -- A TAB character looks like 4 spaces
opt.shiftwidth = 4
opt.wrap = false
opt.relativenumber = true
opt.clipboard:append("unnamedplus")
opt.clipboard:append("unnamed")
opt.hlsearch = false -- highlight search result
opt.mouse = "" -- disable mouse right-click menu
opt.splitright = true
opt.fillchars:append({ vert = ' ' }) -- disable vertical line


vim.g.nord_bold = false
vim.cmd.colorscheme('nord')
