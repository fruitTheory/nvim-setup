-- appearance floatingtelescope
vim.api.nvim_set_hl(0, 'FloatBorder', {bg='#3B4252', fg='#5E81AC'})
vim.api.nvim_set_hl(0, 'NormalFloat', {bg='#3B4252'})
vim.api.nvim_set_hl(0, 'TelescopeNormal', {bg='#3B4252'})
vim.api.nvim_set_hl(0, 'TelescopeBorder', {bg='#3B4252'})

vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autoread = true

-- num of spaces and size of indent <<
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true -- spaces not tab

-- indentation
vim.opt.autoindent = true
vim.opt.cindent = true 

-- Add line numbers
vim.opt.number = true