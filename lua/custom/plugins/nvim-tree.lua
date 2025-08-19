return {
  'nvim-tree/nvim-tree.lua',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('nvim-tree').setup {
      filters = { dotfiles = true },
      renderer = { group_empty = true },
    }
    vim.keymap.set('n', '<leader>E', '<Cmd>NvimTreeToggle<CR>', { desc = 'Toggle File Tree' })
    vim.keymap.set('n', '<leader>e', '<Cmd>NvimTreeFocus<CR>', { desc = 'Focus File Tree' })
  end,
}
