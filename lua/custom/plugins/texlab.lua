return {
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
    },
    config = function()
      -- Ensure texlab is installed
      require('mason-lspconfig').setup {
        ensure_installed = { 'texlab' },
      }

      -- Configure texlab
      require('lspconfig').texlab.setup {
        settings = {
          texlab = {
            build = {
              executable = 'latexmk',
              args = { '-pdf', '-interaction=nonstopmode', '-synctex=1', '%f' },
              onSave = true,
            },
            forwardSearch = {
              executable = 'xreader',
              args = { '--synctex-forward', '%l:1:%f', '%p' },
            },
            lint = {
              onChange = true,
            },
          },
        },
      }
    end,
  },
}
