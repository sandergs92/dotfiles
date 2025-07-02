-- Automatically open nvim-tree when nvim starts
vim.api.nvim_create_autocmd('VimEnter', {
  callback = function()
    require('nvim-tree.api').tree.open()
  end,
})

-- With :Q you can both quit buffer and nvim-tree
vim.api.nvim_create_user_command('Q', function()
  local view = require 'nvim-tree.view'
  if view.is_visible() then
    view.close()
  end
  vim.cmd 'q'
end, {})

-- Similar functionality as :Q but now as save quit
vim.api.nvim_create_user_command('WQ', function()
  local view = require 'nvim-tree.view'
  if view.is_visible() then
    view.close()
  end
  vim.cmd 'wq'
end, {})
