-- Small plugins that need little or no configuration
return {
  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },

  -- Fade inactive windows
  {
    'tadaa/vimade',
    opts = { recipe = { 'default' }, fadelevel = 0.6, enablefocusfading = true },
  },

  -- Floating terminal
  { 'numToStr/FTerm.nvim' },

  -- Trim trailing whitespace on save
  { 'cappyzawa/trim.nvim', opts = {} },

  -- Code Runner ( <leader> to run
  -- { 'CRAG666/code_runner.nvim', config = true, opts = { mode = 'float', float = { border = 'rounded' } } },
}
