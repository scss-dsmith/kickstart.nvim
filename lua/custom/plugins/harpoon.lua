return {
  'ThePrimeagen/harpoon',
  dependencies = { 'nvim-lua/plenary.nvim', 'nvim-telescope/telescope.nvim' },
  config = function()
    require('harpoon').setup()
    pcall(require('telescope').load_extension, 'harpoon')
    local mark = require('harpoon.mark')
    local ui = require('harpoon.ui')
    local map = vim.keymap.set
    map('n', '<leader>ha', mark.add_file, { desc = 'Harpoon: [A]dd file' })
    map('n', '<leader>hh', ui.toggle_quick_menu, { desc = 'Harpoon: [H]arpoon menu' })
    map('n', '<leader>hn', ui.nav_next, { desc = 'Harpoon: [N]ext mark' })
    map('n', '<leader>hp', ui.nav_prev, { desc = 'Harpoon: [P]revious mark' })
    map('n', '<leader>ht', function() require('telescope').extensions.harpoon.marks() end, { desc = 'Harpoon: [T]elescope marks' })
    for i = 1, 4 do
      map('n', string.format('<leader>h%s', i), function() ui.nav_file(i) end, { desc = 'Harpoon: Go to file ' .. i })
    end
  end,
}
