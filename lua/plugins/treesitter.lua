-- Highlight, edit, and navigate code
return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'main',
  lazy = false, -- main does not support lazy-loading
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter').setup()

    -- replaces ensure_installed
    require('nvim-treesitter').install {
      'gitcommit',
      'bash',
      'angular',
      'just',
      'c',
      'html',
      'lua',
      'luadoc',
      'markdown',
      'markdown_inline',
      'vim',
      'vimdoc',
    }

    -- replaces highlight = { enable = true }
    vim.api.nvim_create_autocmd('FileType', {
      callback = function(args)
        -- skip ruby (was in additional_vim_regex_highlighting / indent disable)
        if vim.bo[args.buf].filetype == 'ruby' then
          return
        end
        local ok = pcall(vim.treesitter.start, args.buf)
        if ok then
          -- replaces indent = { enable = true } (experimental)
          vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end
      end,
    })
  end,
}
