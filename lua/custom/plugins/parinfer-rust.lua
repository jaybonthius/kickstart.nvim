return {
  'eraserhd/parinfer-rust',
  build = 'cargo build --release',
  ft = { 'clojure', 'lisp', 'scheme', 'racket' },
  config = function()
    vim.api.nvim_create_autocmd({'FileType', 'BufRead', 'BufNewFile'}, {
      pattern = {'*.scrbl', 'racket'},
      callback = function()
        local filename = vim.fn.expand('%:t')
        if filename:match('%.scrbl$') then
          vim.b.parinfer_enabled = 0
          vim.g.parinfer_enabled = 0
          vim.cmd('silent! ParinferOff')
        end
      end,
    })
  end,
}
