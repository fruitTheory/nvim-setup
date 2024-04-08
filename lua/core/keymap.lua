-- Remap window tabbing
vim.api.nvim_set_keymap('n', '<C-w>l', '<right>', {})  
vim.api.nvim_set_keymap('i', '<C-w>l', '<Esc><right>', {})  
vim.api.nvim_set_keymap('n', '<C-w>h', '<left>', {})  
vim.api.nvim_set_keymap('i', '<C-w>h', '<Esc><left>', {})  