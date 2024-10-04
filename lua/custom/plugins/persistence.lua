return {
  'folke/persistence.nvim',
  event = 'BufReadPre', -- this will only start session saving when an actual file was opened
  config = function()
    require('persistence').setup {}
    -- add any custom options here
  end,
}
