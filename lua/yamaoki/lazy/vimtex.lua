return {
  "lervag/vimtex",
  lazy = false, -- don't lazy load VimTeX
  init = function()
    -- Enable filetype plugins and indentation
    vim.cmd([[
      filetype plugin indent on
      syntax enable
    ]])

    -- VimTeX settings
    vim.g.vimtex_view_method = 'general'
    vim.g.vimtex_view_general_viewer_method = 'evince'


    vim.g.vimtex_quickfix_enabled = 0


    vim.g.vimtex_compiler_method = 'latexmk'
    vim.g.vimtex_compiler_latexmk = {
      background = 1,
      build_dir = '',
      callback = 1,
      continuous = 1,
      executable = 'latexmk',
      options = {
        '-interaction=nonstopmode',
        '-silent',
        '-shell-escape',
        '-synctex=1',
      },
    }

    vim.g.vimtex_log_ignore = {
      'latexmk',
      'vimtex_compiler_callback_',
      'Rc files read:',
      'Watching for updated files',
    }
    end
}

