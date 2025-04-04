--[[
    KEYBINDINGS for nvim
--]]
-- TIP: Disable arrow keys in normal mode
--vim.keymap.set('n', '<left>', '<cmd>echo "use h to move!!"<cr>')
--vim.keymap.set('n', '<right>', '<cmd>echo "use l to move!!"<cr>')
--vim.keymap.set('n', '<up>', '<cmd>echo "use k to move!!"<cr>')
--vim.keymap.set('n', '<down>', '<cmd>echo "use j to move!!"<cr>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Keybinds to make split navigation easier.
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- save like everywhere else
vim.keymap.set('n', '<C-s>', ':w<cr>', { desc = 'Save file' })

-- proper folding
vim.keymap.set('n', '<space>', 'za', { desc = 'Fold at current line' })

-- neotree toogle
vim.keymap.set('n', '<C-t>', '<Cmd>Neotree toggle<CR>', { desc = 'Toggle Neotree' })

-- code runner
-- vim.keymap.set('n', '<leader>b', ':w<CR> :RunFile<CR>', { desc = 'Run file', noremap = true, silent = false })
vim.keymap.set(
  'n',
  '<leader>b',
  ':w<CR><CMD>lua require("FTerm").run({"python", vim.api.nvim_buf_get_name(0)})<CR>',
  { desc = 'Run python in FTerm', noremap = true, silent = true }
)

-- FTerm
vim.keymap.set('n', '<leader>t', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<leader>t', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
