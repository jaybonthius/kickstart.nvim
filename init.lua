if vim.g.vscode then
  -- VSCode extension
  require('vscode-config')
else
  -- ordinary Neovim
  require('neovim-config')
end