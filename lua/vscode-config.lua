vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.o.ignorecase = true
vim.o.smartcase = true

vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  {"eraserhd/parinfer-rust", build = "cargo build --release"},
  require("custom.plugins.templ-goto-definition")
})

require("lazy").setup({
  {""}
})