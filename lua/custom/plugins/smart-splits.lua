return {
  'mrjones2014/smart-splits.nvim',
  config = function()
    require('smart-splits').setup({
      ignored_buftypes = {
        'nofile',
        'quickfix',
        'prompt',
      },
      ignored_filetypes = { 'NvimTree' },
      default_amount = 3,
      at_edge = 'wrap',
      float_win_behavior = 'previous',
      move_cursor_same_row = false,
      cursor_follows_swapped_bufs = false,
      ignored_events = {
        'BufEnter',
        'WinEnter',
      },
      disable_multiplexer_nav_when_zoomed = true,
      log_level = 'info',
    })

    -- Moving between splits
    vim.keymap.set('n', '<C-h>', require('smart-splits').move_cursor_left, { desc = 'Move focus to the left window' })
    vim.keymap.set('n', '<C-j>', require('smart-splits').move_cursor_down, { desc = 'Move focus to the lower window' })
    vim.keymap.set('n', '<C-k>', require('smart-splits').move_cursor_up, { desc = 'Move focus to the upper window' })
    vim.keymap.set('n', '<C-l>', require('smart-splits').move_cursor_right, { desc = 'Move focus to the right window' })
    vim.keymap.set('n', '<C-\\>', require('smart-splits').move_cursor_previous, { desc = 'Move focus to previous window' })

    -- Resizing splits
    vim.keymap.set('n', '<C-S-h>', require('smart-splits').resize_left, { desc = 'Resize split left' })
    vim.keymap.set('n', '<C-S-j>', require('smart-splits').resize_down, { desc = 'Resize split down' })
    vim.keymap.set('n', '<C-S-k>', require('smart-splits').resize_up, { desc = 'Resize split up' })
    vim.keymap.set('n', '<C-S-l>', require('smart-splits').resize_right, { desc = 'Resize split right' })

    -- Swapping buffers between windows
    vim.keymap.set('n', '<leader><leader>h', require('smart-splits').swap_buf_left, { desc = 'Swap buffer left' })
    vim.keymap.set('n', '<leader><leader>j', require('smart-splits').swap_buf_down, { desc = 'Swap buffer down' })
    vim.keymap.set('n', '<leader><leader>k', require('smart-splits').swap_buf_up, { desc = 'Swap buffer up' })
    vim.keymap.set('n', '<leader><leader>l', require('smart-splits').swap_buf_right, { desc = 'Swap buffer right' })
  end,
}