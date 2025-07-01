-- Toggle focus between nvim-tree and the main buffer
vim.keymap.set('n', '<leader>e', function()
  local api = require 'nvim-tree.api'
  local view = require 'nvim-tree.view'
  if not view.is_visible() then
    api.tree.open()
    api.tree.focus()
    return
  end
  local tree_win = view.get_winnr()
  local curr_win = vim.api.nvim_get_current_win()
  if curr_win == tree_win then
    -- In nvim-tree, go to the right buffer window
    vim.cmd 'wincmd l'
  else
    -- In a buffer, go to the tree
    api.tree.focus()
  end
end, { desc = 'Toggle focus between nvim-tree and buffer' })

-- bufferline tabs switching
vim.keymap.set('n', '<leader>n', ':bn<cr>')
vim.keymap.set('n', '<leader>p', ':bp<cr>')
vim.keymap.set('n', '<leader>x', ':bd<cr>')
