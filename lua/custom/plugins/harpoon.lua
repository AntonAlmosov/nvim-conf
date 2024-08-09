return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    -- REQUIRED
    harpoon:setup()
    -- REQUIRED

    vim.keymap.set('n', '<leader>ha', function()
      harpoon:list():add()
    end, { desc = 'Add buffer to harpoon' })
    vim.keymap.set('n', '<leader>hd', function()
      harpoon:list():remove()
    end, { desc = 'Remove buffer from harpoon' })
    vim.keymap.set('n', '<leader>he', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Toggle harpoon menu' })

    vim.keymap.set('n', '<leader>hh', function()
      harpoon:list():select(1)
    end, { desc = 'Open harpoon buffer #1' })
    vim.keymap.set('n', '<leader>hj', function()
      harpoon:list():select(2)
    end, { desc = 'Open harpoon buffer #2' })
    vim.keymap.set('n', '<leader>hk', function()
      harpoon:list():select(3)
    end, { desc = 'Open harpoon buffer #3' })
    vim.keymap.set('n', '<leader>hl', function()
      harpoon:list():select(4)
    end, { desc = 'Open harpoon buffer #4' })

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<leader>h[', function()
      harpoon:list():prev()
    end, { desc = 'Harpoon prev buffer' })
    vim.keymap.set('n', '<leader>h]', function()
      harpoon:list():next()
    end, { desc = 'Harpoon next buffer' })
  end,
}
