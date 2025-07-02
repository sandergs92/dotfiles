-- Toggle focus between nvim-tree and the main buffer
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<cr>')

-- bufferline tabs switching
vim.keymap.set('n', '<leader>n', ':bn<cr>')
vim.keymap.set('n', '<leader>p', ':bp<cr>')
vim.keymap.set('n', '<leader>x', ':bd<cr>')

-- remap horizontal split of window
vim.keymap.set('n', '<C-w>h', '<C-w>s', { noremap = true })
