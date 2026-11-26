-- Useful plugin to show you pending keybinds.
return {
  'folke/which-key.nvim',
  event = 'VimEnter', -- Sets the loading event to 'VimEnter'
  config = function() -- This is the function that runs, AFTER loading
    require('which-key').setup()

    -- Document existing key chains
    require('which-key').add {
      { '', desc = '', hidden = true, mode = { 'n', 'n', 'n', 'n', 'n', 'n', 'n' } },
      { '', group = '[C]ode' },
      { '', group = '[D]ocument' },
      { '', group = 'Git [H]unk' },
      { '', group = '[R]ename' },
      { '', group = '[T]oggle' },
      { '', group = '[S]earch' },
      { '', group = '[W]orkspace' },
    }
    -- visual mode
    require('which-key').add { '<leader>h', desc = 'Git [H]unk', mode = 'v' }
  end,
}
