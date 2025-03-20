-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
-- Divisão vertical do terminal
vim.keymap.set('n', '<leader>tv', ':vsplit term://fish<CR>')

-- Divisão horizontal do terminal
vim.keymap.set('n', '<leader>th', ':split term://fish<CR>')

-- Navegação entre janelas do terminal
vim.keymap.set('n', '<C-w>h', '<C-w>h')
vim.keymap.set('n', '<C-w>j', '<C-w>j')
vim.keymap.set('n', '<C-w>k', '<C-w>k')
vim.keymap.set('n', '<C-w>l', '<C-w>l')
vim.keymap.set('t', '<C-a>', '<C-\\><C-n>')

