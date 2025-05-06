--return {
--{
--'nvim-treesitter/nvim-treesitter',
--opts = function(_, opts)
---- Disable Tree-sitter for LaTeX
--opts.highlight.disable = vim.list_extend(opts.highlight.disable or {}, { 'latex' })
--end,
--},
--}
--
-- Below throws error
--require('nvim-treesitter.configs').setup {
--highlight = {
--enable = false, -- Disable Tree-sitter highlighting globally
--},
--}
--
return {
  {
    'nvim-treesitter/nvim-treesitter',
    opts = function(_, opts)
      -- Ensure opts is initialized
      opts = opts or {}
      opts.highlight = opts.highlight or {}
      opts.highlight.enable = false -- Disable Tree-sitter globally
      opts.highlight.disable = vim.list_extend(opts.highlight.disable or {}, { 'latex' })
    end,
  },
}
