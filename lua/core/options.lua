-- appearance floatingtelescope
vim.api.nvim_set_hl(0, 'FloatBorder', {bg='#3B4252', fg='#5E81AC'})
vim.api.nvim_set_hl(0, 'NormalFloat', {bg='#3B4252'})
vim.api.nvim_set_hl(0, 'TelescopeNormal', {bg='#3B4252'})
vim.api.nvim_set_hl(0, 'TelescopeBorder', {bg='#3B4252'})

vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autoread = true

-- use space for tabs
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

--vim.opt.paths.{'rg'} = { '<C:\Users\PrincePC\AppData\Local\nvim-data\user-plugins\ripgrep>' }